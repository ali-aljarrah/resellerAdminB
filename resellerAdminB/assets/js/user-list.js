$(document).ready(function () {
    // Table datatable
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

    // Delete user event
    $('.delete-user').click(function (e) {
        Swal.fire({
            title: 'Are you sure you want to delete this user?',
            text: "You won't be able to revert this!",
            icon: 'error',
            showCancelButton: true,
            confirmButtonColor: '#d33',
            cancelButtonColor: '#3085d6',
            confirmButtonText: 'Delete'
        }).then((result) => {
            if (result.isConfirmed) {
                Swal.fire(
                    'Deleted!',
                    'User has been deleted.',
                    'success'
                )
            }
        })
    });
   
});

var popupUserList = new bootstrap.Modal(document.getElementById("popupUserList"), {});

// validate expression
const emailRegexp = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/;
function addNewUserSubmit(id) {
    var el = document.getElementById(id);
    el.disabled = true;

    var newUserFullName = document.getElementById("newUserFullName").value;
    var newUserEmail = document.getElementById("newUserEmail").value;
    var newUserPhoneNumber = document.getElementById("newUserPhoneNumber").value;
    var newUserCountry = document.getElementById("newUserCountry").value;

    if (newUserFullName.trim() == '') {
        toastr.error("Please add the user full name");
        el.disabled = false;
        return false;
    }
    if (newUserEmail.trim() == '') {
        toastr.error("Please enter the user email!");
        el.disabled = false;
        return false;
    }
    if (!emailRegexp.test(newUserEmail.trim())) {
        toastr.error("Please Enter a Valid Email Address in user email input");
        el.disabled = false;
        return false;
    }
    if (newUserPhoneNumber.trim() == '') {
        toastr.error("Please enter the user phone number!");
        el.disabled = false;
        return false;
    }
    if (newUserCountry.trim() == '') {
        toastr.error("Please enter the user country!");
        el.disabled = false;
        return false;
    }
    el.disabled = false;
    __doPostBack(id, '');

    popupUserList.hide();
}

function showUserModal() {
    popupUserList.show();
}