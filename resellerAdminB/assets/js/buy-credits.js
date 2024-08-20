function paySubmit(id) {
    var bl = document.getElementById(id);

    bl.disabled = true;

    const radioBtnPay = document.querySelector("input[name=payment]:checked");

    if (radioBtnPay == null) {
        toastr.error("Please Choose Reload Option!");

        bl.disabled = false;
        return false;
    }

    if (radioBtnPay.length <= 0) {
        toastr.error("Please Choose Reload Option!");
       
        bl.disabled = false;
        return false;
    }

    if (radioBtnPay.value == "custom") {
      
        var customPrice = document.getElementById("customPrice");

        if (customPrice.value.trim() == "") {
            toastr.error("Please enter your custom price!");

            bl.disabled = false;
            return false;
        }

        bl.disabled = false;
        __doPostBack(id, '');
    }

    bl.disabled = false;
    __doPostBack(id, '');
}


document.getElementById("customPrice").addEventListener("focus", function () {
    document.querySelectorAll("input[name=payment]").forEach(el => {
        if (el.value == 'custom') {
            el.checked = true;
        } else {
            el.checked = false;
        }
    })
});