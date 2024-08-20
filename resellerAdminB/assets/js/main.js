$( document ).ready(function() {

    toastr.options = {
        "closeButton": false,
        "debug": false,
        "newestOnTop": false,
        "progressBar": false,
        "positionClass": "toastr-top-right",
        "preventDuplicates": false,
        "onclick": null,
        "showDuration": "300",
        "hideDuration": "1000",
        "timeOut": "5000",
        "extendedTimeOut": "1000",
        "showEasing": "swing",
        "hideEasing": "linear",
        "showMethod": "fadeIn",
        "hideMethod": "fadeOut"
    };

    if(document.getElementById("current-date")) {
        document.getElementById("current-date").innerHTML = new Date().getFullYear();
    }

    $('.loader').fadeOut();
        setTimeout(() => {
        $('.loader').removeClass('show');
    }, 1500);

    var url = window.location.pathname;

    if (url == '/index.aspx') {
        document.getElementById("home-lg-link").classList.add("active");
    } else if (url == '/send_sms.aspx') {
        document.getElementById("sms-lg-btn").classList.add("active");
        document.getElementById("send-single-sms-lg-link").classList.add("active");
    } else if (url == '/bulksms.aspx') {
        document.getElementById("sms-lg-btn").classList.add("active");
        document.getElementById("send-bulk-sms-lg-link").classList.add("active");
    } else if (url == '/hlr.aspx') {
        document.getElementById("hlr-lg-btn").classList.add("active");
        document.getElementById("hlr-lookup-lg-link").classList.add("active");
    } else if (url == '/hlr_log.aspx') {
        document.getElementById("hlr-lg-btn").classList.add("active");
        document.getElementById("hlr-log-lg-link").classList.add("active");
    } else if (url == '/sms_temp.aspx') {
        document.getElementById("managment-lg-btn").classList.add("active");
        document.getElementById("template-managment-lg-link").classList.add("active");
    } else if (url == '/groups_manager.aspx') {
        document.getElementById("managment-lg-btn").classList.add("active");
        document.getElementById("group-manager-lg-link").classList.add("active");
    } else if (url == '/sentreport.aspx') {
        document.getElementById("report-lg-btn").classList.add("active");
        document.getElementById("sent-report-lg-link").classList.add("active");
    } else if (url == '/queuereport.aspx') {
        document.getElementById("report-lg-btn").classList.add("active");
        document.getElementById("queue-report-lg-link").classList.add("active");
    } else if (url == '/reloadreport.aspx') {
        document.getElementById("report-lg-btn").classList.add("active");
        document.getElementById("reload-report-lg-link").classList.add("active");
    } else if (url == '/paymentsreport.aspx') {
        document.getElementById("report-lg-btn").classList.add("active");
        document.getElementById("payment-report-lg-link").classList.add("active");
    } else if (url == '/reload.aspx') {
        document.getElementById("reload-lg-link").classList.add("active");
    } else if (url == '/api_references.aspx') {
        document.getElementById("api-lg-link").classList.add("active");
    } else if (url == '/cov.aspx') {
        document.getElementById("coverage-lg-link").classList.add("active");
    } else if (url == '/settings.aspx') {
        document.getElementById("settings-lg-link").classList.add("active");
    }

});

$.fn.scrollDivToElement = function(childSel) {
    if (! this.length) return this;
    return this.each(function() {
        let parentEl = $(this);
        let childEl = parentEl.find(childSel);

        if (childEl.length > 0) {
            parentEl.scrollTop(
                parentEl.scrollTop() - parentEl.offset().top + childEl.offset().top - (parentEl.outerHeight() / 2) + (childEl.outerHeight() / 2)
            );
        }
    });
};


function exportCSV(table) {
    var csv = "";
    var rows = $("#"+table+" tr");

    for (var i = 0; i < rows.length; i++) {
    var cells = $(rows[i]).find("td, th");
    for (var j = 0; j < cells.length; j++) {
        csv += $(cells[j]).text() + ",";
    }
    csv += "\n";
    }

    var blob = new Blob([csv], { type: "text/csv;charset=utf-8;" });
    var url = URL.createObjectURL(blob);

    var link = document.createElement("a");
    link.setAttribute("href", url);
    link.setAttribute("download", "report.csv");
    link.style.display = "none";
    document.body.appendChild(link);

    link.click();

    document.body.removeChild(link);

    toastr.success("CSV download file will start automatically!");
}

