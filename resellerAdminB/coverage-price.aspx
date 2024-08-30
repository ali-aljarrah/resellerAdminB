<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="coverage-price.aspx.cs" Inherits="resellerAdminB.coverage_price" %>



<%@ Register Src="~/Controls/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>
<%@ Register Src="~/Controls/FooterLinks.ascx" TagPrefix="uc1" TagName="FooterLinks" %>
<%@ Register Src="~/Controls/Head.ascx" TagPrefix="uc1" TagName="Head" %>
<%@ Register Src="~/Controls/Loader.ascx" TagPrefix="uc1" TagName="Loader" %>
<%@ Register Src="~/Controls/MenuTop.ascx" TagPrefix="uc1" TagName="MenuTop" %>
<%@ Register Src="~/Controls/SideBar.ascx" TagPrefix="uc1" TagName="SideBar" %>

<uc1:Head runat="server" ID="Head" />
<title>Reseller Admin - Coverage Price</title>
</head>
<!--end::Head-->
<!--begin::Body-->
<body id="kt_app_body" data-kt-app-header-fixed="true" data-kt-app-sidebar-enabled="true" data-kt-app-sidebar-fixed="true" data-kt-app-sidebar-hoverable="true" data-kt-app-sidebar-push-header="true" data-kt-app-sidebar-push-toolbar="true" data-kt-app-sidebar-push-footer="true" data-kt-app-toolbar-enabled="true" class="app-default">
    <form class="d-flex flex-fill" action="#" method="post" name="covForm" id="covForm" runat="server">
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
                <uc1:MenuTop runat="server" ID="MenuTop" parentPageText="Reseller Features" childPageText="Coverage Price" />
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
                                            <div class="card card-flush shadow-xs p-8 border-0 mb-10">
                                                <div class="accordion accordion-icon-toggle" id="kt_accordion_2">
                                                    <!--begin::Item-->
                                                    <div>
                                                        <!--begin::Header-->
                                                        <div class="accordion-header py-0 d-flex align-items-center" data-bs-toggle="collapse" data-bs-target="#kt_accordion_2_item_1" aria-expanded="true">
                                                            <span class="accordion-icon"><i class="ki-duotone ki-arrow-right fs-4"><span class="path1"></span><span class="path2"></span></i></span>
                                                            <h3 class="fs-20 fw-bold mb-0 ms-4" data-bs-toggle="tooltip" data-bs-placement="top" title="Click here to hide/show adding country form">Adding new country</h3>
                                                        </div>
                                                        <!--end::Header-->

                                                        <!--begin::Body-->
                                                        <div id="kt_accordion_2_item_1" class="fs-6 ps-10 collapse show" data-bs-parent="#kt_accordion_2">
                                                            <div class="row mt-4">
                                                                <div class="col-lg-4">
                                                                    <div class="mb-5">
                                                                        <label for="serviceOption" class="form-label required">Service</label>
                                                                        <select name="serviceOption" id="serviceOption" runat="server" class="form-select form-custom-select">
                                                                            <option value="sms">SMS</option>
                                                                            <option value="hlr">HLR</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-4">
                                                                    <div class="mb-5">
                                                                        <label for="costByCredit" class="form-label required">Cost by Credits</label>
                                                                        <input class="form-control form-custom-input" value="" type="number" name="costByCredit" id="costByCredit" runat="server" placeholder="Cost per unit (SMS or HLR or...)">
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-4">
                                                                    <div class="mb-5">
                                                                        <label for="countryMCC" class="form-label required">Country-MCC</label>
                                                                        <select name="countryMCC" id="countryMCC" runat="server" class="form-select form-custom-select">
                                                                            <option value="usa">USA</option>
                                                                            <option value="canada">Canada</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-4">
                                                                    <div class="mb-5">
                                                                        <label for="mnc" class="form-label required">MNC</label>
                                                                        <input class="form-control form-custom-input" value="*" type="text" name="mnc" id="mnc" runat="server" placeholder="*">
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-4">
                                                                    <div class="mb-5">
                                                                        <label for="available" class="form-label required">Available</label>
                                                                        <select name="available" id="available" runat="server" class="form-select form-custom-select">
                                                                            <option value="yes">Yes</option>
                                                                            <option value="no">No</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-4">
                                                                    <div class="mb-5">
                                                                        <label for="user" class="form-label required">User</label>
                                                                        <select name="user" id="user" runat="server" class="form-select form-custom-select">
                                                                            <option value="all">All</option>
                                                                            <option value="global">Global</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-12 text-end">
                                                                    <asp:Button ID="AddNewCountryBtn" runat="server" Text="Add country"
                                                                        CssClass="btn btn-grad-1 py-2 px-6 rounded-1 ms-auto"
                                                                        OnClientClick="addNewCountrySubmit('AddNewCountryBtn'); return false;" OnClick="AddNewCountryBtn_Click" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--end::Body-->
                                                    </div>
                                                    <!--end::Item-->
                                                </div>
                                            </div>
                                            <div class="card card-flush shadow-xs p-8 border-0">
                                                <!--begin::Page title-->
                                                <div class="page-title gap-1 d-flex justify-content-between align-items-start">
                                                    <div>
                                                        <h1 class="page-heading text-dark fw-bold mb-3 me-3">List of Countries Covered</h1>
                                                        <p class="fs-14 color-neutral-grey">
                                                            Please find below our comprehensive list of covered countries, including information on each country or region pricing.
                                                        </p>
                                                        <!--end::Title-->
                                                    </div>
                                                </div>
                                                <!--end::Page title-->
                                                <!--begin::Card widget 4-->
                                                <div class="border-0">
                                                    <!--begin::Card body-->
                                                    <div class="card-body pb-4 mt-0 pt-5 ps-0 pr-0">
                                                        <div class="table-responsive">
                                                            <table id="coverage-table" class="table custom-table table-bordered table-striped gy-5">
                                                                <thead>
                                                                    <tr class="fs-12 fw-600 dark-color">
                                                                        <th class="white-color">User</th>
                                                                        <th class="white-color">MCC-Country</th>
                                                                        <th class="white-color">MNC</th>
                                                                        <th class="white-color">Cost by Credits</th>
                                                                        <th class="white-color">Date</th>
                                                                        <th class="white-color">Service</th>
                                                                        <th class="white-color">Available</th>
                                                                        <th class="white-color">Action</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr class="fs-12">
                                                                        <td>Global</td>
                                                                        <td>450<br />
                                                                            Korea
                                                                        </td>
                                                                        <td>*</td>
                                                                        <td>1 Credits</td>
                                                                        <td>2024-02-18</td>
                                                                        <td>SMS</td>
                                                                        <td class="text-center"><span class="badge badge-success">True</span></td>
                                                                        <td class="text-end">
                                                                            <div class="d-flex justify-content-center align-items-center">
                                                                                <a class="me-5 action-btn" href="/edit-country-cov.aspx" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit country coverage">
                                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                                                                        <path d="M11.6663 5.00004L13.5772 3.0892C13.7334 2.93298 13.9454 2.84521 14.1663 2.84521C14.3873 2.84521 14.5992 2.93298 14.7555 3.0892L16.9105 5.2442C17.0667 5.40048 17.1545 5.6124 17.1545 5.83337C17.1545 6.05434 17.0667 6.26626 16.9105 6.42254L14.9997 8.33337M11.6663 5.00004L3.57717 13.0892C3.42088 13.2454 3.33306 13.4574 3.33301 13.6784V15.8334C3.33301 16.0544 3.42081 16.2663 3.57709 16.4226C3.73337 16.5789 3.94533 16.6667 4.16634 16.6667H6.32134C6.54234 16.6667 6.75426 16.5788 6.91051 16.4225L14.9997 8.33337M11.6663 5.00004L14.9997 8.33337" stroke="#121212" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                                                                    </svg>
                                                                                </a>
                                                                                <a class="action-btn" href="#" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete country coverage" onclick="confirmDelete('128');">
                                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                                                                        <path d="M8.33366 4.16667H11.667C11.667 3.72464 11.4914 3.30072 11.1788 2.98816C10.8663 2.67559 10.4424 2.5 10.0003 2.5C9.5583 2.5 9.13438 2.67559 8.82182 2.98816C8.50925 3.30072 8.33366 3.72464 8.33366 4.16667ZM7.08366 4.16667C7.08366 3.78364 7.1591 3.40437 7.30568 3.05051C7.45225 2.69664 7.66709 2.37511 7.93793 2.10427C8.20877 1.83343 8.5303 1.61859 8.88417 1.47202C9.23803 1.32544 9.6173 1.25 10.0003 1.25C10.3833 1.25 10.7626 1.32544 11.1165 1.47202C11.4704 1.61859 11.7919 1.83343 12.0627 2.10427C12.3336 2.37511 12.5484 2.69664 12.695 3.05051C12.8416 3.40437 12.917 3.78364 12.917 4.16667H17.7087C17.8744 4.16667 18.0334 4.23251 18.1506 4.34973C18.2678 4.46694 18.3337 4.62591 18.3337 4.79167C18.3337 4.95743 18.2678 5.1164 18.1506 5.23361C18.0334 5.35082 17.8744 5.41667 17.7087 5.41667H16.6087L15.6337 15.5092C15.5589 16.2825 15.1987 17.0002 14.6234 17.5224C14.0481 18.0445 13.2989 18.3336 12.522 18.3333H7.47866C6.70188 18.3334 5.95291 18.0442 5.37778 17.5221C4.80266 16.9999 4.4426 16.2823 4.36783 15.5092L3.39199 5.41667H2.29199C2.12623 5.41667 1.96726 5.35082 1.85005 5.23361C1.73284 5.1164 1.66699 4.95743 1.66699 4.79167C1.66699 4.62591 1.73284 4.46694 1.85005 4.34973C1.96726 4.23251 2.12623 4.16667 2.29199 4.16667H7.08366ZM8.75033 8.125C8.75033 7.95924 8.68448 7.80027 8.56727 7.68306C8.45006 7.56585 8.29109 7.5 8.12533 7.5C7.95957 7.5 7.80059 7.56585 7.68338 7.68306C7.56617 7.80027 7.50033 7.95924 7.50033 8.125V14.375C7.50033 14.5408 7.56617 14.6997 7.68338 14.8169C7.80059 14.9342 7.95957 15 8.12533 15C8.29109 15 8.45006 14.9342 8.56727 14.8169C8.68448 14.6997 8.75033 14.5408 8.75033 14.375V8.125ZM11.8753 7.5C12.0411 7.5 12.2001 7.56585 12.3173 7.68306C12.4345 7.80027 12.5003 7.95924 12.5003 8.125V14.375C12.5003 14.5408 12.4345 14.6997 12.3173 14.8169C12.2001 14.9342 12.0411 15 11.8753 15C11.7096 15 11.5506 14.9342 11.4334 14.8169C11.3162 14.6997 11.2503 14.5408 11.2503 14.375V8.125C11.2503 7.95924 11.3162 7.80027 11.4334 7.68306C11.5506 7.56585 11.7096 7.5 11.8753 7.5ZM5.61199 15.3892C5.65694 15.853 5.87303 16.2835 6.21813 16.5968C6.56324 16.91 7.01261 17.0834 7.47866 17.0833H12.522C12.988 17.0834 13.4374 16.91 13.7825 16.5968C14.1276 16.2835 14.3437 15.853 14.3887 15.3892L15.3537 5.41667H4.64699L5.61199 15.3892Z" fill="#121212" />
                                                                                    </svg>
                                                                                </a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="fs-12">
                                                                        <td>Global</td>
                                                                        <td>500<br />
                                                                            Australia
                                                                        </td>
                                                                        <td>*</td>
                                                                        <td>1 Credits</td>
                                                                        <td>2024-02-18</td>
                                                                        <td>SMS</td>
                                                                        <td class="text-center"><span class="badge badge-danger">False</span></td>
                                                                        <td class="text-end">
                                                                            <div class="d-flex justify-content-center align-items-center">
                                                                                <a class="me-5 action-btn" href="/edit-country-cov.aspx" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit country coverage">
                                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                                                                        <path d="M11.6663 5.00004L13.5772 3.0892C13.7334 2.93298 13.9454 2.84521 14.1663 2.84521C14.3873 2.84521 14.5992 2.93298 14.7555 3.0892L16.9105 5.2442C17.0667 5.40048 17.1545 5.6124 17.1545 5.83337C17.1545 6.05434 17.0667 6.26626 16.9105 6.42254L14.9997 8.33337M11.6663 5.00004L3.57717 13.0892C3.42088 13.2454 3.33306 13.4574 3.33301 13.6784V15.8334C3.33301 16.0544 3.42081 16.2663 3.57709 16.4226C3.73337 16.5789 3.94533 16.6667 4.16634 16.6667H6.32134C6.54234 16.6667 6.75426 16.5788 6.91051 16.4225L14.9997 8.33337M11.6663 5.00004L14.9997 8.33337" stroke="#121212" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                                                                    </svg>
                                                                                </a>
                                                                                <a class="action-btn" href="#" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete country coverage" onclick="confirmDelete('129');">
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
                                                    <!--end::Card body-->
                                                </div>
                                                <!--end::Card widget 4-->
                                            </div>
                                            <!--end::Col-->
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
                            <!--end:::Main-->
                        </div>
                        <!--end::Wrapper-->
                    </div>
                    <!--end::Page-->
                </div>
                <!--end::App-->
            </div>

            <uc1:FooterLinks runat="server" ID="footerLinks" />
            <script src="/assets/js/coverage.js"></script>
            <asp:ScriptManager ID="ScriptManager1" runat="server" />
    </form>
</body>
<!--end::Body-->
</html>

