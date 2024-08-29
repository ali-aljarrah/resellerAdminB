// Table datatable
$(document).ready(function () {

    var recent_traffic_data = $('#recent-traffic-report').DataTable({
        dom: "<'d-flex mb-5 justify-content-between align-items-center flex-column flex-md-row'<''f><'mt-3 mt-md-0 mb-3 mb-md-0'>>" +
            "<'row'<'col-sm-12'tr>>" +
            "<'d-flex justify-content-between align-items-center flex-column flex-md-row'<''l><''i><''p>>",
    });


    var recent_transactions_data = $('#recent-transactions-report').DataTable({
        dom: "<'d-flex mb-5 justify-content-between align-items-center flex-column flex-md-row'<''f><'mt-3 mt-md-0 mb-3 mb-md-0'>>" +
            "<'row'<'col-sm-12'tr>>" +
            "<'d-flex justify-content-between align-items-center flex-column flex-md-row'<''l><''i><''p>>",

    });



    var custom_rates_data = $('#custom-rates-report').DataTable({
        dom: "<'d-flex mb-5 justify-content-between align-items-center flex-column flex-md-row'<''f><'mt-3 mt-md-0 mb-3 mb-md-0'>>" +
            "<'row'<'col-sm-12'tr>>" +
            "<'d-flex justify-content-between align-items-center flex-column flex-md-row'<''l><''i><''p>>",

    });
});

// Changin user status event
$('#userStatus').change(function () {
    toastr.success("User status updated Successfully!");
});

// Modals initialize

// Submit send message event
function sendEmailSubmit(id) {
    var el = document.getElementById(id);
    el.disabled = true;

    let messageSubject = document.getElementById("messageSubject").value;
    let messageBody = document.getElementById("messageBody").value;

    if (messageSubject.trim() == '') {
        toastr.error("Please enter message subject!");

        el.disabled = false;

        return false;
    }

    if (messageBody.trim() == '') {
        toastr.error("Please enter message content!");

        el.disabled = false;

        return false;
    }

    el.disabled = false;

    __doPostBack(id, '');
}

// Submit add credits event
function addCreditSubmit(id) {
    var el = document.getElementById(id);
    el.disabled = true;

    let creditsAmount = document.getElementById("creditsAmount").value;

    if (creditsAmount.length <= 0 || !$.isNumeric(creditsAmount)) {
        toastr.error("Enter a valid credit amount!");

        el.disabled = false;

        return false;
    }

    el.disabled = false;

    __doPostBack(id, '');
}


// Submit edit account info event
function editAccountSubmit(id) {
    var el = document.getElementById(id);
    el.disabled = true;

    let accountType = document.getElementById("accountType").value;
    let accountStatus = document.getElementById("accountStatus").value;

    if (accountType.trim() == '') {
        toastr.error("Please select the account type!");
        el.disabled = false;
        return false;
    }

    if (accountStatus.trim() == '') {
        toastr.error("Please select the account status!");
        el.disabled = false;
        return false;
    }
    el.disabled = false;

    __doPostBack(id, '');
}

// Submit change password event
function editAccountPasswordSubmit(id) {
    var el = document.getElementById(id);
    el.disabled = true;

    let oldPassword = document.getElementById("oldPassword").value;
    let newPassword = document.getElementById("newPassword").value;
    let confirmNewPassword = document.getElementById("confirmNewPassword").value;

    if (oldPassword.trim() == '') {
        toastr.error("Please enter the account current password!");
        el.disabled = false;
        return false;
    }

    if (newPassword.trim() == '') {
        toastr.error("Please enter the account new password!");
        el.disabled = false;
        return false;
    }

    if (confirmNewPassword.trim() == '') {
        toastr.error("Please confirm the account new password!");
        el.disabled = false;
        return false;
    }

    if (newPassword.trim() != confirmNewPassword.trim()) {
        toastr.error("Confirm password is not correct!");
        el.disabled = false;
        return false;
    }

    el.disabled = false;

    __doPostBack(id, '');
}


// Create new message function

var sendMessageModal = new bootstrap.Modal(document.getElementById("sendMessageModal"), {});

// Submit new message event
function sendMessagelSubmit(id) {
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

    sendMessageModal.hide();
}

function showSendMessageModal() {
    sendMessageModal.show();
}