// Edit country coverage
function editCountry(id) {
    var el = document.getElementById(id)
    el.disabled = true;

    var serviceOption = document.getElementById("serviceOption");
    var costByCredit = document.getElementById("costByCredit");
    var countryMCC = document.getElementById("countryMCC");
    var mnc = document.getElementById("mnc");
    var available = document.getElementById("available");
    var user = document.getElementById("user");

    if (serviceOption.value.trim() == "") {
        toastr.error("Please select service option");
        el.disabled = false;
        return false;
    }

    if (costByCredit.value.length <= 0 || !$.isNumeric(costByCredit.value)) {
        toastr.error("Please enter cost by credits");
        el.disabled = false;
        return false;
    }

    if (countryMCC.value.trim() == "") {
        toastr.error("Please select country MCC");
        el.disabled = false;
        return false;
    }

    if (mnc.value.trim() == "") {
        toastr.error("Please enter MNC");
        el.disabled = false;
        return false;
    }

    if (available.value.trim() == "") {
        toastr.error("Please select availability");
        el.disabled = false;
        return false;
    }

    if (user.value.trim() == "") {
        toastr.error("Please select users group");
        el.disabled = false;
        return false;
    }

    el.disabled = false;
    __doPostBack(id, '');
}