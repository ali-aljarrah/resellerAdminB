<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="smslog.aspx.cs" Inherits="resellerAdminB.smslog" %>


<%@ Register Src="~/Controls/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>
<%@ Register Src="~/Controls/FooterLinks.ascx" TagPrefix="uc1" TagName="FooterLinks" %>
<%@ Register Src="~/Controls/Head.ascx" TagPrefix="uc1" TagName="Head" %>
<%@ Register Src="~/Controls/Loader.ascx" TagPrefix="uc1" TagName="Loader" %>
<%@ Register Src="~/Controls/MenuTop.ascx" TagPrefix="uc1" TagName="MenuTop" %>
<%@ Register Src="~/Controls/SideBar.ascx" TagPrefix="uc1" TagName="SideBar" %>

<uc1:Head runat="server" id="Head" />
<title>Reseller Admin - Dashboard</title>
</head>
<!--end::Head-->
<!--begin::Body-->
<body id="kt_app_body" data-kt-app-layout="dark-sidebar" data-kt-app-header-fixed="true" data-kt-app-sidebar-enabled="true" data-kt-app-sidebar-fixed="true" data-kt-app-sidebar-hoverable="true" data-kt-app-sidebar-push-header="true" data-kt-app-sidebar-push-toolbar="true" data-kt-app-sidebar-push-footer="true" data-kt-app-toolbar-enabled="true" class="app-default">
    <uc1:Loader runat="server" id="Loader" />
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
            <uc1:MenuTop runat="server" id="MenuTop" parentPageText="Home" childPageText="Dashboard" />
            <!--end::Header-->
            <!--begin::Wrapper-->
            <div class="app-wrapper flex-column flex-row-fluid" id="kt_app_wrapper">
                <!--begin::Sidebar-->
                <uc1:SideBar runat="server" id="SideBar" />
                <!--end::Sidebar-->
                <!--begin::Main-->
                <div class="app-main flex-column flex-row-fluid" id="kt_app_main">
                    <!--begin::Content wrapper-->
                    <div class="d-flex flex-column flex-column-fluid">
                   
                        <!--begin::Content-->
                        <div id="kt_app_content" class="app-content flex-column-fluid">
                            <!--begin::Content container-->
                            <div id="kt_app_content_container" class="app-container container-fluid">
								<!--begin::Row-->
									<div class="row gy-5 g-xl-10">
                                        <div class="col-md-12">
                                            
										<!--begin::Col-->
										  <div class=" pb-5">
                                              <div class="card shadow-xs p-5 d-flex mb-5">
                                                   <div class="page-title gap-1 d-flex justify-content-between align-items-start">
                                                       <div>
                                                          <!--begin::Title-->
                                                           <div class="d-flex justify-content-start align-items-center mb-1">
                                                               <h2 class="page-heading text-dark fw-bold mb-3 me-3">SMS Log</h2>
                                                           </div>
                                                           <p class="fs-16 color-neutral-grey pb-5">
                                                              See a complete list of all the SMS users.
														   </p>
													   </div>
                                                   </div>
                                                    <!--begin::Card body-->
                                                    <div class="table-responsive">
														<table id="sent-sms-report" class="table custom-table table-row-gray-300 gy-5 datatable">
                                                            <thead>
                                                                <tr class="fs-14 fw-600 dark-color">
                                                                    <th class="white-color">Header 1</th>
                                                                    <th class="white-color">Header 2</th>
                                                                    <th class="white-color">Header 3</th>
                                                                    <th class="white-color">Header 4</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
																  <td>-</td>
																  <td>-</td>
																  <td>-</td>
																  <td>-</td>
															   </tr>
                                                            </tbody>
                                                        </table> 
                                                    </div>
                                               <!--end::Card body-->
                                           </div>
										<!--end::Col-->
									    </div>
									<!--end::Row-->
									</div>
								     <!--end::Content container-->
							     </div>
							    <!--end::Content-->
						     </div>
						    <!--end::Content wrapper-->

                    <!--begin::Footer-->
                    <uc1:Footer runat="server" id="Footer" />
                    <!--end::Footer-->
                </div>
                <!--end:::Main-->

            </div>
            <!--end::Wrapper-->
        </div>
        <!--end::Page-->

    </div>
    <!--end::App-->
    <uc1:FooterLinks runat="server" id="FooterLinks" />
    <script src="/assets/js/admin-sms-log.js"></script>
</body>
<!--end::Body-->
</html>

