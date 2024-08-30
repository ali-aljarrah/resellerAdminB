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
function editSpamFilterSubmit(id) {
    //var el = document.getElementById(id)
    //el.disabled = true;

    //var spamWord = document.getElementById("spamWord");
    //var spamStatus = document.getElementById("spamStatus");
    //var filterSpamWordUsername = document.getElementById("filterSpamWordUsername");
    //var username = document.querySelector('input[name="username"]:checked');

    //if (spamWord.value.trim() == "") {
    //    toastr.error("Please enter spam keyword");
    //    el.disabled = false;
    //    return false;
    //}

    //if (spamStatus.value.trim() == "") {
    //    toastr.error("Please select spam keyword status");
    //    el.disabled = false;
    //    return false;
    //}

    //if (username.value == "CustomUsername") {
    //    if (filterSpamWordUsername.value.trim() == "") {
    //        toastr.error("Please enter custom username");
    //        el.disabled = false;
    //        return false;
    //    }
    //}

    //el.disabled = false;
    __doPostBack(id, '');
}