function exportXLS(table) {
    // Get table data as array of arrays
    var tableData = [];
    $("#"+table+" tr").each(function(row, tr) {
      tableData[row] = [];
      $(tr).find('td').each(function(col, td) {
        tableData[row][col] = $(td).text();
      });
    });

    // Convert table data to workbook
    var workbook = XLSX.utils.book_new();
    var worksheet = XLSX.utils.aoa_to_sheet(tableData);
    XLSX.utils.book_append_sheet(workbook, worksheet, 'Sheet1');

    // Save workbook as XLS file
    var filename = 'report.xls';
    XLSX.writeFile(workbook, filename);

    toastr.success("XLS download file will start automatically!");
}

function exportPDF(table) {
    // Get the table element
    var table = $("#"+table+"")[0];

    // Create a new PDF document
    var doc = new jspdf.jsPDF();

    // Convert the table to a PDF
    doc.autoTable({
        html: table,
        startY: 10
    });

    // Save the PDF
    doc.save("report.pdf");

    toastr.success("PDF download file will start automatically!");
}

function printTable(table) {
    var table = $('#'+table);
    $('head').append(`
        <style>
            @media screen {
                #printSection {
                    display: none;
                }
            }
            #printThis {
                display: none;
            }
            @media print {
                body * {
                    visibility: hidden;
                }
                #printSection,
                #printSection * {
                    visibility: visible;
                }
                #printSection {
                    position: absolute;
                    left: 0;
                    top: 0;
                    right: 0;
                    height: 99%;
                }
                #printThis {
                    display: block;
                    padding-top: 50px;
                }
            }
        </style>
    `);
    $('body').append('<div id="printThis"></div>');

    $('#printThis').html(table.clone());

    var printThis = $('#printThis')[0];

    var domClone = printThis.cloneNode(true);


    var $printSection = document.getElementById("printSection");

    if (!$printSection) {
        var $printSection = document.createElement("div");
        $printSection.id = "printSection";
        document.body.appendChild($printSection);
    }

    $printSection.innerHTML = "";

    $printSection.appendChild(domClone);

    window.print();
}

function copyTable(table) {
    var table = $('#'+table)[0];

    // create a Range object
    var range = document.createRange();  
    // set the Node to select the "range"
    range.selectNode(table);
    // add the Range to the set of window selections
    window.getSelection().addRange(range);
    
    // execute 'copy', can't 'cut' in this case
    document.execCommand('copy');

    toastr.success("Copy to clipboard!");
}


var debug1 = true;
var debug2 = true;


function dec2hex(textString) {
    return (textString + 0).toString(16).toUpperCase();
}

function dec2hex2(textString) {
var hexequiv = new Array("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F");
return hexequiv[(textString >> 4) & 0xF] + hexequiv[textString & 0xF];
}

function dec2hex4(textString) {
var hexequiv = new Array("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F");
return hexequiv[(textString >> 12) & 0xF] + hexequiv[(textString >> 8) & 0xF] + hexequiv[(textString >> 4) & 0xF] + hexequiv[textString & 0xF];
}


function convertCP2Char(textString) {
var outputString = '';
textString = textString.replace(/^\s+/, '');
if (textString.length == 0) { return ""; }
textString = textString.replace(/\s+/g, ' ');
var listArray = textString.split(' ');
for (var i = 0; i < listArray.length; i++) {
    var n = parseInt(listArray[i], 16);
    if (n <= 0xFFFF) {
        outputString += String.fromCharCode(n);
    } else if (n <= 0x10FFFF) {
        n -= 0x10000
        outputString += String.fromCharCode(0xD800 | (n >> 10)) + String.fromCharCode(0xDC00 | (n & 0x3FF));
    } else {
        outputString += '!erreur ' + dec2hex(n) + '!';
    }
}
return (outputString);
}


function convertCP2UTF8(textString) {
var outputString = "";
textString = textString.replace(/^\s+/, '');
if (textString.length == 0) { return ""; }
textString = textString.replace(/\s+/g, ' ');
var listArray = textString.split(' ');
for (var i = 0; i < listArray.length; i++) {
    var n = parseInt(listArray[i], 16);
    if (i > 0) { outputString += ' '; }
    if (n <= 0x7F) {
        outputString += dec2hex2(n);
    } else if (n <= 0x7FF) {
        outputString += dec2hex2(0xC0 | ((n >> 6) & 0x1F)) + ' ' + dec2hex2(0x80 | (n & 0x3F));
    } else if (n <= 0xFFFF) {
        outputString += dec2hex2(0xE0 | ((n >> 12) & 0x0F)) + ' ' + dec2hex2(0x80 | ((n >> 6) & 0x3F)) + ' ' + dec2hex2(0x80 | (n & 0x3F));
    } else if (n <= 0x10FFFF) {
        outputString += dec2hex2(0xF0 | ((n >> 18) & 0x07)) + ' ' + dec2hex2(0x80 | ((n >> 12) & 0x3F)) + ' ' + dec2hex2(0x80 | ((n >> 6) & 0x3F)) + ' ' + dec2hex2(0x80 | (n & 0x3F));
    } else {
        outputString += '!erreur ' + dec2hex(n) + '!';
    }
}
return (outputString);
}


