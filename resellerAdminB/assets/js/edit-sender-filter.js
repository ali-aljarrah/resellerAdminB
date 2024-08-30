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

// Edit sender name filter
function editSenderFilterSubmit(id) {
    //var el = document.getElementById(id)
    //el.disabled = true;

    //var senderName = document.getElementById("senderName");
    //var senderStatus = document.getElementById("senderStatus");
    //var filterSenderName = document.getElementById("filterSenderName");
    //var username = document.querySelector('input[name="username"]:checked');

    //if (senderName.value.trim() == "") {
    //    toastr.error("Please enter Sender name");
    //    el.disabled = false;
    //    return false;
    //}

    //if (senderStatus.value.trim() == "") {
    //    toastr.error("Please select sender status");
    //    el.disabled = false;
    //    return false;
    //}

    //if (username.value == "CustomUsername") {
    //    if (filterSenderName.value.trim() == "") {
    //        toastr.error("Please enter custom username");
    //        el.disabled = false;
    //        return false;
    //    }
    //}

    //el.disabled = false;
    __doPostBack(id, '');
}