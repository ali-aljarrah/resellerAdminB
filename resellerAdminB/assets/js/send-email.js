// Table datatable
$(document).ready(function () {
    var reportdata = $('#sent-sms-report').DataTable({
        dom: "<'d-flex mb-5 justify-content-between align-items-center flex-column flex-md-row'<''f><'mt-3 mt-md-0 mb-3 mb-md-0'>>" +
            "<'row'<'col-sm-12'tr>>" +
            "<'d-flex justify-content-between align-items-center flex-column flex-md-row'<''l><''i><''p>>",
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