function convertCP2UTF16(textString) {
var outputString = "";
textString = textString.replace(/^\s+/, '');
if (textString.length == 0) { return ""; }
textString = textString.replace(/\s+/g, ' ');
var listArray = textString.split(' ');
for (var i = 0; i < listArray.length; i++) {
    var n = parseInt(listArray[i], 16);
    if (i > 0) { outputString += ''; }
    if (n <= 0xFFFF) {
        outputString += dec2hex4(n);
    } else if (n <= 0x10FFFF) {
        n -= 0x10000
        outputString += dec2hex4(0xD800 | (n >> 10)) + '' + dec2hex4(0xDC00 | (n & 0x3FF));
    } else {
        outputString += '!erreur ' + dec2hex(n) + '!';
    }
}
return (outputString);
}


function convertCP2HexNCR(textString) {
    var outputString = "";
    textString = textString.replace(/^\s+/, '');
    if (textString.length == 0) { return ""; }
    textString = textString.replace(/\s+/g, ' ');
    var listArray = textString.split(' ');
    for (var i = 0; i < listArray.length; i++) {
        var n = parseInt(listArray[i], 16);
        outputString += '&#x' + dec2hex(n) + ';';
    }
    return (outputString);
}


function convertCP2DecNCR(textString) {
    var outputString = "";
    textString = textString.replace(/^\s+/, '');
    if (textString.length == 0) { return ""; }
    textString = textString.replace(/\s+/g, ' ');
    var listArray = textString.split(' ');
    for (var i = 0; i < listArray.length; i++) {
        var n = parseInt(listArray[i], 16);
        outputString += ('&#' + n + ';');
    }
    return (outputString);
}


function convertChar2CP(textString) {
    var outputString = "";
    var haut = 0;
    var n = 0;
    for (var i = 0; i < textString.length; i++) {
        var b = textString.charCodeAt(i);  // alert('b:'+dec2hex(b));
        if (b < 0 || b > 0xFFFF) {
            outputString += '!erreur ' + dec2hex(b) + '!';
        }
        if (haut != 0) {
            if (0xDC00 <= b && b <= 0xDFFF) {
                outputString += dec2hex(0x10000 + ((haut - 0xD800) << 10) + (b - 0xDC00)) + ' ';
                haut = 0;
                continue;
            } else {
                outputString += '!erreur ' + dec2hex(haut) + '!';
                haut = 0;
            }
        }
        if (0xD800 <= b && b <= 0xDBFF) {
            haut = b;
        } else {
            outputString += dec2hex(b) + ' ';
        }
    }
    return (outputString.replace(/ $/, ''));
}


function convertUTF82CP(textString) {
    var outputString = "";
    var compte = 0;
    var n = 0;
    textString = textString.replace(/^\s+/, '');
    if (textString.length == 0) { return ""; }
    textString = textString.replace(/\s+/g, ' ');
    var listArray = textString.split(' ');
    for (var i = 0; i < listArray.length; i++) {
        var b = parseInt(listArray[i], 16);  // alert('b:'+dec2hex(b));
        switch (compte) {
            case 0:
                if (0 <= b && b <= 0x7F) {  // 0xxxxxxx
                    outputString += dec2hex(b) + ' ';
                } else if (0xC0 <= b && b <= 0xDF) {  // 110xxxxx
                    compte = 1;
                    n = b & 0x1F;
                } else if (0xE0 <= b && b <= 0xEF) {  // 1110xxxx
                    compte = 2;
                    n = b & 0xF;
                } else if (0xF0 <= b && b <= 0xF7) {  // 11110xxx
                    compte = 3;
                    n = b & 0x7;
                } else {
                    outputString += '!erreur ' + dec2hex(b) + '! ';
                }
                break;
            case 1:
                if (b < 0x80 || b > 0xBF) {
                    outputString += '!erreur ' + dec2hex(b) + '! ';
                }
                compte--;
                outputString += dec2hex((n << 6) | (b - 0x80)) + ' ';
                n = 0;
                break;
            case 2: case 3:
                if (b < 0x80 || b > 0xBF) {
                    outputString += '!erreur ' + dec2hex(b) + '! ';
                }
                n = (n << 6) | (b - 0x80);
                compte--;
                break;
        }
    }
    return (outputString.replace(/ $/, ''));
}


