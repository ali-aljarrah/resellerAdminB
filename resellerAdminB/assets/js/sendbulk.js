$('#latest-table').DataTable({
    "paging": false,
    "bInfo": false
});

$('#txtMessage').on('keypress', function () {
    let len = this.value.length;

    $('#char-count').empty();
    $('#char-count').text(len);

    if (len >= 160) {
        if (len % 160 == 0) {
            msg_count = (len / 160) + 1;
            $('#msg-count').empty();
            $('#msg-count').text(msg_count);
        }
    } else {
        $('#msg-count').empty();
        $('#msg-count').text("1");
    }
});

$(".file-checkbox").change(function () {
    var value = $(this).val();
    var filesTextArea = $('#selectedFiles').val();
    var numbersCount = parseInt(value.match(/\|(.*?)\|/)[1]);
    var oldFilesCount = parseInt($('#files-count').text());
    var oldNumberCount = parseInt($('#number-count').text());

    if ($(this).is(':checked')) {
        $('#selectedFiles').val(filesTextArea + value + ',');
        $('#files-count').text(oldFilesCount + 1);
        $('#total_files').text(oldFilesCount + 1);
        $('#number-count').text(oldNumberCount + numbersCount);
        $('#total_recipients').text(oldNumberCount + numbersCount);
        $('#total_message').text(oldNumberCount + numbersCount);
    } else {
        $('#selectedFiles').val(filesTextArea.replace(value + ',', ''));
        $('#files-count').text(oldFilesCount - 1);
        $('#total_files').text(oldFilesCount - 1);
        $('#number-count').text(oldNumberCount - numbersCount);
        $('#total_recipients').text(oldNumberCount - numbersCount);
        $('#total_message').text(oldNumberCount - numbersCount);
    }
})


var templates = [
    {
        templateName: "Evacuation",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
    },
    {
        templateName: "First Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Second Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Third Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Third Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Third Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Third Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Third Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Third Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Third Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Third Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    }
];

var chooseTemplate = new bootstrap.Modal(document.getElementById("chooseTemplate"), {});

$('#chooseTemplateBtn').click(function (e) {
    e.preventDefault();

    $('#templates-table tbody').empty();

    $.each(templates, function (i) {
        $('#templates-table tbody').append(`
            <tr class="fs-14 dark-color">
                <td>
                    <div class="form-check form-check-custom form-check-success form-check-solid">
                        <input class="form-check-input select-template" type="radio" value="`+ templates[i].templateText + `" name="selectTempalte"/>
                    </div>
                </td>
                <td>
                    `+ templates[i].templateName + `
                </td>
                <td>
                    `+ templates[i].templateText + `
                </td>
            </tr>
        `);
    });

    chooseTemplate.show();
});

$('#chooseTemplateSubmitBtn').click(function (e) {
    e.preventDefault();

    $(this).prop('disabled', true);

    if ($('input[name="selectTempalte"]').is(':checked')) {
        var selectedValue = $('input[name="selectTempalte"]:checked').val();

        var oldText = $('#txtMessage').val();

        $('#txtMessage').val(oldText + selectedValue);

        $(this).prop('disabled', false);

        chooseTemplate.hide();
    } else {
        toastr.error("Please select a template!");

        $(this).prop('disabled', false);
    }
});

$('#var_1').click(function (e) {
    e.preventDefault();

    var oldText = $('#txtMessage').val();

    $('#txtMessage').val(oldText + ' [var1]');
});

$('#var_2').click(function (e) {
    e.preventDefault();

    var oldText = $('#txtMessage').val();

    $('#txtMessage').val(oldText + ' [var2]');
});

$('#var_3').click(function (e) {
    e.preventDefault();

    var oldText = $('#txtMessage').val();

    $('#txtMessage').val(oldText + ' [var3]');
});


function sendBulkSubmit(id) {

    var el = document.getElementById(id);
    el.disabled = true;

    var txtSender = document.getElementById("txtSender").value;
    var e = document.getElementById("cmbMessageType");
    var cmbMessageType = e.value;
    var txtMessage = document.getElementById("txtMessage").value;
    var selectedFiles = document.getElementById("selectedFiles").value;

    if (txtSender.length > 18 || txtSender.trim() == '') {

        toastr.error("Sender Name can't be empty and must be less than 18 characters!");

        el.disabled = false;
        return false;
    }

    if (cmbMessageType == '') {

        toastr.error("Please select message type!");

        el.disabled = false;
        return false;
    }

    if (selectedFiles.trim() == '') {

        toastr.error("Please select contact files!");

        el.disabled = false;
        return false;
    }

    if (txtMessage.trim() == '') {

        toastr.error("Please enter message to send!");

        el.disabled = false;
        return false;
    }

    el.disabled = false;
    __doPostBack(id, '');
}