<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="send-email.aspx.cs" Inherits="resellerAdminB.send_email" %>


<%@ Register Src="~/Controls/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>
<%@ Register Src="~/Controls/FooterLinks.ascx" TagPrefix="uc1" TagName="FooterLinks" %>
<%@ Register Src="~/Controls/Head.ascx" TagPrefix="uc1" TagName="Head" %>
<%@ Register Src="~/Controls/Loader.ascx" TagPrefix="uc1" TagName="Loader" %>
<%@ Register Src="~/Controls/MenuTop.ascx" TagPrefix="uc1" TagName="MenuTop" %>
<%@ Register Src="~/Controls/SideBar.ascx" TagPrefix="uc1" TagName="SideBar" %>

<uc1:Head runat="server" ID="Head" />
<title>Reseller Admin - Send Email</title>
</head>
<!--end::Head-->
<!--begin::Body-->
<body id="kt_app_body" data-kt-app-header-fixed="true" data-kt-app-sidebar-enabled="true" data-kt-app-sidebar-fixed="true" data-kt-app-sidebar-hoverable="true" data-kt-app-sidebar-push-header="true" data-kt-app-sidebar-push-toolbar="true" data-kt-app-sidebar-push-footer="true" data-kt-app-toolbar-enabled="true" class="app-default">
    <form class="d-flex flex-fill" action="#" method="post" runat="server">
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
                <uc1:MenuTop runat="server" ID="MenuTop" parentPageText="Reseller Admin" childPageText="Send Email" />
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
                                            <!--begin::Accordion-->
                                            <div class="card card-flush shadow-xs mt-4 p-8 border-0">
                                                <!--begin::Item-->
                                                <div class="d-flex justify-content-between align-items-start flex-column flex-md-row">
                                                    <!--begin::Page title-->
                                                    <div class="page-title gap-1 d-flex justify-content-between align-items-start mb-5 mb-md-0">
                                                        <div>
                                                            <!--begin::Title-->
                                                            <div class="d-flex pt-3 justify-content-start align-items-center mb-1">
                                                                <h1 class="page-heading text-dark fw-bold m-0 me-3">Send Email</h1>
                                                            </div>
                                                            <p class="fs-14 pt-3 color-neutral-grey">
                                                                Use this tool to send email to a single customer or to all your customer. Your email will be processed in background to save you time.
                                                            </p>
                                                            <!--end::Title-->
                                                        </div>
                                                    </div>
                                                    <!--end::Page title-->
                                                    <!--begin::Header-->
                                                    <button type="button" class="btn btn-grad-1" id="btn-modal-popup" data-bs-toggle="modal" data-bs-target="#sendEmailModal">
                                                        New Message
                                                    </button>
                                                    <!--end::Header-->
                                                </div>
                                                <!--end::Item-->
                                                <!--end::Accordion-->
                                                <!--begin::Card widget 4-->
                                                <div class="card-body pb-4 mt-0 pt-5 ps-0 pr-0">
                                                    <!--begin::Card body-->
                                                    <div class="table-responsive">
                                                        <table id="sent-sms-report" class="table custom-table table-bordered table-striped gy-5">
                                                            <thead>
                                                                <tr class="fs-12 fw-600">
                                                                    <th class="white-color">Recipient</th>
                                                                    <th class="white-color">Subject</th>
                                                                    <th class="white-color">Date</th>
                                                                    <th class="white-color">Status</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr class="fs-12">
                                                                    <td>All Registered Customers</td>
                                                                    <td class="mw-100px">
                                                                        <div class="overflow-clip-ellipsis" data-bs-toggle="tooltip" data-bs-placement="top" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis.">
                                                                            Lorem ipsum dolor sit amet, consectetur adipi ..																	
                                                                        </div>
                                                                    </td>
                                                                    <td>22/08/2023</td>
                                                                    <td class="text-success">Sent</td>
                                                                </tr>
                                                                <tr class="fs-12">
                                                                    <td>All Unverified Customers</td>
                                                                    <td class="mw-100px">
                                                                        <div class="overflow-clip-ellipsis" data-bs-toggle="tooltip" data-bs-placement="top" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis.">
                                                                            Lorem ipsum dolor sit amet, consectetur adipi ..																	
                                                                        </div>
                                                                    </td>
                                                                    <td>22/08/2023</td>
                                                                    <td class="text-warning">Queued</td>
                                                                </tr>
                                                                <tr class="fs-12">
                                                                    <td>Customers With Zero Balance</td>
                                                                    <td class="mw-100px">
                                                                        <div class="overflow-clip-ellipsis" data-bs-toggle="tooltip" data-bs-placement="top" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis.">
                                                                            Lorem ipsum dolor sit amet, consectetur adipi ..																	
                                                                        </div>
                                                                    </td>
                                                                    <td>22/08/2023</td>
                                                                    <td class="text-warning">Queued</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    <!--end::Card body-->
                                                </div>
                                                <!--end::Card widget 4-->
                                            </div>
                                        </div>
                                        <!--end::Col-->
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
            <!--modal add user popup-->
            <div class="modal fade" tabindex="-1" id="sendEmailModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3 class="modal-title">Add New Message</h3>

                            <!--begin::Close-->
                            <div class="btn btn-icon btn-sm btn-active-light-primary ms-2" data-bs-dismiss="modal" aria-label="Close">
                                <i class="ki-duotone ki-cross fs-1"><span class="path1"></span><span class="path2"></span></i>
                            </div>
                            <!--end::Close-->
                        </div>
                        <!--begin::Body-->

                        <div class="modal-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="mb-5">
                                        <label for="emailRecipient" class="form-label fs-14 dark-color required">Email recipient</label>
                                        <select class="form-select form-custom-select mt-3 p-2" name="emailRecipient" id="emailRecipient" runat="server">
                                            <option value="" selected>Select...</option>
                                            <option value="all-registered-customers">All Registered Customers</option>
                                            <option value="all-unverified-customers">All Unverified Customers</option>
                                            <option value="customers-with-zero-balance">Customers With Zero Balance</option>
                                        </select>
                                    </div>
                                    <div class="mb-5">
                                        <label for="emailMessage" class="form-label fs-14 dark-color required">Full name</label>
                                        <textarea class="form-control form-custom-textarea mt-3 p-2" name="emailMessage" id="emailMessage" runat="server" rows="5" placeholder="Enter the email's message here..."></textarea>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <!--end::Body-->
                        <div class="modal-footer">
                            <asp:Button ID="sendEmailSubmitBtn" runat="server" Text="Send email"
                                CssClass="btn btn-grad-1 py-2 px-6 rounded-1"
                                OnClientClick="sendEmailSubmit('sendEmailSubmitBtn'); return false;" OnClick="sendEmailSubmitBtn_Click" />

                        </div>
                    </div>
                </div>
            </div>
            <uc1:FooterLinks runat="server" ID="footerLinks" />
            <script src="/assets/js/send-email.js"></script>
            <asp:ScriptManager ID="ScriptManager1" runat="server" />
    </form>
</body>
<!--end::Body-->
</html>