function convertUTF162CP(textString) {
    var outputString = "";
    var haut = 0;
    var n = 0;
    textString = textString.replace(/^\s+/, '');
    if (textString.length == 0) { return ""; }
    textString = textString.replace(/\s+/g, ' ');
    var listArray = textString.split(' ');
    for (var i = 0; i < listArray.length; i++) {
        var b = parseInt(listArray[i], 16);  // alert('b:'+dec2hex(b));
        if (b < 0 || b > 0xFFFF) {
            outputString += '!erreur ' + dec2hex(b) + '!';
        }
        if (haut != 0) {
            if (0xDC00 <= b && b <= 0xDFFF) {
                outputString += dec2hex(0x10000 + ((haut - 0xD800) << 10) + (b - 0xDC00)) + ' ';
                haut = 0;
                continue;
            } else {
                outputString += '!erreur ' + dec2hex(haut) + '!';
                haut = 0;
            }
        }
        if (0xD800 <= b && b <= 0xDBFF) {
            haut = b;
        } else {
            outputString += dec2hex(b) + ' ';
        }
    }
    return (outputString.replace(/ $/, ''));
}


function convertHexNCR2CP(textString) {
    var outputString = '';
    textString = textString.replace(/\s/g, '');
    var listArray = textString.split(';');
    for (var i = 0; i < listArray.length - 1; i++) {
        if (i > 0) { outputString += ' '; }
        var n = parseInt(listArray[i].substring(3, listArray[i].length), 16);
        outputString += dec2hex(n);
    }
    return (outputString);
}


function convertDecNCR2CP(textString) {
    var outputString = '';
    textString = textString.replace(/\s/g, '');
    var listArray = textString.split(';');
    for (var i = 0; i < listArray.length - 1; i++) {
        if (i > 0) { outputString += ' '; }
        var n = parseInt(listArray[i].substring(2, listArray[i].length), 10);
        outputString += dec2hex(n);
    }
    return (outputString);
}

function schCheck() {
    var arrForm = document.forms[0];
    if (arrForm.chkSchedule.checked == false) {
        arrForm.txtDate.value = '';
    }
}

function checkForm() {
    var sFilename, sSender, sMessage;
    with (window.document.frmSendSms) {
        sFilename = txtFileName;
        sSender = txtSender;
        sMessage = txtMessage;
        messageType = cmbMessageType;
    }

    if (trim(sFilename.value) == '') {
        alert("File");
        sFilename.focus();
        return false;
    } else if (isValidExtension(sFilename.value)) {
        return false;
    } else if (trim(sSender.value) == '') {
        alert("Please  Enter  Sender ");
        sSender.focus();
        return false;
    } else if (trim(messageType.value) == '') {
        alert("Please  Select Message  Type ");
        messageType.focus();
        return false;
    } else if ((isNaN(sSender.value)) == true && sSender.value.length > 11) {
        alert("Invalid Sender(max length for alphanumeric sender:11 and numeric:21)");
        document.frmSendSms.txtSender.select();
        document.frmSendSms.txtSender.focus();
        return false;
    } else if (trim(sMessage.value) == '') {
        alert("Please  Enter  Message ");
        sMessage.focus();
        return false;
    } else if (document.frmSendSms.chkSchedule.checked && document.frmSendSms.cmbGMT.value == "") {
        alert("Please  Select Timezone.");
        document.frmSendSms.cmbGMT.focus();
        return false;
    } else if (!document.frmSendSms.chkSchedule.checked && document.frmSendSms.txtDate.value != "") {
        alert("Please  Select Timezone.");
        document.frmSendSms.txtDate.focus();
        return false;
    } else if (document.frmSendSms.chkSchedule.checked && document.frmSendSms.txtDate.value == "") {
        alert("Please  Select Date To Schedule.");
        document.frmSendSms.txtDate.focus();
        return false;
    }
    return true;
}

//Trims the leading and trailing spaces
function trim(str) {
                return str.replace(/^\s+|\s+$/g, '');
}

