// validate expression
const emailRegexp = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/;

// Edit business details
function editBusinessSubmit(id) {
    var el = document.getElementById(id)
    el.disabled = true;

    var businessName = document.getElementById("businessName");
    var supportEmail = document.getElementById("supportEmail");
    var defaultSenderID = document.getElementById("defaultSenderID");
    var businessAddress = document.getElementById("businessAddress");
    var businessWebsite = document.getElementById("businessWebsite");
    var resellerDomain = document.getElementById("resellerDomain");
    var businessSignature = document.getElementById("businessSignature");
    var businessLogo = document.getElementById("businessLogo");

    if (businessName.value.trim() == "") {
        toastr.error("Please enter your business name");
        el.disabled = false;
        return false;
    }

    if (supportEmail.value.trim() == "") {
        toastr.error("Please enter your support email");
        el.disabled = false;
        return false;
    }

    if (!emailRegexp.test(supportEmail.value.trim())) {
        toastr.error("Please Enter a Valid Email Address in support email input");
        el.disabled = false;
        return false;
    }

    if (defaultSenderID.value.trim() == "") {
        toastr.error("Please enter your default sender ID");
        el.disabled = false;
        return false;
    }

    if (businessAddress.value.trim() == "") {
        toastr.error("Please enter your business address");
        el.disabled = false;
        return false;
    }

    if (businessWebsite.value.trim() == "") {
        toastr.error("Please enter your business website");
        el.disabled = false;
        return false;
    }

    if (resellerDomain.value.trim() == "") {
        toastr.error("Please enter your reseller domain");
        el.disabled = false;
        return false;
    }

    el.disabled = false;
    __doPostBack(id, '');
}

// Other settings submit function
function otherSettingsSubmit(id) {
    var el = document.getElementById(id)
    el.disabled = true;

    var billingModel = document.getElementById("billingModel");
    var hideRegistrationForm = document.getElementById("hideRegistrationForm");
    var enableEmailVerification = document.getElementById("enableEmailVerification");
    var enablePhoneVerification = document.getElementById("enablePhoneVerification");
    var disableFundingByCreditPurchases = document.getElementById("disableFundingByCreditPurchases");
    var sendCustomersToWebsiteAfterLogout = document.getElementById("sendCustomersToWebsiteAfterLogout");
    var invoiceTax = document.getElementById("invoiceTax");
    var invoiceVat = document.getElementById("invoiceVat");

    if (billingModel.value.trim() == "") {
        toastr.error("Please enter your billing mode");
        el.disabled = false;
        return false;
    }

    if (hideRegistrationForm.value.trim() == "") {
        toastr.error("Please enter registarion form option");
        el.disabled = false;
        return false;
    }

    if (enableEmailVerification.value.trim() == "") {
        toastr.error("Please enter enable email verification option");
        el.disabled = false;
        return false;
    }

    if (enablePhoneVerification.value.trim() == "") {
        toastr.error("Please enter enable phone verification option");
        el.disabled = false;
        return false;
    }

    if (disableFundingByCreditPurchases.value.trim() == "") {
        toastr.error("Please enter disable funding by credit purchases option");
        el.disabled = false;
        return false;
    }

    if (sendCustomersToWebsiteAfterLogout.value.trim() == "") {
        toastr.error("Please enter send customer to website after logout option");
        el.disabled = false;
        return false;
    }

    if (invoiceTax.value.trim() == "") {
        toastr.error("Please enter invoice tax");
        el.disabled = false;
        return false;
    }

    if (invoiceVat.value.trim() == "") {
        toastr.error("Please enter invoice vat");
        el.disabled = false;
        return false;
    }

    el.disabled = false;
    __doPostBack(id, '');
}

// SMTP settings submit function
function emailSettingsSubmit(id) {
    var el = document.getElementById(id)
    el.disabled = true;

    var smtpServer = document.getElementById("smtpServer");
    var smtpUsername = document.getElementById("smtpUsername");
    var smtpPassword = document.getElementById("smtpPassword");
    var smtpPort = document.getElementById("smtpPort");
    var smtpSecurity = document.getElementById("smtpSecurity");

    if (smtpServer.value.trim() != "" || smtpUsername.value.trim() != "" ||
        smtpPassword.value.trim() != "" || smtpPort.value.trim() != "") {

        if (smtpServer.value.trim() == "") {
            toastr.error("Please enter SMTP server");
            el.disabled = false;
            return false;
        }

        if (smtpUsername.value.trim() == "") {
            toastr.error("Please enter SMTP username");
            el.disabled = false;
            return false;
        }

        if (smtpPassword.value.trim() == "") {
            toastr.error("Please enter SMTP password");
            el.disabled = false;
            return false;
        }

        if (smtpPort.value.trim() == "") {
            toastr.error("Please enter SMTP port");
            el.disabled = false;
            return false;
        }

        if (smtpSecurity.value.trim() == "") {
            toastr.error("Please enter SMTP security option");
            el.disabled = false;
            return false;
        }

        el.disabled = false;
        __doPostBack(id, '');
    }

    el.disabled = false;
    __doPostBack(id, '');
}

// Create new gateway function
function createGatewaySubmit(id) {
    //var el = document.getElementById(id)
    //el.disabled = true;

    //var newGatewayType = document.getElementById("newGatewayType");
    //var newGatewayName = document.getElementById("newGatewayName");
    //var newGatewayMinimumOrder = document.getElementById("newGatewayMinimumOrder");
    //var newGatewayFeeType = document.getElementById("newGatewayFeeType");
    //var newGatewayFeeAmount = document.getElementById("newGatewayFeeAmount");
    //var newGatewaynotice = document.getElementById("newGatewaynotice");
    //var EnableNewGateway = document.getElementById("EnableNewGateway");

    //if (newGatewayType.value.trim() == "") {
    //    toastr.error("Please enter gateway type");
    //    el.disabled = false;
    //    return false;
    //}

    //if (newGatewayName.value.trim() == "") {
    //    toastr.error("Please enter gateway name");
    //    el.disabled = false;
    //    return false;
    //}

    //if (newGatewayMinimumOrder.value.trim() == "") {
    //    toastr.error("Please enter gateway minimum order");
    //    el.disabled = false;
    //    return false;
    //}

    //if (newGatewayFeeType.value.trim() == "") {
    //    toastr.error("Please enter gateway fee type");
    //    el.disabled = false;
    //    return false;
    //}

    //if (newGatewayFeeAmount.value.trim() == "") {
    //    toastr.error("Please enter gateway fee amount");
    //    el.disabled = false;
    //    return false;
    //}

    //if (newGatewaynotice.value.trim() == "") {
    //    toastr.error("Please enter gateway notice");
    //    el.disabled = false;
    //    return false;
    //}

    //if (EnableNewGateway.value.trim() == "") {
    //    toastr.error("Please enter enable option");
    //    el.disabled = false;
    //    return false;
    //}

    //el.disabled = false;
    __doPostBack(id, '');
}

var newGatewayModal = new bootstrap.Modal(document.getElementById("newGatewayModal"), {});

function openGatewayTabAndModal() {
    document.getElementById("paymentGatewayBtnTab").click();
    newGatewayModal.show();
}