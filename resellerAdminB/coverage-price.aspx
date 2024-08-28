<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="coverage-price.aspx.cs" Inherits="resellerAdminB.coverage_price" %>



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
                <uc1:MenuTop runat="server" ID="MenuTop" parentPageText="Dashboard" childPageText="Coverage Price" />
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
								<!--begin::Row-->
									<div class="row">
                                        <!--begin::Col-->
                                        <div class="col-md-12 mb-md-0 mb-5 mt-5">
                                                <div class="card card-flush shadow-xs p-8 border-0">
                                                <!--begin::Page title-->
                                                <div class="page-title gap-1 d-flex justify-content-between align-items-start">
                                                    <div>
                                                           <h1 class="page-heading text-dark fw-bold mb-3 me-3">List of Countries Covered</h1>
                                                        <p class="fs-14 color-neutral-grey pb-5">
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
                                                            <table id="coverage-table" class="table custom-table table-bordered table-row-gray-300 gy-5 datatable">
                                                                <thead>
                                                                    <tr class="fs-14 fw-600 dark-color">
                                                                        <th class="white-color">Country Name</th>
                                                                        <th class="white-color">Price</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td>Albania (Republic of)</td>
                                                                        <td>$0.56</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Albania (Republic of)</td>
                                                                        <td>$0.56</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Albania (Republic of)</td>
                                                                        <td>$0.56</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Albania (Republic of)</td>
                                                                        <td>$0.56</td>
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
							<uc1:footer runat="server" id="footer" />
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

			<uc1:footerLinks runat="server" id="footerLinks" />
             <script src="/assets/js/coverage.js"></script>
	</body>
	<!--end::Body-->
</html>

