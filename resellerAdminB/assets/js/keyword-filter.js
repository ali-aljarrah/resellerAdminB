$(document).ready(function () {
    var reportdata = $('#blocked-keyword-report').DataTable({
        dom: "<'d-flex mb-5 justify-content-between align-items-center flex-column flex-md-row'<''f><'mt-3 mt-md-0 mb-3 mb-md-0'>>" +
            "<'row'<'col-sm-12'tr>>" +
            "<'d-flex justify-content-between align-items-center flex-column flex-md-row'<''l><''i><''p>>",
    });
});

// Delete user event
function confirmDelete(KeywordFilterID) {
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
            __doPostBack('DeleteFilter', KeywordFilterID);
        }
    });
}

let value = $('input[name="username"]:checked').val();

if (value == 'CustomUsername') {
    $("#filterSpamWordUsername").prop('disabled', false);
} else {
    $("#filterSpamWordUsername").prop('disabled', true);
}

$('input[name="username"]').on('change', function () {
    let value = $('input[name="username"]:checked').val();

    if (value == 'CustomUsername') {
        $("#filterSpamWordUsername").prop('disabled', false);
    } else {
        $("#filterSpamWordUsername").prop('disabled', true);
    }
});


// Add new spam word
function addSpamFilterSubmit(id) {
    var el = document.getElementById(id)
    el.disabled = true;

    var spamWord = document.getElementById("spamWord");
    var spamStatus = document.getElementById("spamStatus");
    var filterSpamWordUsername = document.getElementById("filterSpamWordUsername");
    var username = document.querySelector('input[name="username"]:checked');

    if (spamWord.value.trim() == "") {
        toastr.error("Please enter spam keyword");
        el.disabled = false;
        return false;
    }

    if (spamStatus.value.trim() == "") {
        toastr.error("Please select spam keyword status");
        el.disabled = false;
        return false;
    }

    if (username.value == "CustomUsername") {
        if (filterSpamWordUsername.value.trim() == "") {
            toastr.error("Please enter custom username");
            el.disabled = false;
            return false;
        }
    }

    el.disabled = false;
    __doPostBack(id, '');
}