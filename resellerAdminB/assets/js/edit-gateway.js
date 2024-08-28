// Submit edit gateway event
function editGateway(id) {
    var el = document.getElementById(id)
    el.disabled = true;

    var editGatewayType = document.getElementById("editGatewayType");
    var editGatewayName = document.getElementById("editGatewayName");
    var editGatewayMinimumOrder = document.getElementById("editGatewayMinimumOrder");
    var editGatewayFeeType = document.getElementById("editGatewayFeeType");
    var editGatewayFeeAmount = document.getElementById("editGatewayFeeAmount");
    var editGatewaynotice = document.getElementById("editGatewaynotice");
    var EnableEditedGateway = document.getElementById("editGatewaynotice");

    if (editGatewayType.value.trim() == "") {
        toastr.error("Please select gateway type!");
        el.disabled = false;
        return false;
    }

    if (editGatewayName.value.trim() == "") {
        toastr.error("Please enter the display name!");
        el.disabled = false;
        return false;
    }

    if (editGatewayMinimumOrder.value.length <= 0 || !$.isNumeric(editGatewayMinimumOrder.value)) {
        toastr.error("Please enter a valid gateway minimum order!");
        el.disabled = false;
        return false;
    }

    if (editGatewayFeeType.value.trim() == "") {
        toastr.error("Please select gateway fee type!");
        el.disabled = false;
        return false;
    }

    if (editGatewayFeeAmount.value.length <= 0 || !$.isNumeric(editGatewayFeeAmount.value)) {
        toastr.error("Please enter a valid gateway fee amount!");
        el.disabled = false;
        return false;
    }

    if (editGatewaynotice.value.length <= 0 || !$.isNumeric(editGatewaynotice.value)) {
        toastr.error("Please enter a valid gateway notice!");
        el.disabled = false;
        return false;
    }


    el.disabled = false;
    __doPostBack(id, '');
}