function setMessageLength() {
    //        document.getElementById('txtMessage').style.width='250px';  //this resizes the textarea
    //        document.getElementById('txtMessage').style.height='80px';
    var arrForm = document.forms[0];
    if (arrForm.cmbMessageType.value == "0" || arrForm.cmbMessageType.value == 'Text') {
        arrForm.hiddcount.value = "160";

        setCounter();
        arrForm.txtMessage.dir = "ltr";
        arrForm.txtMessage.maxlength = "765";
    }
    if (arrForm.cmbMessageType.value == "1" || arrForm.cmbMessageType.value == 'Flash') {
        arrForm.hiddcount.value = "160";
        setCounter();
        arrForm.txtMessage.dir = "ltr";
        arrForm.txtMessage.maxlength = "765";
    }
    if (arrForm.cmbMessageType.value == "2" || arrForm.cmbMessageType.value == 'Arabic') {
        arrForm.hiddcount.value = "70";
        setCounter();
        arrForm.txtMessage.dir = "rtl";
        arrForm.txtMessage.maxLength = "335";
    }
    //// for others should work like arebic but data should write from left to write
    if (arrForm.cmbMessageType.value == "9" || arrForm.cmbMessageType.value == 'Others') {
        arrForm.hiddcount.value = "70";
        setCounter();
        arrForm.txtMessage.dir = "ltr";
        arrForm.txtMessage.maxLength = "335";
    }
    if (arrForm.cmbMessageType.value == "3" || arrForm.cmbMessageType.value == 'Unicode Flash') {
        arrForm.hiddcount.value = "280";
        setCounter();
        arrForm.txtMessage.dir = "ltr";
        arrForm.txtMessage.maxLength = "1344";
    }
    if (arrForm.cmbMessageType.value == "4" || arrForm.cmbMessageType.value == 'Unicode') {
        arrForm.hiddcount.value = "280";
        setCounter();
        arrForm.txtMessage.dir = "ltr";
        arrForm.txtMessage.maxLength = "1344";
    }
    
    
}

