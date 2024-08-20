"use strict";
var KTSigninGeneral = (function () {
    var e, t, i;
    return {
        init: function () {
            (e = document.querySelector("#sign_in_form")),
                (t = document.querySelector("#sign_in_submit")),
                (i = FormValidation.formValidation(e, {
                    fields: {
                        email: { validators: { notEmpty: { message: "Username or Email address is required" } } },
                        password: { validators: { notEmpty: { message: "The password is required" } } },
                    },
                    plugins: { trigger: new FormValidation.plugins.Trigger(), bootstrap: new FormValidation.plugins.Bootstrap5({ rowSelector: ".fv-row", eleInvalidClass: "", eleValidClass: "" }) },
                })),
                t.addEventListener("click", function (n) {
                    n.preventDefault(),
                        i.validate().then(function (i) {
                            "Valid" == i

                                ? grecaptcha.execute()

                                : Swal.fire({
                                    text: "Oops! It seems like there are some issues with the login form you submitted. Please try again.",
                                    icon: "error",
                                    buttonsStyling: !1,
                                    confirmButtonText: "Ok",
                                    customClass: { confirmButton: "btn btn-primary" },
                                });
                        });
                });
        },
    };
})();
KTUtil.onDOMContentLoaded(function () {
    KTSigninGeneral.init();
});

function showMessage(type, message) {
    if (type == 'success') {
        return Swal.fire({
            text: message,
            icon: "success",
            buttonsStyling: !1,
            confirmButtonText: "Ok",
            customClass: { confirmButton: "btn btn-primary" },
        });
    }

    if (type == "error") {
        return Swal.fire({
            text: message,
            icon: "error",
            buttonsStyling: !1,
            confirmButtonText: "Ok",
            customClass: { confirmButton: "btn btn-primary" },
        });
    }
}