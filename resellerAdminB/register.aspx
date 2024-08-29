<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="resellerAdminB.register" %>


<%@ Register Src="~/Controls/loader.ascx" TagPrefix="uc1" TagName="loader" %>

<!DOCTYPE html>
<html lang="en">
<!--begin::Head-->
<head>
    <style>
    .loader,.loader.show{transition:.4s ease-in-out}.loader{position:fixed;left:0;right:0;top:0;bottom:0;background:#fff;opacity:0;visibility:hidden;display:flex;justify-content:center;align-items:center}.loader.show{z-index:999;opacity:1;visibility:visible}.loader-icon{width:48px;height:48px;border-radius:50%;display:inline-block;position:relative;border:10px solid;border-color:rgba(133,133,133,.15) rgba(133,133,133,.25) rgba(133,133,133,.35) rgba(133,133,133,.5);box-sizing:border-box;animation:1s linear infinite rotation}@keyframes rotation{0%{transform:rotate(0)}100%{transform:rotate(360deg)}} 
    </style>
    <title>Reseller - Register</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!--begin::Fonts(mandatory for all pages)-->
    <link rel="stylesheet" href="/assets/css/font.css" />
    <!--end::Fonts-->
    <!--begin::Vendor Stylesheets(used for this page only)-->
    <link href="/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
    <!--end::Vendor Stylesheets-->
    <!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
    <link href="/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
    <link href="/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
     <!--end::Global Stylesheets Bundle-->
    <link rel="stylesheet" href="/assets/css/custom.css" />
    <script>// Frame-busting to prevent site from being loaded within a frame without permission (click-jacking) if (window.top != window.self) { window.top.location.replace(window.self.location.href); }</script>
      <!--begin::Javascript-->
      <!--begin::Global Javascript Bundle(mandatory for all pages)-->
      <script src="https://www.google.com/recaptcha/api.js" async defer></script>
      <script src="/assets/plugins/global/plugins.bundle.js"></script>
      <script src="/assets/js/scripts.bundle.js"></script>
      <!--end::Global Javascript Bundle-->
      <!--begin::Custom Javascript(used for this page only)-->
      <script src="/assets/js/custom/authentication/sign-up/general.js"></script>
      <script src="/assets/js/main.js"></script>
      <!--end::Custom Javascript-->
      <!--end::Javascript-->
</head>
<!--end::Head-->
<!--begin::Body-->
<body id="kt_body" data-kt-app-header-fixed="true" data-kt-app-header-fixed-mobile="true" data-kt-app-sidebar-enabled="true" data-kt-app-sidebar-fixed="true" data-kt-app-sidebar-push-toolbar="true" data-kt-app-sidebar-push-footer="true" class="app-default">
    <uc1:loader runat="server" ID="loader" />
    <!--begin::Theme mode setup on page load-->
     <script>
         var defaultThemeMode = "light"; var themeMode; if (document.documentElement) { if (document.documentElement.hasAttribute("data-bs-theme-mode")) { themeMode = document.documentElement.getAttribute("data-bs-theme-mode"); } else { if (localStorage.getItem("data-bs-theme") !== null) { themeMode = localStorage.getItem("data-bs-theme"); } else { themeMode = defaultThemeMode; } } if (themeMode === "system") { themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light"; } document.documentElement.setAttribute("data-bs-theme", themeMode); }
         var onSubmit = function (token) {
             t = document.querySelector("#sign_up_submit");
             (t.disabled = !0);

             __doPostBack("sign_up_submit", '');
         };
     </script>
    <!--end::Theme mode setup on page load-->
    <!--begin::Root-->
    <div class="d-flex flex-column flex-root" id="kt_app_root">
        <!--begin::Authentication - Sign-in -->
        <div class="d-flex flex-column flex-lg-row flex-column-fluid">
            <!--begin::Body-->
            <div class="d-flex flex-column flex-lg-row-fluid w-lg-50 p-10 order-2 order-lg-1">
                <!--begin::Form-->
                <div class="d-flex flex-center flex-column flex-lg-row-fluid">
                    <!--begin::Wrapper-->
                    <div class="w-lg-500px p-10">
                        <form method="post" action="/register.aspx" runat="server" class="form w-100 fv-plugins-bootstrap5 fv-plugins-framework" novalidate="novalidate" id="sign_up_form" name="sign_up_form">
                            <!--begin::List widget 10-->
                            <div class="card card-flush shadow-xs">
                                <!--begin::Header-->
                                <div class="card-header d-block pt-7">
                                    <!--begin::Title-->
                                    <h3 class="card-title card-label fs-32 fw-bold color-black-1">Create account
                                    </h3>
                                    <!--end::Title-->
                                    <p class="color-neutral-grey mt-3 fs-14">
                                        Use at least 10 characters long and include letters, numbers, and special characters.
                                    </p>
                                </div>
                                <!--end::Header-->
                                <!--begin::Body-->
                                <div class="card-body">
                                    <input type="hidden" value="{EEB7D881-37BA-4066-A98E-6F9C55D11AEC}" name="roken">
                                    <input type="hidden" value="1da8810186435fedecd66694940d2d0bd2636fa737750f5f36518d43e32030e5||undefined" name="fpuser" id="fpuser">
                                    <input type="hidden" value="1da8810186435fedecd66694940d2d0bd2636fa737750f5f36518d43e32030e5" name="fpuser_id" id="fpuser_id">
                                    <input type="hidden" value="" name="fpuser_ip" id="fpuser_ip">


                                    <!--begin::Input group=-->
                                    <div class="fv-row mb-8 fv-plugins-icon-container">
                                        <!--begin::Email-->
                                        <label for="email" class="form-label fs-14 dark-color required">Email</label>
                                        <input type="email" placeholder="Email Address" aria-invalid="true" name="email" id="email" runat="server" autocomplete="email" class="form-control form-custom-input">
                                        <!--end::Email-->
                                        <div class="fv-plugins-message-container invalid-feedback"></div>
                                    </div>
                                    <!--begin::Input group-->
                                    <div class="fv-row mb-8 fv-plugins-icon-container">
                                        <!--begin::Full name-->
                                        <label for="fullName" class="form-label fs-14 dark-color required">Full name</label>
                                        <input type="text" placeholder="Full Name English Only" id="fullName" name="fullName" runat="server" autocomplete="off" class="form-control form-custom-input">
                                        <!--end::Full name-->
                                        <div class="fv-plugins-message-container invalid-feedback"></div>
                                    </div>
                                    <!--begin::Input group-->

                                    <!--end::Input group=-->
                                    <!--begin::Accept-->
                                    <div class="fv-row mb-8 fv-plugins-icon-container">
                                        <label class="form-check form-check-inline">
                                            <input class="form-check-input" type="checkbox" name="toc" id="toc" value="1" runat="server">
                                            <span class="form-check-label fw-semibold text-gray-700 fs-base ms-1">I Accept the
                                                    <a href="#" target="_blank" rel="noopener" class="link-primary">terms of use</a></span>
                                        </label>
                                        <div class="fv-plugins-message-container invalid-feedback"></div>
                                    </div>
                                    <!--end::Accept-->
                                    <div>
                                        <div id="recaptcha" class="g-recaptcha " style="position: fixed; bottom: 0; right: 0; z-index: 9;" data-badge="bottomright" data-style="bottomright" data-sitekey="6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI" data-callback="onSubmit" data-size="invisible"></div>
                                    </div>
                                    <!--begin::Submit button-->
                                    <div class="d-grid mb-10">
                                        <asp:Button ID="sign_up_submit" runat="server" Text="Sign up"
                                            CssClass="btn btn-grad-1 py-2 px-8 rounded-3"
                                            OnClientClick="return false;" OnClick="sign_up_submit_Click" />
                                    </div>
                                    <!--end::Submit button-->
                                    <!--begin::Sign up-->
                                    <div class="text-gray-500 text-center fs-14">
                                        <a href="/login.aspx" class="link-primary text-decoration-underline">Already have an account?</a>
                                    </div>
                                    <!--end::Sign up-->
                                </div>
                                <!--end: Card Body-->
                            </div>
                            <!--end::List widget 10-->
                            <!--begin::Input group=-->
                            <asp:ScriptManager ID="ScriptManager1" runat="server" />
                        </form>
                    </div>
                    <!--end::Wrapper-->
                </div>
            </div>
            <!--end::Body-->
            <!--begin::Aside-->
            <div class="d-flex flex-lg-row-fluid w-lg-50 bg-gradient order-1 order-lg-2">
                <!--begin::Content-->
                <div class="d-flex justify-content-center align-items-center flex-column py-7 py-lg-15 px-5 px-lg-20 w-100">
                    <div class="px-lg-20 px-5">
                        <div>
                            <img class="img-fluid" width="580" height="431" loading="lazy" src="assets/img/Rectangle4.webp" alt="Login image" />
                        </div>
                        <!--begin::Title-->
                        <h1 class="d-none d-lg-block text-white fw-bolder fs-40 mb-7">
                            <span class="text-btn-grad">Earn big</span> by sharing small.
                        </h1>
                        <!--end::Title-->
                        <!--begin::Text-->
                        <div class="d-none d-lg-block text-white fs-16">
                            Earn additional revenue by buying and then reselling SMS credits to their customers. A reseller buys SMS credits in bulk and sells them in smaller batches to their customers.
                        </div>
                        <!--end::Text-->
                    </div>
                </div>
                <!--end::Content-->
            </div>
            <!--end::Aside-->
        </div>
        <!--end::Authentication - Sign-in-->
    </div>
    <!--end::Root-->
  
</body>
<!--end::Body-->
</html>
