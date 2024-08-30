$(document).ready(function () {
    var reportdata = $('#blocker-sender-report').DataTable({
        dom: "<'d-flex mb-5 justify-content-between align-items-center flex-column flex-md-row'<''f><'mt-3 mt-md-0 mb-3 mb-md-0'>>" +
            "<'row'<'col-sm-12'tr>>" +
            "<'d-flex justify-content-between align-items-center flex-column flex-md-row'<''l><''i><''p>>",
    });
});

// Delete user event
function confirmDelete(SenderFilterID) {
    Swal.fire({
        title: 'Are you sure you want to delete this filter?',
        text: "You won't be able to revert this!",
        icon: 'error',
        showCancelButton: true,
        confirmButtonColor: '#d33',
        cancelButtonColor: '#3085d6',
        confirmButtonText: 'Delete'
    }).then((result) => {
        if (result.isConfirmed) {
            // Trigger postback with userID as the argument
            __doPostBack('DeleteFilter', SenderFilterID);
        }
    });
}

let value = $('input[name="username"]:checked').val();

if (value == 'CustomUsername') {
    $("#filterSenderName").prop('disabled', false);
} else {
    $("#filterSenderName").prop('disabled', true);
}

$('input[name="username"]').on('change', function () {
    let value = $('input[name="username"]:checked').val();

    if (value == 'CustomUsername') {
        $("#filterSenderName").prop('disabled', false);
    } else {
        $("#filterSenderName").prop('disabled', true);
    }
});

// Add new sender name filter
function addSenderFilterSubmit(id) {
    var el = document.getElementById(id)
    el.disabled = true;

    var senderName = document.getElementById("senderName");
    var senderStatus = document.getElementById("senderStatus");
    var filterSenderName = document.getElementById("filterSenderName");
    var username = document.querySelector('input[name="username"]:checked');

    if (senderName.value.trim() == "") {
        toastr.error("Please enter Sender name");
        el.disabled = false;
        return false;
    }

    if (senderStatus.value.trim() == "") {
        toastr.error("Please select sender status");
        el.disabled = false;
        return false;
    }

    if (username.value == "CustomUsername") {
        if (filterSenderName.value.trim() == "") {
            toastr.error("Please enter custom username");
            el.disabled = false;
            return false;
        }
    }

    el.disabled = false;
    __doPostBack(id, '');
}