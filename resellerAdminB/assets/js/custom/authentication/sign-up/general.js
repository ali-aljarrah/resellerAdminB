$('#fullName').keyup(function () {
    var regex = /^[a-zA-Z_ ]+$/;
    if (!regex.test($(this).val())) {
        $(this).val('');
    }
});

$('#email').keyup(function () {
    var regex = /^[0123456789a-zA-Z_ @.-]+$/;
    if (!regex.test($(this).val())) {
        //$(this).val('');
    }
});

"use strict";
var KTSignupGeneral = (function () {
    var e,
        t,
        a,
        r,
        s = function () {
            return 100 === r.getScore();
        };
    return {
        init: function () {
            (e = document.querySelector("#sign_up_form")),
                (t = document.querySelector("#sign_up_submit")),
                //(r = KTPasswordMeter.getInstance(e.querySelector('[data-kt-password-meter="true"]'))),
                (a = FormValidation.formValidation(e, {
                    fields: {
                        "fullName": { validators: { regexp: { regexp: /^[a-zA-Z_ ]+$/, message: "Only English letters are allowed" }, notEmpty: { message: "Full Name is required" } } },

                        email: { validators: { regexp: { regexp: /^[^\s@]+@[^\s@]+\.[^\s@]+$/, message: "The value is not a valid email address" }, notEmpty: { message: "Email address is required" } } },

                        toc: { validators: { notEmpty: { message: "You must accept the terms and conditions" } } },
                    },
                    plugins: { trigger: new FormValidation.plugins.Trigger({ event: { password: !1 } }), bootstrap: new FormValidation.plugins.Bootstrap5({ rowSelector: ".fv-row", eleInvalidClass: "", eleValidClass: "" }) },
                })),
                t.addEventListener("click", function (s) {
                    s.preventDefault(),

                        a.validate().then(function (a) {
                            "Valid" == a

                                ? grecaptcha.execute()
                                : Swal.fire({
                                    text: "Oops! It seems like there are some issues with the registration form you submitted. Please try again.",
                                    icon: "error",
                                    buttonsStyling: !1,
                                    confirmButtonText: "Ok",
                                    customClass: { confirmButton: "btn btn-primary" },
                                });
                        });
                }),
                e.querySelector('input[name="email"]').addEventListener("input", function () {

                });
        },
    };
})();
KTUtil.onDOMContentLoaded(function () {
    KTSignupGeneral.init();
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