function textCounter(field, maxlimit) {
    var extraChars = 0;
    var msgCount = 0;
    var wapVal;
    var wapVal1;

    for (var i = 0; (i < field.value.length); i++) {
        if ((field.value.charAt(i) >= '0') && (field.value.charAt(i) <= '9')) {
        }
        else if ((field.value.charAt(i) >= 'A') && (field.value.charAt(i) <= 'Z')) {
        }
        else if ((field.value.charAt(i) >= 'a') && (field.value.charAt(i) <= 'z')) {
        }
        else if (field.value.charAt(i) == '@') {
        }
        else if (field.value.charAt(i) == '?') {
        }
        else if (field.value.charAt(i) == '$') {
        }
        else if (field.value.charAt(i) == '?') {
        }
        else if (field.value.charCodeAt(i) == 0xE8) {
        }
        else if (field.value.charCodeAt(i) == 0xE9) {
        }
        else if (field.value.charCodeAt(i) == 0xF9) {
        }
        else if (field.value.charCodeAt(i) == 0xEC) {
        }
        else if (field.value.charCodeAt(i) == 0xF2) {
        }
        else if (field.value.charCodeAt(i) == 0xC7) {
        }
        else if (field.value.charAt(i) == '\r') {
        }
        else if (field.value.charAt(i) == '\n') {
            if (navigator.appName == "Netscape") {
                extraChars++;
            }
        }
        else if (field.value.charCodeAt(i) == 0xD8) {
        }
        else if (field.value.charCodeAt(i) == 0xF8) {
        }
        else if (field.value.charCodeAt(i) == 0xC5) {
        }
        else if (field.value.charCodeAt(i) == 0xE5) {
        }
        else if (field.value.charCodeAt(i) == 0x394) {
        }
        else if (field.value.charAt(i) == '_') {
        }
        else if (field.value.charCodeAt(i) == 0x3A6) {
        }
        else if (field.value.charCodeAt(i) == 0x393) {
        }
        else if (field.value.charCodeAt(i) == 0x39B) {
        }
        else if (field.value.charCodeAt(i) == 0x3A9) {
        }
        else if (field.value.charCodeAt(i) == 0x3A0) {
        }
        else if (field.value.charCodeAt(i) == 0x3A8) {
        }
        else if (field.value.charCodeAt(i) == 0x3A3) {
        }
        else if (field.value.charCodeAt(i) == 0x398) {
        }
        else if (field.value.charCodeAt(i) == 0x39E) {
        }
        else if (field.value.charCodeAt(i) == 0xC6) {
        }
        else if (field.value.charCodeAt(i) == 0xE6) {
        }
        else if (field.value.charCodeAt(i) == 0xDF) {
        }
        else if (field.value.charCodeAt(i) == 0xC9) {
        }
        else if (field.value.charAt(i) == ' ') {
        }
        else if (field.value.charAt(i) == '!') {
        }
        else if (field.value.charAt(i) == '\"') {
        }
        else if (field.value.charAt(i) == '#') {
        }
        else if (field.value.charCodeAt(i) == 0xA4) {
        }
        else if (field.value.charAt(i) == '%') {
        }
        else if (field.value.charAt(i) == '&') {
        }
        else if (field.value.charAt(i) == '\'') {
        }
        else if (field.value.charAt(i) == '(') {
        }
        else if (field.value.charAt(i) == ')') {
        }
        else if (field.value.charAt(i) == '*') {
        }
        else if (field.value.charAt(i) == '+') {
        }
        else if (field.value.charAt(i) == ',') {
        }
        else if (field.value.charAt(i) == '-') {
        }
        else if (field.value.charAt(i) == '.') {
        }
        else if (field.value.charAt(i) == '/') {
        }
        else if (field.value.charAt(i) == ':') {
        }
        else if (field.value.charAt(i) == ';') {
        }
        else if (field.value.charAt(i) == '<') {
        }
        else if (field.value.charAt(i) == '=') {
        }
        else if (field.value.charAt(i) == '>') {
        }
        else if (field.value.charAt(i) == '?') {
        }
        else if (field.value.charCodeAt(i) == 0xA1) {
        }
        else if (field.value.charCodeAt(i) == 0xC4) {
        }
        else if (field.value.charCodeAt(i) == 0xD6) {
        }
        else if (field.value.charCodeAt(i) == 0xD1) {
        }
        else if (field.value.charCodeAt(i) == 0xDC) {
        }
        else if (field.value.charCodeAt(i) == 0xA7) {
        }
        else if (field.value.charCodeAt(i) == 0xBF) {
        }
        else if (field.value.charCodeAt(i) == 0xE4) {
        }
        else if (field.value.charCodeAt(i) == 0xF6) {
        }
        else if (field.value.charCodeAt(i) == 0xF1) {
        }
        else if (field.value.charCodeAt(i) == 0xFC) {
        }
        else if (field.value.charCodeAt(i) == 0xE0) {
        }
        else if (field.value.charCodeAt(i) == 0x391) {
        }
        else if (field.value.charCodeAt(i) == 0x392) {
        }
        else if (field.value.charCodeAt(i) == 0x395) {
        }
        else if (field.value.charCodeAt(i) == 0x396) {
        }
        else if (field.value.charCodeAt(i) == 0x397) {
        }
        else if (field.value.charCodeAt(i) == 0x399) {
        }
        else if (field.value.charCodeAt(i) == 0x39A) {
        }
        else if (field.value.charCodeAt(i) == 0x39C) {
        }
        else if (field.value.charCodeAt(i) == 0x39D) {
        }
        else if (field.value.charCodeAt(i) == 0x39F) {
        }
        else if (field.value.charCodeAt(i) == 0x3A1) {
        }
        else if (field.value.charCodeAt(i) == 0x3A4) {
        }
        else if (field.value.charCodeAt(i) == 0x3A5) {
        }
        else if (field.value.charCodeAt(i) == 0x3A7) {
        }
        else if (field.value.charAt(i) == '^') {
            extraChars++;
        }
        else if (field.value.charAt(i) == '{') {
            extraChars++;
        }
        else if (field.value.charAt(i) == '}') {
            extraChars++;
        }
        else if (field.value.charAt(i) == '\\') {
            extraChars++;
        }
        else if (field.value.charAt(i) == '[') {
            extraChars++;
        }
        else if (field.value.charAt(i) == '~') {
            extraChars++;
        }
        else if (field.value.charAt(i) == ']') {
            extraChars++;
        }
        else if (field.value.charAt(i) == '|') {
            extraChars++;
        }
        else if (field.value.charCodeAt(i) == 0x20AC) {
            extraChars++;
        }
        else {
            //unicodeFlag = 1;
        }
    }
    var fieldLength = field.value.length;

    if (field.name == 'txtWapUrl') {
        wapVal = field.value;
        wapVal1 = wapVal.split(":/");
        wapVal1 = wapVal1[0].length;
        fieldLength = fieldLength - wapVal1 - 3;
        if (fieldLength < 0) {
            fieldLength = 0;
        }
    }

    var count = fieldLength + extraChars;

    // The above code from here is for count of special characters.
    var messagelen = 1;
    var mesagelenudh;
    var messagelenudh1;
    var arrForm = document.forms[0];  //added to acces the forms array
    //if (field.value.length > maxlimit)
    if (count > maxlimit) { // if too long...trim it!
        if (maxlimit == 160) {
            //messagelen = Math.ceil(field.value.length/maxlimit)*7;
            messagelen = Math.ceil(count / maxlimit) * 7;
        } else if (maxlimit == 280) {
            messagelen = Math.ceil(count / maxlimit) * 12;
        } else {
            //messagelen = Math.ceil(field.value.length/maxlimit)*3;
            messagelen = Math.ceil(count / maxlimit) * 3;
        }
        //messagelenudh1 = messagelen + field.value.length;
        messagelenudh1 = messagelen + count;
        messagelenudh = Math.ceil(messagelenudh1 / maxlimit);

        //document.frmSendSms.txtMessageCount.value = messagelenudh;    commented to acces the array
        arrForm.txtMessageCount.value = messagelenudh;
        //return field.value.length + " : " + messagelenudh + " SMS Parts" ;
        //return count + " : " + messagelenudh + " SMS Parts" ;
        return (count + ":" + arrForm.txtMessageCount.value);
    } else {    // otherwise, update 'characters left' counter
        arrForm.txtMessageCount.value = 1;
        //return field.value.length + " : 1 SMS Parts" ;
        //return count + " : 1 SMS Parts" ;
        return (count + ":" + arrForm.txtMessageCount.value);
    }
}

