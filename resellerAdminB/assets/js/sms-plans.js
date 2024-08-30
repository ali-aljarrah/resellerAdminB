﻿// Table datatable
$('#sms-plan-table').DataTable({
    dom: "<'d-flex mb-5 justify-content-between align-items-center flex-column flex-md-row'<''f><'mt-3 mt-md-0 mb-3 mb-md-0'>>" +
        "<'row'<'col-sm-12'tr>>" +
        "<'d-flex justify-content-between align-items-center flex-column flex-md-row'<''l><''i><''p>>",
});

// Create new SMS plan
function addNewPlanSubmit(id) {
    var el = document.getElementById(id)
    el.disabled = true;

    var totalSMS = document.getElementById("totalSMS");
    var title = document.getElementById("title");
    var smsRate = document.getElementById("smsRate");
    var totalCost = document.getElementById("totalCost");
    var currency = document.getElementById("currency");
    var status = document.getElementById("status");

    if (totalSMS.value.length <= 0 || !$.isNumeric(totalSMS.value)) {
        toastr.error("Please enter total SMS number");
        el.disabled = false;
        return false;
    }

    if (title.value.trim() == "") {
        toastr.error("Please enter SMS plan title");
        el.disabled = false;
        return false;
    }

    if (smsRate.value.length <= 0 || !$.isNumeric(smsRate.value)) {
        toastr.error("Please enter SMS rate");
        el.disabled = false;
        return false;
    }

    if (totalCost.value.length <= 0 || !$.isNumeric(totalCost.value)) {
        toastr.error("Please enter total SMS plan cost");
        el.disabled = false;
        return false;
    }

    if (currency.value.trim() == "") {
        toastr.error("Please select SMS plan currency");
        el.disabled = false;
        return false;
    }

    if (status.value.trim() == "") {
        toastr.error("Please select SMS plan status");
        el.disabled = false;
        return false;
    }

    el.disabled = false;
    __doPostBack(id, '');
}

// Delete SMS Plan
function confirmDelete(PlanID) {
    Swal.fire({
        title: 'Are you sure you want to delete this Plan?',
        text: "You won't be able to revert this!",
        icon: 'error',
        showCancelButton: true,
        confirmButtonColor: '#d33',
        cancelButtonColor: '#3085d6',
        confirmButtonText: 'Delete'
    }).then((result) => {
        if (result.isConfirmed) {
            // Trigger postback with userID as the argument
            __doPostBack('DeletePlan', PlanID);
        }
    });
}