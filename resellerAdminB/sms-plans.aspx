<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sms-plans.aspx.cs" Inherits="resellerAdminB.sms_plans" %>

<%@ Register Src="~/Controls/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>
<%@ Register Src="~/Controls/FooterLinks.ascx" TagPrefix="uc1" TagName="FooterLinks" %>
<%@ Register Src="~/Controls/Head.ascx" TagPrefix="uc1" TagName="Head" %>
<%@ Register Src="~/Controls/Loader.ascx" TagPrefix="uc1" TagName="Loader" %>
<%@ Register Src="~/Controls/MenuTop.ascx" TagPrefix="uc1" TagName="MenuTop" %>
<%@ Register Src="~/Controls/SideBar.ascx" TagPrefix="uc1" TagName="SideBar" %>

<uc1:Head runat="server" ID="Head" />
<title>Reseller Admin - SMS Plans</title>
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
                <uc1:MenuTop runat="server" ID="MenuTop" parentPageText="Reseller Features" childPageText="SMS Plans" />
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
                                                        <div class="accordion-header py-3 d-flex align-items-center" data-bs-toggle="collapse" data-bs-target="#kt_accordion_2_item_1" aria-expanded="true">
                                                            <span class="accordion-icon"><i class="ki-duotone ki-arrow-right fs-4"><span class="path1"></span><span class="path2"></span></i></span>
                                                            <h3 class="fs-20 fw-bold mb-0 ms-4" data-bs-toggle="tooltip" data-bs-placement="top" title="Click here to hide/show adding country form">Adding new SMS plan</h3>
                                                        </div>
                                                        <!--end::Header-->

                                                        <!--begin::Body-->
                                                        <div id="kt_accordion_2_item_1" class="fs-6 ps-10 collapse show" data-bs-parent="#kt_accordion_2">
                                                            <div class="row mt-4">
                                                                <div class="col-lg-4">
                                                                    <div class="mb-5">
                                                                        <label for="totalSMS" class="form-label required">Total SMS</label>
                                                                        <input class="form-control form-custom-input" value="" type="number" name="totalSMS" id="totalSMS" runat="server" placeholder="SMS plan total messages">
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-4">
                                                                    <div class="mb-5">
                                                                        <label for="title" class="form-label required">Title</label>
                                                                        <input class="form-control form-custom-input" value="" type="text" name="title" id="title" runat="server" placeholder="SMS plan title">
                                                                    </div>
                                                                </div>
                                                                 <div class="col-lg-4">
                                                                     <div class="mb-5">
                                                                         <label for="smsRate" class="form-label required">SMS Rate</label>
                                                                         <input class="form-control form-custom-input" value="" type="number" name="smsRate" id="smsRate" runat="server" placeholder="SMS plan SMS rate">
                                                                     </div>
                                                                 </div>
                                                                 <div class="col-lg-4">
                                                                     <div class="mb-5">
                                                                         <label for="totalCost" class="form-label required">Total Cost</label>
                                                                         <input class="form-control form-custom-input" value="" type="number" name="totalCost" id="totalCost" runat="server" placeholder="SMS plan total cost">
                                                                     </div>
                                                                 </div>
                                                                <div class="col-lg-4">
                                                                    <div class="mb-5">
                                                                        <label for="currency" class="form-label required">Currency</label>
                                                                        <select name="currency" id="currency" runat="server" class="form-select form-custom-select">
                                                                            <option value="usd">USD</option>
                                                                            <option value="euro">Euro</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                 <div class="col-lg-4">
                                                                     <div class="mb-5">
                                                                         <label for="status" class="form-label required">Status</label>
                                                                         <select name="status" id="status" runat="server" class="form-select form-custom-select">
                                                                             <option value="active">Active</option>
                                                                             <option value="deactivate">Deactivate</option>
                                                                         </select>
                                                                     </div>
                                                                 </div>
                                                                
                                                                <div class="col-lg-12 text-end">
                                                                    <asp:Button ID="AddNewPlanBtn" runat="server" Text="Add SMS Plan"
                                                                        CssClass="btn btn-grad-1 py-2 px-6 rounded-1 ms-auto"
                                                                        OnClientClick="addNewPlanSubmit('AddNewPlanBtn'); return false;" OnClick="AddNewPlanBtn_Click" />
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
                                                        
                                                    </div>
                                                    <!--end::Card body-->
                                                </div>
                                                <!--end::Card widget 4-->
                                            </div>
                                            <!--end::Col-->
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
                <script src="assets/js/sms-plans.js"></script>
                <asp:ScriptManager ID="ScriptManager1" runat="server" />
    </form>
</body>
<!--end::Body-->
</html>


