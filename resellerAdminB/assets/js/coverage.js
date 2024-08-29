// Table datatable
$('#coverage-table').DataTable({
    dom: "<'d-flex mb-5 justify-content-between align-items-center flex-column flex-md-row'<''f><'mt-3 mt-md-0 mb-3 mb-md-0'>>" +
        "<'row'<'col-sm-12'tr>>" +
        "<'d-flex justify-content-between align-items-center flex-column flex-md-row'<''l><''i><''p>>",
});


// Adding new country
function addNewCountrySubmit(id) {
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

// Delete country coverage
function confirmDelete(CountryID) {
    Swal.fire({
        title: 'Are you sure you want to delete this country?',
        text: "You won't be able to revert this!",
        icon: 'error',
        showCancelButton: true,
        confirmButtonColor: '#d33',
        cancelButtonColor: '#3085d6',
        confirmButtonText: 'Delete'
    }).then((result) => {
        if (result.isConfirmed) {
            // Trigger postback with userID as the argument
            __doPostBack('DeleteCountry', CountryID);
        }
    });
}