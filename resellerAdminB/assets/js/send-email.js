// Table datatable
$(document).ready(function () {
    $('#sms_report_table_processing').parent().addClass('position-relative');
    $.fn.dataTable.ext.errMode = 'none';
    $('#sms_report_table').on('error.dt', function (e, settings, techNote, message) {
        console.log('An error has been reported by DataTables: ', message);
    }).DataTable();

    var reportdata = $('#sent-sms-report').DataTable({
        dom: "<'d-flex mb-5 justify-content-between align-items-center flex-column flex-md-row'<''f><'mt-3 mt-md-0 mb-3 mb-md-0'B>>" +
            "<'row'<'col-sm-12'tr>>" +
            "<'d-flex justify-content-between align-items-center flex-column flex-md-row'<''l><''i><''p>>",
        buttons: [
            'csv', 'excel', 'pdf'
        ],
        "bDestroy": true,
        "lengthChange": true,
        "aLengthMenu": [[25, 50, 100], [25, 50, 100]],
        "iDisplayLength": 25,

        "ordering": false,
        "processing": true,
        'language': {
            'loadingRecords': '&nbsp;',
            'processing': '<div class="spinner"></div>'
        },
        "bProcessing": false,
        "bServerSide": false,
        "searching": true,

        scrollCollapse: true,

    });

});

var sendEmailModal = new bootstrap.Modal(document.getElementById("sendEmailModal"), {});

// Submit new message event
function sendEmailSubmit(id) {
    var el = document.getElementById(id);
    el.disabled = true;

    var emailRecipient = document.getElementById("emailRecipient").value;
    var emailMessage = document.getElementById("emailMessage").value;

    if (emailRecipient == '') {
        toastr.error("Please select email recipient");
        el.disabled = false;
        return false;
    }

    if (emailMessage == '') {
        toastr.error("Please enter the email's message");
        el.disabled = false;
        return false;
    }

    el.disabled = false;
    __doPostBack(id, '');
    
}

function showSendEmailModal() {
    sendEmailModal.show();
}