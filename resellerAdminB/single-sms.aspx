<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="single-sms.aspx.cs" Inherits="resellerAdminB.single_sms" %>



<%@ Register Src="~/Controls/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>
<%@ Register Src="~/Controls/FooterLinks.ascx" TagPrefix="uc1" TagName="FooterLinks" %>
<%@ Register Src="~/Controls/Head.ascx" TagPrefix="uc1" TagName="Head" %>
<%@ Register Src="~/Controls/Loader.ascx" TagPrefix="uc1" TagName="Loader" %>
<%@ Register Src="~/Controls/MenuTop.ascx" TagPrefix="uc1" TagName="MenuTop" %>
<%@ Register Src="~/Controls/SideBar.ascx" TagPrefix="uc1" TagName="SideBar" %>

<uc1:Head runat="server" id="Head" />
<title>Reseller Admin - Send Single SMS</title>
</head>
<!--end::Head-->
<!--begin::Body-->
<body id="kt_app_body" data-kt-app-header-fixed="true" data-kt-app-sidebar-enabled="true" data-kt-app-sidebar-fixed="true" data-kt-app-sidebar-hoverable="true" data-kt-app-sidebar-push-header="true" data-kt-app-sidebar-push-toolbar="true" data-kt-app-sidebar-push-footer="true" data-kt-app-toolbar-enabled="true" class="app-default">
    <form action="#" id="frmSendSingleSms" name="frmSendSingleSms" runat="server" novalidate="novalidate">
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
            <uc1:MenuTop runat="server" id="MenuTop" parentPageText="Dashboard" childPageText="Single SMS" />
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
                                    <div class="row">
                                        <div class="col-xl-8">
                                            <!--begin::Title-->
                                            <div class="card shadow-xs p-8 mb-5">
                                                <div class="mb-1 pt-5">
                                                    <h2 class="page-heading text-dark fw-bold mb-3 me-3">Send Single SMS</h2>
                                                </div>
                                                <p class="fs-14 color-neutral-grey pb-5">
                                                    Easily send messages to multiple numbers by adding commas between them. You can send to a maximum of 30 numbers each time. Happy texting!                                                                
                                                </p>

                                                <div class="mb-8">
                                                    <label for="txtSender" class="form-label fs-14 dark-color required">Sender name</label>
                                                    <input type="text" class="form-control form-custom-input mt-3" name="txtSender" id="txtSender" runat="server" placeholder="Sender name" data-bs-toggle="tooltip" data-bs-placement="top" title="Please Enter Sender For Message,Max length for numeric:18 and alphanumeric:11" />
                                                </div>
                                                <div class="mb-8">
                                                    <label for="cmbMessageType" class="form-label fs-14 dark-color required">SMS type</label>
                                                    <select class="form-select form-custom-select mt-3" runat="server" onchange="javascript:setMessageLength();" id="cmbMessageType" name="cmbMessageType" data-bs-toggle="tooltip" data-bs-trigger="hover" data-bs-placement="top" title="Please Select Message Type">
                                                        <option value="">Please select one</option>
                                                        <option value="0">Text</option>
                                                        <option value="2">Arabic</option>
                                                        <option value="9">Unicode</option>
                                                    </select>
                                                </div>
                                                <div class="mb-8">
                                                    <label for="txtNumber" class="form-label fs-14 dark-color required">Mobile number</label>
                                                    <input type="text" class="form-control form-custom-input mt-3" runat="server" onkeypress="return goodchars(event,'0123456789,+');" name="txtNumber" id="txtNumber" placeholder="Use number with country code" data-bs-toggle="tooltip" data-bs-placement="top" title="Please Enter Mobile Number,Maximum 30 numbers can be added seperated by comma.." />
                                                </div>
                                                <div class="mb-8">
                                                    <div class="d-flex justify-content-between align-items-center">
                                                        <label for="txtMessage" class="form-label fs-14 dark-color required">Message</label>
                                                        <div class="d-flex justify-content-end align-items-center">
                                                            <a id="chooseTemplateBtn" class="action-btn" href="#" data-bs-toggle="tooltip" data-bs-placement="top" title="Choose template">
                                                                <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                    <path d="M10 0.25C8.07164 0.25 6.18657 0.821828 4.58319 1.89317C2.97982 2.96451 1.73013 4.48726 0.992179 6.26884C0.254225 8.05042 0.061142 10.0108 0.437348 11.9021C0.813554 13.7934 1.74215 15.5307 3.10571 16.8943C4.46928 18.2579 6.20656 19.1865 8.09787 19.5627C9.98919 19.9389 11.9496 19.7458 13.7312 19.0078C15.5127 18.2699 17.0355 17.0202 18.1068 15.4168C19.1782 13.8134 19.75 11.9284 19.75 10C19.7473 7.41498 18.7192 4.93661 16.8913 3.10872C15.0634 1.28084 12.585 0.25273 10 0.25ZM10 18.25C8.36831 18.25 6.77326 17.7661 5.41655 16.8596C4.05984 15.9531 3.00242 14.6646 2.378 13.1571C1.75358 11.6496 1.5902 9.99085 1.90853 8.3905C2.22685 6.79016 3.01259 5.32015 4.16637 4.16637C5.32016 3.01259 6.79017 2.22685 8.39051 1.90852C9.99085 1.59019 11.6497 1.75357 13.1571 2.37799C14.6646 3.00242 15.9531 4.05984 16.8596 5.41655C17.7661 6.77325 18.25 8.3683 18.25 10C18.2475 12.1873 17.3775 14.2843 15.8309 15.8309C14.2843 17.3775 12.1873 18.2475 10 18.25ZM5.5 8.125C5.5 7.9025 5.56598 7.68499 5.6896 7.49998C5.81322 7.31498 5.98892 7.17078 6.19449 7.08564C6.40005 7.00049 6.62625 6.97821 6.84448 7.02162C7.06271 7.06502 7.26317 7.17217 7.4205 7.3295C7.57783 7.48684 7.68498 7.68729 7.72839 7.90552C7.7718 8.12375 7.74952 8.34995 7.66437 8.55552C7.57922 8.76109 7.43503 8.93679 7.25002 9.0604C7.06502 9.18402 6.84751 9.25 6.625 9.25C6.32664 9.25 6.04049 9.13147 5.82951 8.9205C5.61853 8.70952 5.5 8.42337 5.5 8.125ZM15.25 8.125C15.25 8.32391 15.171 8.51468 15.0303 8.65533C14.8897 8.79598 14.6989 8.875 14.5 8.875H12.25C12.0511 8.875 11.8603 8.79598 11.7197 8.65533C11.579 8.51468 11.5 8.32391 11.5 8.125C11.5 7.92609 11.579 7.73532 11.7197 7.59467C11.8603 7.45402 12.0511 7.375 12.25 7.375H14.5C14.6989 7.375 14.8897 7.45402 15.0303 7.59467C15.171 7.73532 15.25 7.92609 15.25 8.125ZM14.3988 12.625C13.4341 14.2928 11.8309 15.25 10 15.25C8.16907 15.25 6.56594 14.2937 5.60032 12.625C5.55107 12.5397 5.51911 12.4455 5.50626 12.3478C5.49342 12.2502 5.49993 12.1509 5.52544 12.0558C5.55095 11.9606 5.59495 11.8714 5.65493 11.7933C5.7149 11.7151 5.78969 11.6496 5.875 11.6003C5.96032 11.5511 6.0545 11.5191 6.15217 11.5063C6.24984 11.4934 6.34909 11.4999 6.44424 11.5254C6.53939 11.5509 6.62858 11.5949 6.70673 11.6549C6.78488 11.7149 6.85045 11.7897 6.89969 11.875C7.59907 13.0853 8.69969 13.75 10 13.75C11.3003 13.75 12.4009 13.0844 13.1013 11.875C13.1481 11.7854 13.2127 11.7062 13.291 11.6421C13.3693 11.5781 13.4597 11.5305 13.5569 11.5023C13.654 11.4742 13.7558 11.4659 13.8563 11.4781C13.9567 11.4903 14.0536 11.5227 14.1412 11.5733C14.2287 11.6239 14.3052 11.6917 14.3658 11.7727C14.4265 11.8536 14.4702 11.946 14.4943 12.0442C14.5183 12.1425 14.5223 12.2446 14.5059 12.3444C14.4895 12.4442 14.453 12.5396 14.3988 12.625Z" fill="#121212" />
                                                                </svg>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <input type="hidden" name="codePoints" value="" onblur="document.frmSendSingleSms.txtMessage.value = convertCP2Char( document.frmSendSingleSms.codePoints.value );&#10;document.frmSendSingleSms.UTF16.value = convertCP2UTF16( document.frmSendSingleSms.codePoints.value );&#10;return false;" readonly="readonly" />
                                                    <input type="hidden" name="UTF16" value="" onblur="document.frmSendSingleSms.codePoints.value = convertUTF162CP( document.frmSendSingleSms.UTF16.value );&#10;return false;" rows="3" cols="50" />
                                                    <textarea runat="server" name="txtMessage" rows="4" id="txtMessage" placeholder="Write message here..."
                                                        class="form-control form-custom-textarea mt-3 " size="30" maxlength="335"
                                                        onkeypress="javascript:setCounter()"
                                                        onblur="javascript:setCounter();" onclick="javascript:setCounter();"
                                                        onkeyup="javascript:setCounter();" dir="ltr"></textarea>

                                                    <div class="fs-12 nile-color">
                                                        <input type="text" name="txtcount" value="0 : 1 SMS Parts" readonly="readonly" class="fs-12 nile-color text-start border-0">
                                                        <input type="hidden" name="hiddcount" value="160" id="hiddcount">
                                                        <input type="hidden" name="txtMessageCount" value="1">
                                                    </div>
                                                </div>
                                                <div class="d-flex justify-content-start align-items-start">
                                                    <asp:Button ID="BtnSubmit" runat="server" Text="Send SMS"
                                                        CssClass="btn btn-primary btn-grad py-2 px-8 rounded-1 ms-0"
                                                        OnClientClick="sendSubmit('BtnSubmit'); return false;" OnClick="BtnSubmit_Click" />
                                                    <button type="button" class="btn btn-outline-dark btn-bordered my-3 py-2 px-8 rounded-2 ms-3" id="btnSaveTemplate" name="btnSaveTemplate">
                                                        <span class="indicator-label">Save as template</span>
                                                        <span class="indicator-progress">
                                                            <span class="spinner-border text-white" role="status">
                                                                <span class="visually-hidden">Loading...</span>
                                                            </span>
                                                        </span>
                                                    </button>
                                                </div>

                                            </div>
                                            <!--end::Card body-->
                                        </div>
                                    </div>
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
        <!-- Choose template modal -->
        <div class="modal fade" tabindex="-1" id="chooseTemplate">
            <div class="modal-dialog modal-dialog-scrollable">
                <div class="modal-content">
                    <div class="modal-header py-3">
                        <h3 class="modal-title primary-color fs-16 fw-500">Choose Message Template</h3>
                        <!--begin::Close-->
                        <div class="btn btn-icon btn-sm btn-active-light-primary ms-2" data-bs-dismiss="modal" aria-label="Close">
                            <span class="svg-icon svg-icon-1">
                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="currentColor"></rect>
                                    <rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="currentColor"></rect>
                                </svg>
                            </span>
                        </div>
                        <!--end::Close-->
                    </div>

                    <div class="modal-body">
                        <div class="table-responsive">
                            <table id="templates-table" class="table dashed-bottom-table gy-6">
                                <tbody>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="modal-footer justify-content-start">
                        <button type="button" class="btn btn-grad-1 py-3 px-8 rounded-3" id="chooseTemplateSubmitBtn">
                            <span class="indicator-label">Confirm</span>
                            <span class="indicator-progress">
                                <span class="spinner-border text-white" role="status">
                                    <span class="visually-hidden">Loading...</span>
                                </span>
                            </span>
                        </button>
                        <button type="button" class="btn btn-outline-dark btn-bordered py-3 px-8 rounded-3" data-bs-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Save template modal -->
        <div class="modal fade" tabindex="-1" id="saveTemplate">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header py-3">
                        <h3 class="modal-title primary-color fs-16 fw-500">Save template</h3>
                        <!--begin::Close-->
                        <div class="btn btn-icon btn-sm btn-active-light-primary ms-2" data-bs-dismiss="modal" aria-label="Close">
                            <span class="svg-icon svg-icon-1">
                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="currentColor"></rect>
                                    <rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="currentColor"></rect>
                                </svg>
                            </span>
                        </div>
                        <!--end::Close-->
                    </div>

                    <div class="modal-body">
                        <div class="mb-8 templateNewName" style="">
                            <label for="templateName" class="form-label fs-14 color-black-1 required">Template name</label>
                            <input type="text" class="form-control form-custom-input" name="templateName" id="templateName" runat="server" placeholder="Type Template Name" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="New template name" data-bs-original-title="New template name" data-kt-initialized="1" fdprocessedid="nnyci4">
                        </div>
                    </div>

                    <div class="modal-footer justify-content-start">
                        <asp:Button ID="SaveTemplateSubmitBtn" runat="server" Text="Save Template"
                            CssClass="btn btn-grad-1 py-4 px-8 rounded-3"
                            OnClientClick="saveTemplateSubmit('SaveTemplateSubmitBtn'); return false;" OnClick="SaveTemplateSubmitBtn_Click" />
                        <button type="button" class="btn btn-outline-dark btn-bordered py-4 px-8 rounded-3" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>

        <uc1:footerLinks runat="server" ID="footerLinks" />
        <script src="/assets/js/sendsms.js"></script>
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
    </form>
</body>
<!--end::Body-->
</html>

