<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="api.aspx.cs" Inherits="resellerAdminB.api" %>


<%@ Register Src="~/Controls/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>
<%@ Register Src="~/Controls/FooterLinks.ascx" TagPrefix="uc1" TagName="FooterLinks" %>
<%@ Register Src="~/Controls/Head.ascx" TagPrefix="uc1" TagName="Head" %>
<%@ Register Src="~/Controls/Loader.ascx" TagPrefix="uc1" TagName="Loader" %>
<%@ Register Src="~/Controls/MenuTop.ascx" TagPrefix="uc1" TagName="MenuTop" %>
<%@ Register Src="~/Controls/SideBar.ascx" TagPrefix="uc1" TagName="SideBar" %>

<uc1:Head runat="server" id="Head" />
<title>Reseller Admin - Dashboard</title>
<link rel="stylesheet" href="/assets/css/prism.css">
</head>
<!--end::Head-->
<!--begin::Body-->
<body id="kt_app_body" data-kt-app-layout="dark-sidebar" data-kt-app-header-fixed="true" data-kt-app-sidebar-enabled="true" data-kt-app-sidebar-fixed="true" data-kt-app-sidebar-hoverable="true" data-kt-app-sidebar-push-header="true" data-kt-app-sidebar-push-toolbar="true" data-kt-app-sidebar-push-footer="true" data-kt-app-toolbar-enabled="true" class="app-default">
    <form action="/api.aspx" method="post" id="frmAPI" name="frmAPI" runat="server">
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
            <uc1:MenuTop runat="server" id="MenuTop" parentPageText="Dashboard" childPageText="API" />
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
                                    <div class="row g-5 g-xl-10 mb-xl-10 mt-0">
                                        <!--begin::Col-->
                                        <div class="col-md-12 mb-md-0 mb-5 mt-5">
                                            <!--begin::Card widget 4-->
                                            <div class="card card-flush h-100 border-0">
                                                <!--begin::Card body-->
                                                <div class="card-body pb-4 mt-5 pt-0 ps-0 pr-0">
                                                    <ul class="nav nav-tabs nav-line-tabs nav-line-tabs-2x mb-5 fs-6">
                                                        <li class="nav-item">
                                                            <a class="nav-link fs-16 px-5 fs-18 active" data-bs-toggle="tab" href="#api_documentation_tab">API Documentation</a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a class="nav-link fs-16 px-5 fs-18" data-bs-toggle="tab" href="#send_sms_tab">Sending SMS</a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a class="nav-link fs-16 px-5 fs-18" data-bs-toggle="tab" href="#check_sms_tab">Check SMS Status</a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a class="nav-link fs-16 px-5 fs-18" data-bs-toggle="tab" href="#read_sms_tab">Read SMS Inbox</a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a class="nav-link fs-16 px-5 fs-18" data-bs-toggle="tab" href="#credit_balance_tab">Credit Balance</a>
                                                        </li>
                                                    </ul>
                                                    <div class="card shadow-xs p-8 d-flex mb-5">
                                                        <div class="tab-content mt-8" id="myTabContent">
                                                            <div class="tab-pane fade show active" id="api_documentation_tab" role="tabpanel">
                                                                <div>
                                                                    <div class="fs-20 dark-color fw-600 mb-3">API Documentation</div>
                                                                    <p class="fs-14 gray mb-9">
                                                                        Our system offers a simple and Easy-to-use HTTP API to pragmatically interacted with your account. You can use our API to integrate our services on third-party systems or develop awesome SMS applications too.
                                                                    </p>
                                                                    <div class="fs-16 dark-color fw-600 mb-3">API Endpoint</div>
                                                                    <p class="fs-14 gray">
                                                                        Communicate with each other, by sending and receiving information and instructions via the endpoint.
                                                                    </p>
                                                                    <div class="table-responsive mb-9">
                                                                        <table class="table custom-table table-bordered table-striped table-row-gray-300 gy-5">
                                                                            <thead>
                                                                                <tr class="fs-16 fw-600 dark-color">
                                                                                    <th class="white-color">HTTP URL</th>
                                                                                    <th class="white-color">HTTP Method</th>
                                                                                </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                                <tr class="fs-14 dark-color">
                                                                                    <td><a target="_blank" href="https://demos.ynetinteractive.com/sendroidultimate/app/smsAPI">https://demos.ynetinteractive.com/sendroidultimate/app/smsAPI</a></td>
                                                                                    <td>POST or GET</td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                    <div class="fs-16 dark-color fw-600 mb-3">API Credentials</div>
                                                                    <p class="fs-14 gray">
                                                                        API credentials are unique identifiers that are required to access some API tools. They provide a way for you to control who has access to your APIs, and they protect you from malicious usage.
                                                                    </p>
                                                                    <div class="table-responsive mt-8 mb-5">
                                                                        <table class="table custom-table table-bordered table-striped table-row-gray-300 gy-5">
                                                                            <thead>
                                                                                <tr class="fs-16 fw-600 dark-color">
                                                                                    <th class="white-color">API Key</th>
                                                                                    <th class="white-color">API Token</th>
                                                                                </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                                <tr class="fs-14 dark-color">
                                                                                    <td>KtZmuvBFvYa2EnKmd3VcVDHpO5Fbnc5L</td>
                                                                                    <td>XRca1673849289</td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                    <div class="mb-10">
                                                                         <asp:Button ID="generateNewAPIKeyBtn" runat="server" Text="Generate New Key"
                                                                            CssClass="btn btn-primary btn-grad w-225px py-2 px-8 rounded-1" OnClick="generateNewAPIKeyBtn_Click" />
                                                                    </div>
                                                                    <div class="fs-16 dark-color fw-600 mb-3">White-Listed IP Addresses</div>
                                                                    <p class="fs-14 gray">
                                                                        Enter a comma separated list of IP addresses you want to allow access to your API credentials (e.g 12.34.56.7,98.66.44.33)
                                                                    </p>
                                                                    <div class="row">
                                                                        <div class="col-md-6">
                                                                            <div>
                                                                                <div class="mb-5">
                                                                                    <label for="ip_addresses" class="form-label fs-14 dark-color required">White-listed IP Addresses</label>
                                                                                    <input type="text" class="form-control form-custom-input" name="ip_addresses" id="ip_addresses" runat="server" placeholder="Leave the box empty to disable this feature" data-bs-toggle="tooltip" data-bs-placement="top" title="Please Enter White-listed IP Addresses" />
                                                                                </div>
                                                                                <div>
                                                                                    <asp:Button ID="save_ip_addresses" runat="server" Text="Save settings"
                                                                                        CssClass="btn btn-primary btn-grad py-2 px-8 rounded-1 border-1" OnClick="save_ip_addresses_Click" />
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="tab-pane fade" id="send_sms_tab" role="tabpanel">
                                                                <div>
                                                                    <div class="fs-20 dark-color fw-600 mb-9">Sending SMS</div>
                                                                    <div class="fs-16 dark-color fw-600 mb-3">Sample Request</div>
                                                                    <p class="fs-14 gray mb-3 py-3">
                                                                        Here's a sample request using the 'GET' method on the HTTP interface.
                                                                    </p>
                                                                    <pre class="language-http"><code class="language-http">https://demos.ynetinteractive.com/sendroidultimate/app/smsAPI?sendsms&apikey=Your_API_KEY&apitoken=YOUR_API_TOKEN&type=sms&from=SENDERID&to=123456&text=My+first+text&scheduledate=2023-08-30 04:33:19&route=0</code></pre>
                                                                    <div class="table-responsive my-8">
                                                                        <table class="table custom-table table-bordered table-striped table-row-gray-300 gy-5">
                                                                            <thead>
                                                                                <tr class="fs-16 fw-600 dark-color">
                                                                                    <th class="white-color">Parameters</th>
                                                                                    <th class="white-color">Description</th>
                                                                                </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                                <tr class="fs-14 dark-color">
                                                                                    <td>apikey</td>
                                                                                    <td>You unique API Key (<span class="text-danger">required</span>)</td>
                                                                                </tr>
                                                                                <tr class="fs-14 dark-color">
                                                                                    <td>apitoken</td>
                                                                                    <td>You unique API Token (<span class="text-danger">required</span>)</td>
                                                                                </tr>
                                                                                <tr class="fs-14 dark-color">
                                                                                    <td>type</td>
                                                                                    <td>Message Type Eg. sms, voice, unicode, flash, mms, whatsapp (default is sms) (<span class="text-danger">required</span>)</td>
                                                                                </tr>
                                                                                <tr class="fs-14 dark-color">
                                                                                    <td>from</td>
                                                                                    <td>Your Sender ID (<span class="text-danger">required</span>)</td>
                                                                                </tr>
                                                                                <tr class="fs-14 dark-color">
                                                                                    <td>to</td>
                                                                                    <td>Destination Number (country code) (<span class="text-danger">required</span>)</td>
                                                                                </tr>
                                                                                <tr class="fs-14 dark-color">
                                                                                    <td>text</td>
                                                                                    <td>Your message text (url encoded) (<span class="text-danger">required for sms, unicode, flash</span>)</td>
                                                                                </tr>
                                                                                <tr class="fs-14 dark-color">
                                                                                    <td>file</td>
                                                                                    <td>Voice file URL (for voice message) or Multimedia file URL (for mms or whatsapp message) (<span class="text-primary">optional</span>)</td>
                                                                                </tr>
                                                                                <tr class="fs-14 dark-color">
                                                                                    <td>language</td>
                                                                                    <td>Language of voice message (<span class="text-danger">required for text-to-speach</span>)</td>
                                                                                </tr>
                                                                                <tr class="fs-14 dark-color">
                                                                                    <td>scheduledate</td>
                                                                                    <td>Date and Time to send message (YYYY-MM-DD HH:mm:ss) (<span class="text-primary">optional</span>)</td>
                                                                                </tr>
                                                                                <tr class="fs-14 dark-color">
                                                                                    <td>duration</td>
                                                                                    <td>Duration of your voice message in seconds (<span class="text-danger">required for voice</span>)</td>
                                                                                </tr>
                                                                                <tr class="fs-14 dark-color">
                                                                                    <td>route</td>
                                                                                    <td>ID of gateway/route to use for the message. Set to 0 to use system default routing rules (<span class="text-primary">optional</span>)</td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                    <div class="fs-16 dark-color fw-600 mb-3">Sample Success Response (JSON)</div>
                                                                    <pre class="language-json"><code class="language-json">{ 
    "request": "sendsms", 
    "status": "queued",
    "group_id": "1234",
    "date": "2023-08-30 04:33:19"
}</code></pre>
                                                                    <div class="fs-16 dark-color fw-600 mt-8 mb-3">Sample Error Response (JSON)</div>
                                                                    <pre class="language-json"><code class="language-json">{ 
    "request": "sendsms", 
    "status": "error",
    "message": "Sender ID not allowed"
}</code></pre>
                                                                </div>
                                                            </div>
                                                            <div class="tab-pane fade" id="check_sms_tab" role="tabpanel">
                                                                <div>
                                                                    <div class="fs-20 dark-color fw-600 mb-9">Check SMS Status</div>
                                                                    <div class="fs-16 dark-color fw-600 mb-3">Sample Request</div>
                                                                    <p class="fs-14 gray mb-3 py-3">
                                                                        Here's a sample request using the 'GET' method on the HTTP interface.
                                                                    </p>
                                                                    <pre class="language-http"><code class="language-http">https://demos.ynetinteractive.com/sendroidultimate/app/smsAPI&groupstatus&apikey=Your_API_KEY&apitoken=YOUR_API_TOKEN&groupid=1234</code></pre>
                                                                    <div class="table-responsive my-8">
                                                                        <table class="table custom-table table-bordered table-striped table-row-gray-300 gy-5">
                                                                            <thead>
                                                                                <tr class="fs-16 fw-600 dark-color">
                                                                                    <th class="white-color">Parameters</th>
                                                                                    <th class="white-color">Description</th>
                                                                                </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                                <tr class="fs-14 dark-color">
                                                                                    <td>apikey</td>
                                                                                    <td>You unique API Key (<span class="text-danger">required</span>)</td>
                                                                                </tr>
                                                                                <tr class="fs-14 dark-color">
                                                                                    <td>apitoken</td>
                                                                                    <td>You unique API Token (<span class="text-danger">required</span>)</td>
                                                                                </tr>
                                                                                <tr class="fs-14 dark-color">
                                                                                    <td>groupid</td>
                                                                                    <td>The group_id returned by send sms request (<span class="text-danger">required</span>)</td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                    <div class="fs-16 dark-color fw-600 mb-3">Sample Success Response (JSON)</div>
                                                                    <pre class="language-json"><code class="language-json">{ 
    "request": "groupstatus",
    "status": "success",
    "group_id": "1234",
    "group_status": "sent",
    "recipients": [
            {
                "id": "21",
                "to": "231235433",
                "status": "failed"
            },
            {
                "id": "22",
                "to": "4471235433",
                "status": "sent"
            },
            {
              "id": "25",
              "to": "1871235433",
              "status": "queued"
            }
         ],
         "date": "2023-08-30 04:33:19"
}</code></pre>
                                                                    <div class="fs-16 dark-color fw-600 mt-8 mb-3">Sample Error Response (JSON)</div>
                                                                    <pre class="language-json"><code class="language-json">{ 
    "request": "groupstatus", 
    "status": "error",
    "message": "Error message"
}</code></pre>
                                                                </div>
                                                            </div>
                                                            <div class="tab-pane fade" id="read_sms_tab" role="tabpanel">
                                                                <div>
                                                                    <div class="fs-20 dark-color fw-600 mb-9">Read SMS Inbox</div>
                                                                    <div class="fs-16 dark-color fw-600 mb-3">Sample Request</div>
                                                                    <p class="fs-14 gray mb-3 py-3">
                                                                        Here's a sample request using the 'GET' method on the HTTP interface.
                                                                    </p>
                                                                    <pre class="language-http"><code class="language-http">https://demos.ynetinteractive.com/sendroidultimate/app/smsAPI?getinbox&apikey=Your_API_KEY&apitoken=YOUR_API_TOKEN&list=unread</code></pre>
                                                                    <div class="table-responsive white-color my-8">
                                                                        <table class="table custom-table table-bordered table-striped table-row-gray-300 gy-5">
                                                                            <thead>
                                                                                <tr class="fs-16 fw-600 dark-color">
                                                                                    <th class="white-color">Parameters</th>
                                                                                    <th class="white-color">Description</th>
                                                                                </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                                <tr class="fs-14 dark-color">
                                                                                    <td>apikey</td>
                                                                                    <td>You unique API Key (<span class="text-danger">required</span>)</td>
                                                                                </tr>
                                                                                <tr class="fs-14 dark-color">
                                                                                    <td>apitoken</td>
                                                                                    <td>You unique API Token (<span class="text-danger">required</span>)</td>
                                                                                </tr>
                                                                                <tr class="fs-14 dark-color">
                                                                                    <td>list</td>
                                                                                    <td>"all" will return all messages while "unread" will return only unread messages (default is unread) (<span class="text-primary">optional</span>)</td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                    <div class="fs-16 dark-color fw-600 mb-3">Sample Success Response (JSON)</div>
                                                                    <pre class="language-json"><code class="language-json">{ 
    "request": "groupstatus",
    "status": "success",
    "group_id": "1234",
    "group_status": "sent",
    "recipients": [
            {
                "id": "21",
                "to": "231235433",
                "status": "failed"
            },
            {
                "id": "22",
                "to": "4471235433",
                "status": "sent"
            },
            {
              "id": "25",
              "to": "1871235433",
              "status": "queued"
            }
         ],
         "date": "2023-08-30 04:33:19"
}</code></pre>
                                                                    <div class="fs-16 dark-color fw-600 mt-8 mb-3">Sample Error Response (JSON)</div>
                                                                    <pre class="language-json "><code class="language-json">{ 
    "request": "groupstatus", 
    "status": "error",
    "message": "Error message"
}</code></pre>
                                                                </div>
                                                            </div>
                                                            <div class="tab-pane fade" id="credit_balance_tab" role="tabpanel">
                                                                <div>
                                                                    <div class="fs-20 dark-color fw-600 mb-9">Credit Balance</div>
                                                                    <div class="fs-16 dark-color fw-600 mb-3">Sample Request</div>
                                                                    <p class="fs-14 gray py-3 mb-3">
                                                                        Here's a sample request using the 'GET' method on the HTTP interface.
                                                                    </p>
                                                                    <pre class="language-http"><code class="language-http">https://demos.ynetinteractive.com/sendroidultimate/app/smsAPI?balance&apikey=Your_API_KEY&apitoken=YOUR_API_TOKEN</code></pre>
                                                                    <div class="table-responsive my-8">
                                                                        <table class="table custom-table table-bordered table-striped table-row-gray-300 gy-5">
                                                                            <thead>
                                                                                <tr class="fs-16 fw-600 dark-color">
                                                                                    <th class="white-color">Parameters</th>
                                                                                    <th class="white-color">Description</th>
                                                                                </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                                <tr class="fs-14 dark-color">
                                                                                    <td>apikey</td>
                                                                                    <td>You unique API Key (<span class="text-danger">required</span>)</td>
                                                                                </tr>
                                                                                <tr class="fs-14 dark-color">
                                                                                    <td>apitoken</td>
                                                                                    <td>You unique API Token (<span class="text-danger">required</span>)</td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                    <div class="fs-16 dark-color fw-600 mb-3">Sample Success Response (JSON)</div>
                                                                    <pre class="language-json"><code class="language-json">{ 
    "balance": "12345"
}</code></pre>
                                                                    <div class="fs-16 dark-color fw-600 mt-8 mb-3">Sample Error Response (JSON)</div>
                                                                    <pre class="language-json"><code class="language-json">{ 
    "request": "balance", 
    "status": "error",
    "message": "Invalid user"
}</code></pre>

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
                                    </div>
                                    <!--end::Row-->
                                </div>
                                <!--end::Content container-->
                            </div>
                            <!--end::Content-->
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

        <uc1:footerLinks runat="server" ID="footerLinks" />
          <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <script src="/assets/js/prism.js"></script>
    </form>
</body>
<!--end::Body-->
