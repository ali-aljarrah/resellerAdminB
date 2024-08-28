<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="general-settings.aspx.cs" Inherits="resellerAdminB.general_settings" %>


<%@ Register Src="~/Controls/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>
<%@ Register Src="~/Controls/FooterLinks.ascx" TagPrefix="uc1" TagName="FooterLinks" %>
<%@ Register Src="~/Controls/Head.ascx" TagPrefix="uc1" TagName="Head" %>
<%@ Register Src="~/Controls/Loader.ascx" TagPrefix="uc1" TagName="Loader" %>
<%@ Register Src="~/Controls/MenuTop.ascx" TagPrefix="uc1" TagName="MenuTop" %>
<%@ Register Src="~/Controls/SideBar.ascx" TagPrefix="uc1" TagName="SideBar" %>

<uc1:Head runat="server" ID="Head" />
<title>Reseller Admin - Dashboard</title>
</head>
<!--end::Head-->
<!--begin::Body-->
<body id="kt_app_body" data-kt-app-header-fixed="true" data-kt-app-sidebar-enabled="true" data-kt-app-sidebar-fixed="true" data-kt-app-sidebar-hoverable="true" data-kt-app-sidebar-push-header="true" data-kt-app-sidebar-push-toolbar="true" data-kt-app-sidebar-push-footer="true" data-kt-app-toolbar-enabled="true" class="app-default">
     <form class="d-flex flex-fill" action="#" name="frmSettings" id="frmSettings" runat="server">
        <uc1:Loader runat="server" ID="Loader" />
        <!--begin::Theme mode setup on page load-->
        <script>
            var defaultThemeMode = "light"; var themeMode; if (document.documentElement) { if (document.documentElement.hasAttribute("data-bs-theme-mode")) { themeMode = document.documentElement.getAttribute("data-bs-theme-mode"); } else { if (localStorage.getItem("data-bs-theme") !== null) { themeMode = localStorage.getItem("data-bs-theme"); } else { themeMode = defaultThemeMode; } } if (themeMode === "system") { themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light"; } document.documentElement.setAttribute("data-bs-theme", themeMode); }
        </script>
        <!--end::Theme mode setup on page load-->
        <!--begin::App-->
        <div class="d-flex flex-column flex-root app-root" id="kt_app_root">
            <!--begin::Page-->
            <div class="app-page flex-column flex-column-fluid" id="kt_app_page">
                <!--begin::Header-->
                <uc1:MenuTop runat="server" ID="MenuTop" parentPageText="Dashboard" childPageText="General Settings" />
                <!--end::Header-->
                <!--begin::Wrapper-->
                <div class="app-wrapper flex-column flex-row-fluid" id="kt_app_wrapper">
                    <!--begin::Sidebar-->
                    <uc1:SideBar runat="server" ID="SideBar" />
                    <!--end::Sidebar-->
                    <!--begin::Main-->
                    <div class="app-main flex-column flex-row-fluid" id="kt_app_main">
                        <!--begin::Content wrapper-->
                        <div class="d-flex flex-column flex-column-fluid">

                            <!--begin::Content-->
                            <div id="kt_app_content" class="app-content flex-column d-flex flex-grow-1 justify-content-between">
                                <!--begin::Content container-->
                                <div id="kt_app_content_container" class="app-container container-fluid">
								<!--begin::Row-->
                                    <div class="row">
                                        <!--begin::Col-->
                                        <div class="col-md-12 mb-md-0 mb-5 mt-5">
                                            <!--begin::Card widget 4-->
                                            <div >
                                                <!--begin::Card body-->
                                                <div>
                                                    <ul class="nav nav-tabs nav-line-tabs nav-line-tabs-2x fs-6">
                                                        <li class="nav-item">
                                                            <a class="nav-link py-3 px-5 fs-16 active" data-bs-toggle="tab" href="#business_details_tab">Business Details</a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a id="paymentGatewayBtnTab" class="nav-link py-3 px-5 fs-16" data-bs-toggle="tab" href="#payment_gateway_tab">Payment Gateway</a>
                                                        </li>
                                                    </ul>

                                                    <div class="tab-content" id="myTabContent">
                                                        <div class="tab-pane fade show active" id="business_details_tab" role="tabpanel">
                                                            <div class="row">
                                                                <div class="col-md-8">
                                                                    <!-- start branding details section -->
                                                                    <div class="card shadow-xs p-8 d-flex my-5">
                                                                        <!--begin::Page title-->
                                                                        <div class="page-title d-flex flex-column justify-content-center gap-1">
                                                                            <!--begin::Title-->
                                                                            <h1 class="page-heading d-flex flex-column justify-content-center text-dark fw-bold my-5">Branding & Details</h1>
                                                                            <!--end::Title-->
                                                                        </div>
                                                                        <!--end::Page title-->
                                                                        <div>
                                                                            <div class="row my-4">
                                                                                <div class="col-lg-6">
                                                                                    <div class="my-5">
                                                                                        <label for="businessName" class="form-label required mb-0">Business name</label>
                                                                                        <input runat="server" class="form-control form-custom-input " value="Tesla X Inc." type="text" name="businessName" id="businessName" placeholder="Enter your business name">
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-lg-6">
                                                                                    <div class="my-5">
                                                                                        <label for="supportEmail" class="form-label required mb-0">Support email</label>
                                                                                        <input runat="server" class="form-control form-custom-input " value="alexflynch@gmail.com" type="email" name="supportEmail" id="supportEmail" placeholder="Enter business support email">
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-lg-6">
                                                                                    <div class="my-5">
                                                                                        <label for="defaultSenderID" class="form-label required mb-0">Default sender ID</label>
                                                                                        <input runat="server" class="form-control form-custom-input " value="TeslaX" type="text" name="defaultSenderID" id="defaultSenderID" placeholder="Your default sender ID">
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-lg-6">
                                                                                    <div class="my-5">
                                                                                        <label for="businessAddress" class="form-label required mb-0">Business address</label>
                                                                                        <input runat="server" class="form-control form-custom-input " value="Office K-420-69, 69th floor, Wayne Enterprise, Gotham" type="text" name="businessAddress" id="businessAddress" placeholder="Your business address">
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-lg-6">
                                                                                    <div class="my-5">
                                                                                        <label for="businessWebsite" class="form-label required mb-0">Website</label>
                                                                                        <input runat="server" class="form-control form-custom-input " value="www.teslax.com" type="text" name="businessWebsite" id="businessWebsite" placeholder="Your business website">
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-lg-6">
                                                                                    <div class="my-5">
                                                                                        <label for="resellerDomain" class="form-label required mb-0">Reseller domain</label>
                                                                                        <input runat="server" class="form-control form-custom-input " value="teslaxx.com" type="text" name="resellerDomain" id="resellerDomain" placeholder="Your business reseller domain">
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-lg-6">
                                                                                    <div class="my-5">
                                                                                        <label for="businessSignature" class="form-label required mb-0">Signature</label>
                                                                                        <input runat="server" name="businessSignature" id="businessSignature" type="file" accept="image/*" class="form-control form-custom-input ">
                                                                                    </div>
                                                                                    <div class="my-5">
                                                                                        <label for="" class="form-label">Signature</label>
                                                                                        <div class="w-150px h-150px bg-gray-200"></div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-lg-6">
                                                                                    <div class="my-5">
                                                                                        <label for="businessLogo" class="form-label required mb-0">Logo</label>
                                                                                        <input runat="server" name="businessLogo" id="businessLogo" type="file" accept="image/*" class="form-control form-custom-input ">
                                                                                    </div>
                                                                                    <div class="my-5">
                                                                                        <label for="" class="form-label">Logo</label>
                                                                                        <div class="w-150px h-150px bg-gray-200"></div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <asp:Button ID="editBusinissSubmitBtn" runat="server" Text="Edit business details"
                                                                                CssClass="btn btn-primary btn-grad py-2 px-8 rounded-1 m-0"
                                                                                OnClientClick="editBusinessSubmit('editBusinissSubmitBtn'); return false;" OnClick="editBusinissSubmitBtn_Click" />
                                                                        </div>
                                                                        <!-- end branding details section -->
                                                                        <!--begin::Menu separator-->
                                                                        <div class="separator my-8 py-5"></div>
                                                                        <!--end::Menu separator-->
                                                                        <!-- start other settings section -->
                                                                        <!--begin::Page title-->
                                                                        <div class="page-title d-flex flex-column justify-content-center gap-1">
                                                                            <!--begin::Title-->
                                                                            <h1 class="page-heading d-flex flex-column justify-content-center text-dark fw-bold my-5">Other Settings</h1>
                                                                            <!--end::Title-->
                                                                        </div>
                                                                        <!--end::Page title-->
                                                                        <div>
                                                                            <div class="row my-4">
                                                                                <div class="col-lg-6">
                                                                                    <div class="my-5">
                                                                                        <label for="billingModel" class="form-label mb-0">Default billing model</label>
                                                                                        <select name="billingModel" id="billingModel" runat="server" class="form-select form-custom-select ">
                                                                                            <option value="">Select...</option>
                                                                                            <option value="SMSCreditModel">SMS Credit Model</option>
                                                                                        </select>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-lg-6">
                                                                                    <div class="my-5">
                                                                                        <label for="hideRegistrationForm" class="form-label mb-0">Hide registration form</label>
                                                                                        <select runat="server" name="hideRegistrationForm" id="hideRegistrationForm" class="form-select form-custom-select ">
                                                                                            <option value="no" selected>No</option>
                                                                                            <option value="yes">Yes</option>
                                                                                        </select>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-lg-6">
                                                                                    <div class="my-5">
                                                                                        <label for="enableEmailVerification" class="form-label mb-0">Enable email verification</label>
                                                                                        <select runat="server" name="enableEmailVerification" id="enableEmailVerification" class="form-select form-custom-select ">
                                                                                            <option value="no" selected>No</option>
                                                                                            <option value="yes">Yes</option>
                                                                                        </select>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-lg-6">
                                                                                    <div class="my-5">
                                                                                        <label for="enablePhoneVerification" class="form-label mb-0">Enable phone verification</label>
                                                                                        <select runat="server" name="enablePhoneVerification" id="enablePhoneVerification" class="form-select form-custom-select ">
                                                                                            <option value="no" selected>No</option>
                                                                                            <option value="yes">Yes</option>
                                                                                        </select>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-lg-6">
                                                                                    <div class="my-5">
                                                                                        <label for="googleReCaptchaKey" class="form-label mb-0">Google reCaptcha key</label>
                                                                                        <input class="form-control form-custom-input " value="" type="text" name="googleReCaptchaKey" id="googleReCaptchaKey" runat="server" placeholder="Leave empty to disable feature">
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-lg-6">
                                                                                    <div class="my-5">
                                                                                        <label for="googleReCaptchaSecret" class="form-label mb-0">Google reCaptcha secret</label>
                                                                                        <input class="form-control form-custom-input " value="" type="text" name="googleReCaptchaSecret" id="googleReCaptchaSecret" runat="server" placeholder="Leave empty to disable feature">
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-lg-6">
                                                                                    <div class="my-5">
                                                                                        <label for="disableFundingByCreditPurchases" class="form-label mb-0">Disable funding by credit purchases</label>
                                                                                        <select name="disableFundingByCreditPurchases" id="disableFundingByCreditPurchases" runat="server" class="form-select form-custom-select ">
                                                                                            <option value="no" selected>No</option>
                                                                                            <option value="yes">Yes</option>
                                                                                        </select>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-lg-6">
                                                                                    <div class="my-5">
                                                                                        <label for="sendCustomersToWebsiteAfterLogout" class="form-label mb-0">Send customers to website after logout</label>
                                                                                        <select runat="server" name="sendCustomersToWebsiteAfterLogout" id="sendCustomersToWebsiteAfterLogout" class="form-select form-custom-select ">
                                                                                            <option value="no" selected>No</option>
                                                                                            <option value="yes">Yes</option>
                                                                                        </select>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-lg-6">
                                                                                    <div class="my-5">
                                                                                        <label for="invoiceTax" class="form-label mb-0">Invoice Tax (%)</label>
                                                                                        <input class="form-control form-custom-input " value="" type="number" runat="server" name="invoiceTax" id="invoiceTax" placeholder="Set to zero to disable feature">
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-lg-6">
                                                                                    <div class="my-5">
                                                                                        <label for="invoiceVat" class="form-label mb-0">Invoice VAT (%)</label>
                                                                                        <input class="form-control form-custom-input " value="" type="number" name="invoiceVat" id="invoiceVat" runat="server" placeholder="Set to zero to disable feature">
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div>
                                                                                <asp:Button ID="otherSettingsSubmitBtn" runat="server" Text="Save settings"
                                                                                    CssClass="btn btn-primary btn-grad py-2 px-8 rounded-1 m-0"
                                                                                    OnClientClick="otherSettingsSubmit('otherSettingsSubmitBtn'); return false;" OnClick="otherSettingsSubmitBtn_Click" />

                                                                            </div>
                                                                        </div>
                                                                        <!-- end other settings section -->
                                                                        <!--begin::Menu separator-->
                                                                        <div class="separator my-8"></div>
                                                                        <!--end::Menu separator-->
                                                                        <!-- start Outgoing Email Settings section -->
                                                                        <!--begin::Page title-->
                                                                        <div class="page-title d-flex flex-column justify-content-center gap-1">
                                                                            <!--begin::Title-->
                                                                            <h1 class="page-heading d-flex flex-column justify-content-center text-dark fw-bold m-1">Outgoing Email Settings</h1>
                                                                            <!--end::Title-->
                                                                        </div>
                                                                        <!--end::Page title-->
                                                                        <div>
                                                                            <div class="row my-4">
                                                                                <div class="col-lg-6">
                                                                                    <div class="mb-5">
                                                                                        <label for="smtpServer" class="form-label mb-0">SMTP server</label>
                                                                                        <input class="form-control form-custom-input " value="" type="text" name="smtpServer" id="smtpServer" runat="server" placeholder="Leave empty to disable feature">
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-lg-6">
                                                                                    <div class="mb-5">
                                                                                        <label for="smtpUsername" class="form-label mb-0">SMTP username</label>
                                                                                        <input class="form-control form-custom-input " value="" type="text" name="smtpUsername" id="smtpUsername" runat="server" placeholder="Leave empty to disable feature">
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-lg-6">
                                                                                    <div class="mb-5">
                                                                                        <label for="smtpPassword" class="form-label mb-0">SMTP password</label>
                                                                                        <input class="form-control form-custom-input " value="" type="text" name="smtpPassword" id="smtpPassword" runat="server" placeholder="Leave empty to disable feature">
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-lg-6">
                                                                                    <div class="mb-5">
                                                                                        <label for="smtpPort" class="form-label mb-0">SMTP port</label>
                                                                                        <input class="form-control form-custom-input " value="" type="number" name="smtpPort" id="smtpPort" runat="server" placeholder="Leave empty to disable feature">
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-lg-6">
                                                                                    <div class="mb-5">
                                                                                        <label for="smtpSecurity" class="form-label mb-0">SMTP security</label>
                                                                                        <select name="smtpSecurity" id="smtpSecurity" runat="server" class="form-select form-custom-select">
                                                                                            <option value="no" selected>No</option>
                                                                                            <option value="yes">Yes</option>
                                                                                        </select>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div>
                                                                                <asp:Button ID="outgoingEmailSettingsSubmitBtn" runat="server" Text="Save settings"
                                                                                  CssClass="btn btn-primary btn-grad py-2 px-8 rounded-1 m-0"
                                                                                  OnClientClick="emailSettingsSubmit('outgoingEmailSettingsSubmitBtn'); return false;" OnClick="outgoingEmailSettingsSubmitBtn_Click" />
                                                                            </div>
                                                                        </div>
                                                                        <!-- end Outgoing Email Settings section -->
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-4 mb-md-0 mb-5">
                                                                    <div class="custom-border-left h-100 mt-10 mt-md-0">
                                                                        <div class="p-5">
                                                                            <div class="mb-6 px-5">
                                                                                <div class="card shadow-xs p-8 d-flex">
                                                                                    <p class="fs-18 fw-600 dark-color mb-5 pt-3">
                                                                                        Signature Upload Guidelines
                                                                                    </p>
                                                                                    <p class="fs-14 dark-color mt-5 mb-5 pb-5">
                                                                                        Your signature is an important part of your business . Follow the requirements below to ensure it fits properly.
                                                                                    </p>
                                                                                    <ul>
                                                                                        <li class="fs-14 dark-color mb-4">Format: JPG, GIF, PNG, WEPB or SVG
                                                                                        </li>
                                                                                        <li class="fs-14 dark-color mb-4">Maximum size: 2MB; Ideal size: at least 160 x 80 pixels
                                                                                        </li>
                                                                                    </ul>
                                                                                </div>
                                                                            </div>
                                                                            <div class="mb-6 p-5">
                                                                                <div class="card shadow-xs p-8 d-flex">
                                                                                    <p class="fs-18 fw-600 dark-color mb-5 pt-3">
                                                                                        Logo Upload Guidelines
                                                                                    </p>
                                                                                    <p class="fs-14 dark-color my-5 pb-5">
                                                                                        Your brand or service logo must follow the requirements below to ensure it fits properly in the designated area.
                                                                                    </p>
                                                                                    <ul>
                                                                                        <li class="fs-14 dark-color mb-4">Format: JPG, GIF, PNG, WEPB or SVG
                                                                                        </li>
                                                                                        <li class="fs-14 dark-color mb-4">Maximum size: 2MB; Ideal size: at least 200 x 40 pixels
                                                                                        </li>
                                                                                    </ul>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="tab-pane fade" id="payment_gateway_tab" role="tabpanel">
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="card shadow-xs p-8 d-flex my-5">
                                                                        <!--begin::Accordion-->
                                                                        <!--begin::Item-->
                                                                        <div class="mb-5">
                                                                            <div class="d-flex justify-content-between align-items-start flex-column flex-md-row">
                                                                                <!--begin::Page title-->
                                                                                <div class="page-title d-flex flex-column justify-content-center gap-1 mb-5 mb-md-0">
                                                                                    <!--begin::Title-->
                                                                                    <h1 class="page-heading d-flex flex-column justify-content-center text-dark fw-bold my-5">Payment Gateway</h1>
                                                                                    <p class="fs-14 gray">
                                                                                        View and manage your payment gateway.
                                                                                    </p>
                                                                                    <!--end::Title-->
                                                                                </div>
                                                                                <!--end::Page title-->
                                                                                <!--begin::Header-->
                                                                                <button type="button" class="btn btn-primary btn-grad" id="btn-modal-popup" data-bs-toggle="modal" data-bs-target="#newGatewayModal">
                                                                                    Add Payment Gateway
                                                                                </button>
                                                                                <!--end::Header-->
                                                                            </div>
                                                                        </div>
                                                                        <!--end::Item-->
                                                                        <!--end::Accordion-->
                                                                        <div class="table-responsive mt-8">
                                                                            <table id="sent-sms-report" class="table custom-table table-bordered table-row-gray-300 gy-5 datatable">

                                                                                <thead>
                                                                                    <tr class="fs-14 fw-600">
                                                                                        <th class="white-color">Title</th>
                                                                                        <th class="white-color">Type</th>
                                                                                        <th class="white-color">Status</th>
                                                                                        <th class="white-color"></th>
                                                                                    </tr>
                                                                                </thead>
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td>BB</td>
                                                                                        <td>Custom</td>
                                                                                        <td>
                                                                                            <span class="text-success">Enabled
                                                                                            </span>
                                                                                        </td>
                                                                                        <td class="text-end">
                                                                                            <div class="d-flex justify-content-center align-items-center">
                                                                                                <a class="edit-gateway me-5 action-btn" href="/edit-gateway.aspx" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit gateway">
                                                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                                                                                        <path d="M11.6663 5.00004L13.5772 3.0892C13.7334 2.93298 13.9454 2.84521 14.1663 2.84521C14.3873 2.84521 14.5992 2.93298 14.7555 3.0892L16.9105 5.2442C17.0667 5.40048 17.1545 5.6124 17.1545 5.83337C17.1545 6.05434 17.0667 6.26626 16.9105 6.42254L14.9997 8.33337M11.6663 5.00004L3.57717 13.0892C3.42088 13.2454 3.33306 13.4574 3.33301 13.6784V15.8334C3.33301 16.0544 3.42081 16.2663 3.57709 16.4226C3.73337 16.5789 3.94533 16.6667 4.16634 16.6667H6.32134C6.54234 16.6667 6.75426 16.5788 6.91051 16.4225L14.9997 8.33337M11.6663 5.00004L14.9997 8.33337" stroke="#121212" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                                                                                    </svg>
                                                                                                </a>
                                                                                                <a class="delete-gateway action-btn" href="#" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete gateway" onclick="confirmDelete('127');">
                                                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                                                                                        <path d="M8.33366 4.16667H11.667C11.667 3.72464 11.4914 3.30072 11.1788 2.98816C10.8663 2.67559 10.4424 2.5 10.0003 2.5C9.5583 2.5 9.13438 2.67559 8.82182 2.98816C8.50925 3.30072 8.33366 3.72464 8.33366 4.16667ZM7.08366 4.16667C7.08366 3.78364 7.1591 3.40437 7.30568 3.05051C7.45225 2.69664 7.66709 2.37511 7.93793 2.10427C8.20877 1.83343 8.5303 1.61859 8.88417 1.47202C9.23803 1.32544 9.6173 1.25 10.0003 1.25C10.3833 1.25 10.7626 1.32544 11.1165 1.47202C11.4704 1.61859 11.7919 1.83343 12.0627 2.10427C12.3336 2.37511 12.5484 2.69664 12.695 3.05051C12.8416 3.40437 12.917 3.78364 12.917 4.16667H17.7087C17.8744 4.16667 18.0334 4.23251 18.1506 4.34973C18.2678 4.46694 18.3337 4.62591 18.3337 4.79167C18.3337 4.95743 18.2678 5.1164 18.1506 5.23361C18.0334 5.35082 17.8744 5.41667 17.7087 5.41667H16.6087L15.6337 15.5092C15.5589 16.2825 15.1987 17.0002 14.6234 17.5224C14.0481 18.0445 13.2989 18.3336 12.522 18.3333H7.47866C6.70188 18.3334 5.95291 18.0442 5.37778 17.5221C4.80266 16.9999 4.4426 16.2823 4.36783 15.5092L3.39199 5.41667H2.29199C2.12623 5.41667 1.96726 5.35082 1.85005 5.23361C1.73284 5.1164 1.66699 4.95743 1.66699 4.79167C1.66699 4.62591 1.73284 4.46694 1.85005 4.34973C1.96726 4.23251 2.12623 4.16667 2.29199 4.16667H7.08366ZM8.75033 8.125C8.75033 7.95924 8.68448 7.80027 8.56727 7.68306C8.45006 7.56585 8.29109 7.5 8.12533 7.5C7.95957 7.5 7.80059 7.56585 7.68338 7.68306C7.56617 7.80027 7.50033 7.95924 7.50033 8.125V14.375C7.50033 14.5408 7.56617 14.6997 7.68338 14.8169C7.80059 14.9342 7.95957 15 8.12533 15C8.29109 15 8.45006 14.9342 8.56727 14.8169C8.68448 14.6997 8.75033 14.5408 8.75033 14.375V8.125ZM11.8753 7.5C12.0411 7.5 12.2001 7.56585 12.3173 7.68306C12.4345 7.80027 12.5003 7.95924 12.5003 8.125V14.375C12.5003 14.5408 12.4345 14.6997 12.3173 14.8169C12.2001 14.9342 12.0411 15 11.8753 15C11.7096 15 11.5506 14.9342 11.4334 14.8169C11.3162 14.6997 11.2503 14.5408 11.2503 14.375V8.125C11.2503 7.95924 11.3162 7.80027 11.4334 7.68306C11.5506 7.56585 11.7096 7.5 11.8753 7.5ZM5.61199 15.3892C5.65694 15.853 5.87303 16.2835 6.21813 16.5968C6.56324 16.91 7.01261 17.0834 7.47866 17.0833H12.522C12.988 17.0834 13.4374 16.91 13.7825 16.5968C14.1276 16.2835 14.3437 15.853 14.3887 15.3892L15.3537 5.41667H4.64699L5.61199 15.3892Z" fill="#121212" />
                                                                                                    </svg>
                                                                                                </a>
                                                                                            </div>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>Funda SMS</td>
                                                                                        <td>Paystack</td>
                                                                                        <td>
                                                                                            <span class="text-success">Enabled
                                                                                            </span>
                                                                                        </td>
                                                                                        <td class="text-end">
                                                                                            <div class="d-flex justify-content-center align-items-center">
                                                                                                <a class="edit-gateway me-5 action-btn" href="/edit-gateway.aspx" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit gateway">
                                                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                                                                                        <path d="M11.6663 5.00004L13.5772 3.0892C13.7334 2.93298 13.9454 2.84521 14.1663 2.84521C14.3873 2.84521 14.5992 2.93298 14.7555 3.0892L16.9105 5.2442C17.0667 5.40048 17.1545 5.6124 17.1545 5.83337C17.1545 6.05434 17.0667 6.26626 16.9105 6.42254L14.9997 8.33337M11.6663 5.00004L3.57717 13.0892C3.42088 13.2454 3.33306 13.4574 3.33301 13.6784V15.8334C3.33301 16.0544 3.42081 16.2663 3.57709 16.4226C3.73337 16.5789 3.94533 16.6667 4.16634 16.6667H6.32134C6.54234 16.6667 6.75426 16.5788 6.91051 16.4225L14.9997 8.33337M11.6663 5.00004L14.9997 8.33337" stroke="#121212" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                                                                                    </svg>
                                                                                                </a>
                                                                                                <a class="delete-gateway action-btn" href="#" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete gateway" onclick="confirmDelete('128');">
                                                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                                                                                        <path d="M8.33366 4.16667H11.667C11.667 3.72464 11.4914 3.30072 11.1788 2.98816C10.8663 2.67559 10.4424 2.5 10.0003 2.5C9.5583 2.5 9.13438 2.67559 8.82182 2.98816C8.50925 3.30072 8.33366 3.72464 8.33366 4.16667ZM7.08366 4.16667C7.08366 3.78364 7.1591 3.40437 7.30568 3.05051C7.45225 2.69664 7.66709 2.37511 7.93793 2.10427C8.20877 1.83343 8.5303 1.61859 8.88417 1.47202C9.23803 1.32544 9.6173 1.25 10.0003 1.25C10.3833 1.25 10.7626 1.32544 11.1165 1.47202C11.4704 1.61859 11.7919 1.83343 12.0627 2.10427C12.3336 2.37511 12.5484 2.69664 12.695 3.05051C12.8416 3.40437 12.917 3.78364 12.917 4.16667H17.7087C17.8744 4.16667 18.0334 4.23251 18.1506 4.34973C18.2678 4.46694 18.3337 4.62591 18.3337 4.79167C18.3337 4.95743 18.2678 5.1164 18.1506 5.23361C18.0334 5.35082 17.8744 5.41667 17.7087 5.41667H16.6087L15.6337 15.5092C15.5589 16.2825 15.1987 17.0002 14.6234 17.5224C14.0481 18.0445 13.2989 18.3336 12.522 18.3333H7.47866C6.70188 18.3334 5.95291 18.0442 5.37778 17.5221C4.80266 16.9999 4.4426 16.2823 4.36783 15.5092L3.39199 5.41667H2.29199C2.12623 5.41667 1.96726 5.35082 1.85005 5.23361C1.73284 5.1164 1.66699 4.95743 1.66699 4.79167C1.66699 4.62591 1.73284 4.46694 1.85005 4.34973C1.96726 4.23251 2.12623 4.16667 2.29199 4.16667H7.08366ZM8.75033 8.125C8.75033 7.95924 8.68448 7.80027 8.56727 7.68306C8.45006 7.56585 8.29109 7.5 8.12533 7.5C7.95957 7.5 7.80059 7.56585 7.68338 7.68306C7.56617 7.80027 7.50033 7.95924 7.50033 8.125V14.375C7.50033 14.5408 7.56617 14.6997 7.68338 14.8169C7.80059 14.9342 7.95957 15 8.12533 15C8.29109 15 8.45006 14.9342 8.56727 14.8169C8.68448 14.6997 8.75033 14.5408 8.75033 14.375V8.125ZM11.8753 7.5C12.0411 7.5 12.2001 7.56585 12.3173 7.68306C12.4345 7.80027 12.5003 7.95924 12.5003 8.125V14.375C12.5003 14.5408 12.4345 14.6997 12.3173 14.8169C12.2001 14.9342 12.0411 15 11.8753 15C11.7096 15 11.5506 14.9342 11.4334 14.8169C11.3162 14.6997 11.2503 14.5408 11.2503 14.375V8.125C11.2503 7.95924 11.3162 7.80027 11.4334 7.68306C11.5506 7.56585 11.7096 7.5 11.8753 7.5ZM5.61199 15.3892C5.65694 15.853 5.87303 16.2835 6.21813 16.5968C6.56324 16.91 7.01261 17.0834 7.47866 17.0833H12.522C12.988 17.0834 13.4374 16.91 13.7825 16.5968C14.1276 16.2835 14.3437 15.853 14.3887 15.3892L15.3537 5.41667H4.64699L5.61199 15.3892Z" fill="#121212" />
                                                                                                    </svg>
                                                                                                </a>
                                                                                            </div>
                                                                                        </td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--end::Card body-->
                                            </div>
                                            <!--end::Card widget 4-->
                                        </div>
                                        <!--end::Col-->
                                        <!--end::Content container-->
                                    </div>
                                    <!--end::Content-->
                                </div>
                                <!--end::Content wrapper-->
                                <!--begin::Footer-->
                                <uc1:footer runat="server" ID="footer" />
                                <!--end::Footer-->
                            </div>
                            <!--end:::Main-->
                        </div>
                        <!--end::Wrapper-->
                    </div>
                    <!--end::Page-->
                </div>
                <!--end::App-->
            </div>
        </div>
        <!--modal add user popup-->
        <div class="modal fade" tabindex="-1" id="newGatewayModal">
            <div class="modal-dialog modal-lg p-8">
                <div class="modal-content">
                    <div class="modal-header">
                        <h3 class="modal-title">Add Payment Gateway</h3>
                        <!--begin::Close-->
                        <div class="btn btn-icon btn-sm btn-active-light-primary ms-2" data-bs-dismiss="modal" aria-label="Close">
                            <i class="ki-duotone ki-cross fs-1"><span class="path1"></span><span class="path2"></span></i>
                        </div>
                        <!--end::Close-->
                    </div>
                    <!--begin::Body-->

                    <div class="row my-6 p-8">
                        <div class="col-lg-6">
                            <div class="mb-5">
                                <label for="newGatewayType" class="form-label required mb-0">Gateway type</label>
                                <select name="newGatewayType" id="newGatewayType" runat="server" class="form-select form-custom-select">
                                    <option value="" selected>Select a gateway template</option>
                                    <option value="custom">Custom</option>
                                    <option value="paystack">Paystack</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="mb-5">
                                <label for="newGatewayName" class="form-label required mb-0">Display name</label>
                                <input class="form-control form-custom-input" runat="server" value="" type="text" name="newGatewayName" id="newGatewayName" placeholder="Display name">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="mb-5">
                                <label for="newGatewayMinimumOrder" class="form-label required mb-0">Minimum order (USD)</label>
                                <input class="form-control form-custom-input " value="" runat="server" type="number" name="newGatewayMinimumOrder" id="newGatewayMinimumOrder" placeholder="0.000000">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="mb-5">
                                <label for="newGatewayFeeType" class="form-label required mb-0">Gateway Fee Type</label>
                                <select name="newGatewayFeeType" id="newGatewayFeeType" class="form-select form-custom-select" runat="server">
                                    <option value="none">None</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="mb-5">
                                <label for="newGatewayFeeAmount" class="form-label required mb-0">Gateway Fee Amount (USD)</label>
                                <input class="form-control form-custom-input " value="" type="number" name="newGatewayFeeAmount" id="newGatewayFeeAmount" runat="server" placeholder="0.00">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="mb-5">
                                <label for="newGatewaynotice" class="form-label required mb-0">Gateway notice</label>
                                <input class="form-control form-custom-input " value="" type="number" name="newGatewaynotice" id="newGatewaynotice" runat="server" placeholder="0.00">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="mb-5">
                                <label for="EnableNewGateway" class="form-label">Enable gateway</label>
                                <select name="EnableNewGateway" id="EnableNewGateway" class="form-select form-custom-select" runat="server">
                                    <option value="yes">Yes</option>
                                    <option value="no">No</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <!--end::Body-->
                    <div class="modal-footer">
                       <asp:Button ID="newGatewaySubmitBtn" runat="server" Text="Save gateway"
                         CssClass="btn btn-primary btn-grad py-2 px-6 rounded-1"
                         OnClientClick="createGatewaySubmit('newGatewaySubmitBtn'); return false;" OnClick="newGatewaySubmitBtn_Click" />
                    </div>
                </div>
            </div>
        </div>
        <uc1:footerLinks runat="server" ID="footerLinks" />
        <script src="/assets/js/settings.js"></script>
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
    </form>
</body>
<!--end::Body-->
</html>

