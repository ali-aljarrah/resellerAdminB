// Table datatable
$(document).ready(function () {
    $('#account_activity_table_processing').parent().addClass('position-relative');
    $.fn.dataTable.ext.errMode = 'none';
    $('#account_activity_table').on('error.dt', function (e, settings, techNote, message) {
        console.log('An error has been reported by DataTables: ', message);
    }).DataTable();

    var account_activity_data = $('#account-activity-report').DataTable({
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

// Submit edit account info event
function editAccountInfoSubmit(id) {
    var el = document.getElementById(id);
    el.disabled = true;

    const accountType = document.getElementById("accountType");
    const accountStatus = document.getElementById("accountStatus");

    if (accountType.value == "") {
        toastr.error("Select the account type!");
        el.disabled = false;
        return false;
    }

    if (accountStatus.value == "") {
        toastr.error("Select the account status!");
        el.disabled = false;
        return false;
    }

    el.disabled = false;
    __doPostBack(id, '');
}

// Submit contact details event
function editContactDetailsSubmit(id) {
    __doPostBack(id, '');
}

// Submit change password event
function changePasswordSubmit(id) {
    var el = document.getElementById(id);
    el.disabled = true;

    const oldPassword = document.getElementById("oldPassword");
    const newPassword = document.getElementById("newPassword");
    const confirmNewPassword = document.getElementById("confirmNewPassword");

    if (oldPassword.value.trim() == "") {
        toastr.error("Enter the account old password!");
        el.disabled = false;
        return false;
    }

    if (newPassword.value.trim() == "") {
        toastr.error("Enter the account new password!");
        el.disabled = false;
        return false;
    }

    if (confirmNewPassword.value.trim() == "") {
        toastr.error("Confirm the account new password!");
        el.disabled = false;
        return false;
    }

    if (confirmNewPassword.value.trim() != newPassword.value.trim()) {
        toastr.error("Confirm password is not correct!");
        el.disabled = false;
        return false;
    }

    el.disabled = false;
    __doPostBack(id, '');
}