function setCounter() {
    /*var arrForm=document.forms[0];
    var ilen = textCounter(arrForm.txtMessage,arrForm.hiddcount.value );
    arrForm.txtcount.value  = ilen ;*/
    chkOTA();
    var arrForm = document.forms[0];
    if (arrForm.cmbMessageType.value == 'Wap Push' || arrForm.cmbMessageType.value == '5') {
        var ilen = textCounter(arrForm.txtWapUrl, arrForm.hiddcount.value);
        var val1 = ilen.split(":");
        var ilen1 = textCounter(arrForm.txtMessage, arrForm.hiddcount.value);
        var val2 = ilen1.split(":");
        var cnt = parseInt(val1[0]) + parseInt(val2[0]);

        var len = Math.ceil(cnt / arrForm.hiddcount.value);
        len = (len == 0) ? 1 : len;
        arrForm.txtMessageCount.value = len;
        var mcnt = arrForm.txtMessageCount.value;
        if (mcnt > 2) {
            var mcnt = Math.ceil((cnt - 113) / 128);
            var mcnt = parseInt(mcnt) + 1;
        }
        arrForm.txtcount.value = cnt + " : " + mcnt + " SMS Parts";
        if($('#total_message_part')) {
            $('#total_message_part').empty();
            $('#total_message_part').text(mcnt);
        }
    } else {
        var ilen = textCounter(arrForm.txtMessage, arrForm.hiddcount.value);
        var val1 = ilen.split(":");
        arrForm.txtcount.value = val1[0] + " : " + val1[1] + " SMS Parts";
        if($('#total_message_part')) {
            $('#total_message_part').empty();
            $('#total_message_part').text(val1[1]);
        }
    }
}

function isValidExtension(path) {
    errorMsg = "Invalid file extention";
    start = path.lastIndexOf(".");
    if (start == -1) {
        alert(errorMsg);
        return true;
    } else {
        start++;
        extension = path.substring(start, path.length).toLowerCase();
    }
    if ((extension == "txt") || (extension == "csv")) {
        return false;
    } else {
        alert(errorMsg);
        return true;
    }
}

//function to check the valid 100 numbers
function countNumbers() {
    var num = document.getElementById('txtNumbers').value;
    var validNo = new Array();
    var ans = false;
    num = num.split(",");
    for (var i in num) {
        if (trim(num[i]).length > 5 && trim(num[i]).length < 21 && (!isNaN(num[i]))) {
            validNo.push(num[i]);
        }
    }

    if (validNo.length > 15) {
        ans = true;
        //        document.getElementById('txtNumbers').value=validNo;
    } else if (validNo.length < 1) {
        ans = true;
        //        document.getElementById('txtNumbers').value=validNo;
    } else {
        document.getElementById('txtNumbers').value = validNo;
        ans = false;
    }
    return ans;
}

function chkSubmit() {

}

function selected() {
    if (document.frmSendSms.chkPerson.checked) {
        document.frmSendSms.txtMessage.value = '';
        document.getElementById('trCount').style.display = 'none';
        document.getElementById('file').value = '';
        document.frmSendSms.hidMode.value = 'psms';
        document.frmSendSms.target = 'upload_target';
        
    } else {
        
        document.getElementById('trCount').style.display = '';
        document.getElementById('file').value = '';
        document.frmSendSms.txtSender.value = '';
        document.frmSendSms.cmbMessageType.value = '';
        document.frmSendSms.txtMessage.value = '';
        //            document.frmSendSms.cmbGMT.value='';
        //            document.frmSendSms.txtDate.value='';
        document.frmSendSms.chkSchedule.checked = false;
        document.frmSendSms.hidMode.value = 'dsms';
        document.getElementById('frame').style.display = 'none';
        document.getElementById('txtMessage').style.width = '250px';
        document.getElementById('txtMessage').style.height = '80px';
    }
}

