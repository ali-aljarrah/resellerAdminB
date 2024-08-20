// Table datatable
$(document).ready(function () {
    $('#recent_traffic_table_processing').parent().addClass('position-relative');
    $.fn.dataTable.ext.errMode = 'none';
    $('#recent_traffic_table').on('error.dt', function (e, settings, techNote, message) {
        console.log('An error has been reported by DataTables: ', message);
    }).DataTable();

    var recent_traffic_data = $('#recent-traffic-report').DataTable({
        dom: "<'d-flex justify-content-between align-items-center flex-column flex-md-row'<''f><'mt-3 mt-md-0 mb-3 mb-md-0'B>>" +
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

    $('#recent_transactions_table_processing').parent().addClass('position-relative');
    $.fn.dataTable.ext.errMode = 'none';
    $('#recent_transactions_table').on('error.dt', function (e, settings, techNote, message) {
        console.log('An error has been reported by DataTables: ', message);
    }).DataTable();

    var recent_transactions_data = $('#recent-transactions-report').DataTable({
        dom: "<'d-flex justify-content-between align-items-center flex-column flex-md-row'<''f><'mt-3 mt-md-0 mb-3 mb-md-0'B>>" +
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

    $('#custom_rates_table_processing').parent().addClass('position-relative');
    $.fn.dataTable.ext.errMode = 'none';
    $('#custom_rates_table').on('error.dt', function (e, settings, techNote, message) {
        console.log('An error has been reported by DataTables: ', message);
    }).DataTable();

    var custom_rates_data = $('#custom-rates-report').DataTable({
        dom: "<'d-flex justify-content-between align-items-center flex-column flex-md-row'<''f><'mt-3 mt-md-0 mb-3 mb-md-0'B>>" +
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

// Changin user status event
$('#userStatus').change(function () {
    toastr.success("User status updated Successfully!");
});

// Modals initialize

// Submit send message event
$('#sendMessageSubmitBtn').click(function (e) {
    e.preventDefault();
    $(this).prop('disabled', true);

    let messageSubject = $('#messageSubject').val();
    let messageBody = $('#messageBody').val();

    if (messageSubject.trim() == '') {
        toastr.error("Enter message subject!");
        $(this).prop('disabled', false);
        return;
    }

    if (messageBody.trim() == '') {
        toastr.error("Enter message!");
        $(this).prop('disabled', false);
        return;
    }

    toastr.success("Message has been sent successfully!");

    $(this).prop('disabled', false);
    $('#messageSubject').val('');
    $('#messageBody').val('');
});

// Submit add credits event
$('#addCreditsSubmitBtn').click(function (e) {
    e.preventDefault();
    $(this).prop('disabled', true);

    let creditsAmount = $('#creditsAmount').val();

    if (creditsAmount.length <= 0 || !$.isNumeric(creditsAmount)) {
        toastr.error("Enter a valid credit amount!");
        $(this).prop('disabled', false);
        return;
    }

    toastr.success("Credits has been addedd successfully!");

    $(this).prop('disabled', false);
    $('#creditsAmount').val('');
});

// Submit edit account info event
$('#editAccountInfoSubmitBtn').click(function (e) {
    e.preventDefault();
    $(this).prop('disabled', true);

    var accountType = $('#accountType').find(":selected").val();
    var accountStatus = $('#accountStatus').find(":selected").val();

    if (accountType == '') {
        toastr.error("Select the account type!");
        $(this).prop('disabled', false);
        return;
    }

    if (accountStatus == '') {
        toastr.error("Select the account status!");
        $(this).prop('disabled', false);
        return;
    }

    toastr.success("Account information updated successfully!");

    $(this).prop('disabled', false);
});

// Submit edit contact details event
$('#editContactDetailsSubmitBtn').click(function (e) {
    e.preventDefault();

    toastr.success("Contact details updated successfully!");
});

// Submit change password event
$('#changePasswordSubmitBtn').click(function (e) {
    e.preventDefault();
    $(this).prop('disabled', true);

    let oldPassword = $('#oldPassword').val();
    let newPassword = $('#newPassword').val();
    let confirmNewPassword = $('#confirmNewPassword').val();

    if (oldPassword.trim() == '') {
        toastr.error("Enter the account current password!");
        $(this).prop('disabled', false);
        return;
    }
    if (newPassword.trim() == '') {
        toastr.error("Enter the account new password!");
        $(this).prop('disabled', false);
        return;
    }
    if (confirmNewPassword.trim() == '') {
        toastr.error("Confirm the account new password!");
        $(this).prop('disabled', false);
        return;
    }
    if (newPassword.trim() != confirmNewPassword.trim()) {
        toastr.error("Confirm password is not correct!");
        $(this).prop('disabled', false);
        return;
    }

    toastr.success("Account password updated successfully!");

    $(this).prop('disabled', false);

    $('#oldPassword').val('');
    $('#newPassword').val('');
    $('#confirmNewPassword').val('');
});


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