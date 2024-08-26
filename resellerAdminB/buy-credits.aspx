<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="buy-credits.aspx.cs" Inherits="resellerAdminB.buy_credits" %>


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
    <form action="#" id="frmReload" name="frmReload" novalidate="novalidate" runat="server">
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
                <uc1:MenuTop runat="server" ID="MenuTop" parentPageText="Dashboard" childPageText="Buy Credits" />
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
                            <div id="kt_app_content" class="app-content flex-column-fluid">
                                <!--begin::Content container-->
                                <div id="kt_app_content_container" class="app-container container-fluid">
                                    <div class="row d-flex">
                                        <div class="col-xl-9">
                                            <!--begin::Row-->
                                            <div class="card shadow-xs p-8 d-flex mb-5">
                                                <div class="row mb-5" data-kt-buttons="true" data-kt-buttons-target=".form-check-image,.form-check-input">

                                                    <div class="col-xl-12">
                                                        <h1 class="fw-bold color-black-1 pb-5 mb-5">Choose Credit Amount</h1>
                                                    </div>
                                                    <div class="col-lg-3">
                                                        <label class="form-check-image w-100 active">
                                                            <div class="form-check-wrapper p-5">
                                                                <div class="form-check-label form-check-custom form-check-solid justify-content-between">
                                                                    <p class="color-black-1 fs-14 mb-0">100 Credits</p>
                                                                    <input class="form-check-input" type="radio" value="100" name="payment" runat="server" checked />
                                                                </div>
                                                                <p class="color-black-1 fs-25 fw-bold mb-0 pt-3">$100</p>
                                                            </div>
                                                        </label>
                                                    </div>
                                                    <!--begin::Col-->
                                                    <div class="col-lg-3">
                                                        <label class="form-check-image w-100">
                                                            <div class="form-check-wrapper p-5">
                                                                <div class="form-check-label form-check-custom form-check-solid justify-content-between">
                                                                    <p class="color-black-1 fs-14 mb-0">1,000 Credits</p>
                                                                    <input class="form-check-input" type="radio" value="1000" name="payment" runat="server" />
                                                                </div>
                                                                <p class="color-black-1 fs-25 fw-bold mb-0 pt-3">$1,000</p>
                                                            </div>
                                                        </label>
                                                    </div>
                                                    <!--end::Col-->
                                                    <div class="col-lg-3">
                                                        <label class="form-check-image w-100">
                                                            <div class="form-check-wrapper p-5">
                                                                <div class="form-check-label form-check-custom form-check-solid justify-content-between">
                                                                    <p class="color-black-1 fs-14 mb-0">5,000 Credits</p>
                                                                    <input class="form-check-input" type="radio" value="5000" name="payment" runat="server" />
                                                                </div>
                                                                <p class="color-black-1 fs-25 fw-bold mb-0 pt-3">$5,000</p>
                                                            </div>
                                                        </label>
                                                    </div>
                                                    <!--end::Col-->
                                                    <div class="col-lg-3">
                                                        <label class="form-check-image w-100">
                                                            <div class="form-check-wrapper p-5">
                                                                <div class="form-check-label form-check-custom form-check-solid justify-content-between">
                                                                    <p class="color-black-1 fs-14 mb-0">10,000 Credits</p>
                                                                    <input class="form-check-input" type="radio" value="10000" name="payment" runat="server" />
                                                                </div>
                                                                <p class="color-black-1 fs-25 fw-bold mb-0 pt-3">$10,000</p>
                                                            </div>
                                                        </label>
                                                    </div>
                                                    <!--end::Col-->
                                                    <div class="col-lg-3">
                                                        <label class="form-check-image w-100">
                                                            <div class="form-check-wrapper p-5">
                                                                <div class="form-check-label form-check-custom form-check-solid justify-content-between">
                                                                    <p class="color-black-1 fs-14 mb-0">25,000 Credits</p>
                                                                    <input class="form-check-input" type="radio" value="25000" name="payment" runat="server" />
                                                                </div>
                                                                <p class="color-black-1 fs-25 fw-bold mb-0 pt-3">$25,000</p>
                                                            </div>
                                                        </label>
                                                    </div>
                                                    <!--end::Col-->
                                                    <div class="col-lg-3">
                                                        <label class="form-check-image w-100">
                                                            <div class="form-check-wrapper p-5">
                                                                <div class="form-check-label form-check-custom form-check-solid justify-content-between">
                                                                    <p class="color-black-1 fs-14 mb-0">50,000 Credits</p>
                                                                    <input class="form-check-input" type="radio" value="50000" name="payment" runat="server" />
                                                                </div>
                                                                <p class="color-black-1 fs-25 fw-bold mb-0 pt-3">$50,000</p>
                                                            </div>
                                                        </label>
                                                    </div>
                                                    <!--end::Col-->
                                                    <div class="col-lg-3">
                                                        <label class="form-check-image w-100">
                                                            <div class="form-check-wrapper p-5">
                                                                <div class="form-check-label form-check-custom form-check-solid justify-content-between">
                                                                    <p class="color-black-1 fs-14 mb-0">100,000</p>
                                                                    <input class="form-check-input" type="radio" value="100000" name="payment" runat="server" />
                                                                </div>
                                                                <p class="color-black-1 fs-25 fw-bold mb-0 pt-3">$100,000</p>
                                                            </div>
                                                        </label>
                                                    </div>
                                                    <!--end::Col-->
                                                    <div class="col-lg-3">
                                                        <label class="form-check-image w-100">
                                                            <div class="form-check-wrapper p-5">
                                                                <div class="form-check-label form-check-custom form-check-solid justify-content-between">
                                                                    <p class="color-black-1 fs-14 mb-0">250,000 Credits</p>
                                                                    <input class="form-check-input" type="radio" value="250000" name="payment" runat="server" />
                                                                </div>
                                                                <p class="color-black-1 fs-25 fw-bold mb-0 pt-3">$250,000</p>
                                                            </div>
                                                        </label>
                                                    </div>
                                                    <!--end::Col-->
                                                    <div class="col-lg-3">
                                                        <label class="form-check-image w-100">
                                                            <div class="form-check-wrapper p-5">
                                                                <div class="form-check-label form-check-custom form-check-solid justify-content-between">
                                                                    <p class="color-black-1 fs-14 mb-0">500,000 Credits</p>
                                                                    <input class="form-check-input" type="radio" value="500000" name="payment" runat="server" />
                                                                </div>
                                                                <p class="color-black-1 fs-25 fw-bold mb-0 pt-3">$500,000</p>
                                                            </div>
                                                        </label>
                                                    </div>
                                                    <!--end::Col-->
                                                    <div class="col-lg-3">
                                                        <label class="form-check-image w-100">
                                                            <div class="form-check-wrapper p-5">
                                                                <div class="form-check-label form-check-custom form-check-solid justify-content-between">
                                                                    <p class="color-black-1 fs-14 mb-0">1,000,000 Credits</p>
                                                                    <input class="form-check-input" type="radio" value="1000000" name="payment" runat="server" />
                                                                </div>
                                                                <p class="color-black-1 fs-25 fw-bold mb-0 pt-3">$1,000,000</p>
                                                            </div>
                                                        </label>
                                                    </div>
                                                    <!--end::Col-->
                                                    <div class="col-lg-3">
                                                        <label class="form-check-image w-100">
                                                            <div class="form-check-wrapper p-5">
                                                                <div class="form-check-label form-check-custom form-check-solid justify-content-between">
                                                                    <p class="color-black-1 fs-14 mb-0">1,500,000 Credits</p>
                                                                    <input class="form-check-input" type="radio" value="1500000" name="payment" runat="server" />
                                                                </div>
                                                                <p class="color-black-1 fs-25 fw-bold mb-0 pt-3">$1,500,000</p>
                                                            </div>
                                                        </label>
                                                    </div>
                                                    <!--end::Col-->
                                                    <div class="col-lg-3">
                                                        <label class="form-check-image w-100">
                                                            <div class="form-check-wrapper p-5">
                                                                <div class="form-check-label form-check-custom form-check-solid justify-content-between">
                                                                    <p class="color-black-1 fs-14 mb-0">Custom Credits</p>
                                                                    <input class="form-check-input" type="radio" value="custom" name="payment" runat="server" />
                                                                </div>
                                                                <div class="">
                                                                    <input type="text" class="input-number-form" onkeypress="return goodchars(event,'0123456789');" name="customPrice" id="customPrice" runat="server" placeholder="$" data-bs-toggle="tooltip" data-bs-placement="top" title="Please Enter Your price" />
                                                                </div>
                                                            </div>
                                                        </label>
                                                    </div>
                                                    <!--end::Col-->
                                                    <p class="fs-14 gray mt-5">
                                                        Choose the price package or set custom amount that suits your needs best. Select the dropdown to change payment method and click the button to pay securely and effortlessly.
                                                    </p>
                                                    <div class="pt-1 mb-5">
                                                        <asp:Button ID="reloadBtn" runat="server" Text="PayPal"
                                                            CssClass="btn btn-grad-1 py-4 px-9 rounded-3"
                                                            OnClientClick="paySubmit('reloadBtn'); return false;" OnClick="reloadBtn_Click" />
                                                    </div>
                                                </div>
                                            </div>
                                            <hr class="mt-8 pt-5" />
                                            <!--begin::Page title-->
                                            <div class="pt-5 pb-5">
                                                <div class="card shadow-xs p-8 d-flex mb-5">
                                                    <div class="page-title gap-1 d-flex justify-content-between align-items-start">
                                                        <div>
                                                            <!--begin::Title-->
                                                            <div class="d-flex justify-content-start align-items-center mb-1">
                                                                <h2 class="page-heading text-dark fw-bold mb-3 me-3">Transactions History</h2>
                                                            </div>
                                                            <p class="fs-16 color-neutral-grey pb-5">
                                                                See a complete list of all the transactions your customers have done here. You can view or approve their invoices here too.                                                                
                                                                <!--end::Title-->
                                                        </div>
                                                    </div>
                                                    <!--begin::Card body-->
                                                    <div class="table-responsive">
                                                        <table id="sent-sms-report" class="table custom-table table-row-gray-300 gy-5 datatable">
                                                            <thead>
                                                                <tr class="fs-14 fw-600">
                                                                    <th class="white-color">Payment type</th>
                                                                    <th class="white-color">Amount</th>
                                                                    <th class="white-color">Date & Time</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>-</td>
                                                                    <td>-</td>
                                                                    <td>-</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>-</td>
                                                                    <td>-</td>
                                                                    <td>-</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>-</td>
                                                                    <td>-</td>
                                                                    <td>-</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                                <!--end::Card body-->
                                            </div>
                                            <!--end::Card widget 4-->
                                        </div>

                                        <div class="col-xl-3 mb-md-0 mt-5 mt-md-0">
                                            <div class="card card-flush shadow-xs h-100 border-0">
                                                <div class="custom-border-left h-100 mt-10 mt-md-0">
                                                    <div class="p-8">
                                                        <div>
                                                            <div class="mb-6">
                                                                <p class="fs-16 fw-600 dark-color mb-3">
                                                                    Terms & Conditions
                                                                </p>
                                                                <ul>
                                                                    <li class="fs-14 dark-color mb-4">All prices are stated in USD Dollar. We reserve the right to modify any advertised price at our discretion.                                                                        </li>
                                                                    <li class="fs-14 dark-color mb-4">Payment options include PayPal, major credit or debit cards, and cryptocurrency. If you do not have a PayPal account, you can easily sign up by visiting <a href="https://www.paypal.com/" target="_blank" rel="noopener noreferrer">PayPal's website.</a>
                                                                    </li>
                                                                    <li class="fs-14 dark-color mb-4">Account reloading typically occurs within 20 minutes to 1 hour after our sales team approves the transaction. In case of any delays, we will notify you promptly.
                                                                    </li>
                                                                    <li class="fs-14 dark-color mb-4">To maintain a safe and secure platform for all our customers, we may request identity verification. This verification process helps prevent fraudulent activities and ensures the security of your account.
                                                                    </li>
                                                                    <li class="fs-14 dark-color mb-4">As part of the ID verification process, we require your full name and supporting documents to verify your identity. Accounts that pass the ID verification process will be considered verified buyers after their first transaction.
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="mb-6">
                                                                <p class="fs-16 fw-600 dark-color mb-3">
                                                                    CryptoCurrency
                                                                </p>
                                                                <ul>
                                                                    <li class="fs-14 dark-color mb-4">We accept major cryptocurrencies. If you wish to use a cryptocurrency not listed on our platform, kindly contact us, and we will provide you with the necessary wallet ID.
                                                                    </li>
                                                                </ul>
                                                                <div class="text-center mt-5">
                                                                    <img width="200" height="54" class="img-fluid" src="/assets/img/home/Frame 93.png" alt="Accepted payment methods">
                                                                </div>
                                                                <div class="text-center">
                                                                    <img width="290" height="75" class="img-fluid" src="/assets/img/home/Layer 1.svg" alt="Accepted payment methods">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--end::Content container-->
                                </div>
                                <!--end::Content-->
                            </div>
                            <!--end::Content wrapper-->
                            <!--begin::Footer-->
                            <uc1:Footer runat="server" ID="footer" />
                            <!--end::Footer-->
                        </div>
                    </div>
                    <!--end:::Main-->
                </div>
                <!--end::Wrapper-->
            </div>
            <!--end::Page-->
        </div>
        <!--end::App-->
        <uc1:FooterLinks runat="server" ID="footerLinks" />
        <script src="/assets/js/buy-credits.js"></script>
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
    </form>
</body>
<!--end::Body-->
</html>