function wapSelected() {
    document.getElementById('file').value = '';
    document.getElementById('frame').style.display = 'none';
    if (document.getElementById('myLabel4')) {
        document.getElementById('myLabel4').style.display = 'none';
    }
    if (document.getElementById('cmbMessageType').value == 'Wap Push') {
        if (document.frmSendSms.chkPerson.checked) {
            //document.getElementById('wapNormal').style.display='none';
            
        } else {
            
        }
    } else {
        //document.getElementById('wapNormal').style.display='none';
        
        document.getElementById('myLabel3').style.display = 'none'; //added this line to remove error generated by the wap url
    }
}

function isUrl(s) {
    var regexp = /(http|https):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/
    return regexp.test(s);
}

function wapSelect() {
    if (document.getElementById('cmbMessageType').value == '5') {
        
        //             	document.getElementById('wapNormal').style.display='';
        document.getElementById('txtWapUrl').disabled = false;
    } else {
        //            	document.getElementById('wapNormal').style.display='none';
        
        //            document.getElementById('myLabel3').style.display='none';       //added this line to remove error generated by the wap url
    }
}

function check() {

}

function btnOnclick() {
    if (document.getElementById('datepickerSelect').value == '----Select Date & Time ----') {
        document.getElementById('datepickerSelect').value = '';
    }
    //	document.getElementById('btnSubmit').disabled=true;
}

function goodchars(e, goods) {
    var key, keychar;
    key = getkey(e);
    if (key == null) return true;
    keychar = String.fromCharCode(key);
    keychar = keychar.toLowerCase();
    goods = goods.toLowerCase();
    if (goods.indexOf(keychar) != -1)
        return true;
    if (key == null || key == 0 || key == 8 || key == 9 || key == 13 || key == 27)
        return true;
    return false;
}

function getkey(e) {
    if (window.event)
        return window.event.keyCode;
    else if (e)
        return e.which;
    else
        return null;
}

function hideError() {
    var arr = document.getElementsByTagName("div");
    for (i = 0; i < arr.length; i++) {
        if (arr[i].className == 'error') {
            arr[i].style.display = 'none'; //alert("hi");
        }
    }
}

function showtime() {
    var rightNow = new Date();
    var jan1 = new Date(rightNow.getFullYear(), 0, 1, 0, 0, 0, 0);  // jan 1st
    var june1 = new Date(rightNow.getFullYear(), 6, 1, 0, 0, 0, 0); // june 1st
    var temp = jan1.toGMTString();
    temp = june1.toGMTString();
    var june2 = new Date(temp.substring(0, temp.lastIndexOf(" ") - 1));
    var total = (june1 - june2) / (1000 * 60);

    var hours = parseInt(total / 60);
    var minutes = total % 60;
    if (hours < 10 && hours > -10) {
        if (hours < 0) {
            hours = String('-0' + (hours * -1));
        } else {
            hours = String('+0' + hours);
        }
    }
    if (minutes <= 0 && minutes >= (-9)) {
        minutes = String('0' + minutes);
    }
    var finalVal = hours + ':' + minutes;
    document.getElementById('cmbGMT').value = finalVal;
    document.getElementById('cmbGMT2').value = finalVal;
}

function chkShedule(val) {
    if (val) {
        document.getElementById('datepickerSelect').value = '----Select Date & Time ----';
        document.getElementById('cmbGMT').disabled = false;
        document.getElementById('datepickerSelect').disabled = false;
    } else {
        document.getElementById('datepickerSelect').value = '----Select Date & Time ----';
        document.getElementById('cmbGMT').disabled = true;
        document.getElementById('datepickerSelect').disabled = true;
    }
}

//function to check if message is OTA message and validate it for hex
function chkOTA() {
    var chkper;
    try {
        if (document.getElementById('chkPerson').checked) {
            chkper = false;
        } else {
            chkper = true;
        }
    }
    catch (e) {
        chkper = true;
    }

    if (chkper) {
        var typeval = document.getElementById('cmbMessageType').value;
        if (typeval == 8 || typeval == 'OTA') {
            try {
                var x = document.getElementById('txtMessage').value;      //this will be message value
                var re = new RegExp(/[0-9A-Fa-f]/g);                    //this is regex pattern to check
                var ans = x.match(re).join("");                           //save result to the message
                if (ans != x) {
                    toastr.error("Invalid Hex Message!");
                    return false;
                }
            }
            catch (e) {
                toastr.error("Invalid Hex Message!");
                return false;
            }
        }
        return true;
    } else {
        return true;
    }
}
