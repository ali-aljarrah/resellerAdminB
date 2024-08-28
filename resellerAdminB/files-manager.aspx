<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="files-manager.aspx.cs" Inherits="resellerAdminB.files_manager" %>



<%@ Register Src="~/Controls/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>
<%@ Register Src="~/Controls/FooterLinks.ascx" TagPrefix="uc1" TagName="FooterLinks" %>
<%@ Register Src="~/Controls/Head.ascx" TagPrefix="uc1" TagName="Head" %>
<%@ Register Src="~/Controls/Loader.ascx" TagPrefix="uc1" TagName="Loader" %>
<%@ Register Src="~/Controls/MenuTop.ascx" TagPrefix="uc1" TagName="MenuTop" %>
<%@ Register Src="~/Controls/SideBar.ascx" TagPrefix="uc1" TagName="SideBar" %>

<uc1:Head runat="server" ID="Head" />
<title>Reseller Admin - Files Manager</title>
</head>
<!--end::Head-->
<!--begin::Body-->
<body id="kt_app_body" data-kt-app-header-fixed="true" data-kt-app-sidebar-enabled="true" data-kt-app-sidebar-fixed="true" data-kt-app-sidebar-hoverable="true" data-kt-app-sidebar-push-header="true" data-kt-app-sidebar-push-toolbar="true" data-kt-app-sidebar-push-footer="true" data-kt-app-toolbar-enabled="true" class="app-default">
     <form name="frmSend" id="frmSend" runat="server" method="POST" enctype="multipart/form-data" action="/files-manager.aspx">
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
                <uc1:MenuTop runat="server" ID="MenuTop" parentPageText="Dashboard" childPageText="Files Manager" />
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
                                    <div class="row mb-xl-10 mt-0">
                                        <!--begin::Col-->
                                        <div class="col-md-8 mb-md-0 mb-5">
                                            <div class="card card-flush shadow-xs p-8  h-100">
                                                <!--begin::Page title-->
                                                <div class="page-title d-flex flex-column justify-content-center gap-1">
                                                    <!--begin::Title-->
                                                    <div class="d-flex justify-content-start align-items-center mb-3 mt-5">
                                                        <h1 class="page-heading text-dark fw-bold ms-3 me-3">Files List</h1>
                                                        <span class="fs-12 cyan-color fw-600 cyan-bg px-2 py-1">3 available</span>
                                                    </div>
                                                    <p class="fs-14 color-neutral-grey ms-3">
                                                        Take advantage of our user-friendly platform to craft compelling SMS templates that can be easily adapted and utilized across different campaigns, saving you time and effort while maximizing your outreach.
                                                    </p>
                                                    <!--end::Title-->
                                                </div>
                                                <!--end::Page title-->
                                                <!--begin::Card widget 4-->
                                                <div class="card-body border-0 ps-0 pr-0">
                                                    <!--begin::Card body-->
                                                    <div class="pb-4 mt-0 pt-5">
                                                        <div class="table-responsive">
                                                            <table class="table custom-table table-bordered table-row-gray-300 gy-5">
                                                                <thead class=" bg-blue">
                                                                    <tr class="fs-14 fw-600 dark-color">
                                                                        <th class="white-color">File name</th>
                                                                        <th class="white-color">Quantity</th>
                                                                        <th class="white-color">Modified date</th>
                                                                        <th></th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td>Area 51</td>
                                                                        <td>1000</td>
                                                                        <td>11 August 2023, 09:41 AM</td>
                                                                        <td class="text-center">
                                                                            <a class="delete-file action-btn" href="#">
                                                                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                                                                    <path d="M8.33268 4.16667H11.666C11.666 3.72464 11.4904 3.30072 11.1779 2.98816C10.8653 2.67559 10.4414 2.5 9.99935 2.5C9.55732 2.5 9.1334 2.67559 8.82084 2.98816C8.50828 3.30072 8.33268 3.72464 8.33268 4.16667ZM7.08268 4.16667C7.08268 3.78364 7.15812 3.40437 7.3047 3.05051C7.45128 2.69664 7.66612 2.37511 7.93695 2.10427C8.20779 1.83343 8.52932 1.61859 8.88319 1.47202C9.23706 1.32544 9.61633 1.25 9.99935 1.25C10.3824 1.25 10.7616 1.32544 11.1155 1.47202C11.4694 1.61859 11.7909 1.83343 12.0617 2.10427C12.3326 2.37511 12.5474 2.69664 12.694 3.05051C12.8406 3.40437 12.916 3.78364 12.916 4.16667H17.7077C17.8734 4.16667 18.0324 4.23251 18.1496 4.34973C18.2668 4.46694 18.3327 4.62591 18.3327 4.79167C18.3327 4.95743 18.2668 5.1164 18.1496 5.23361C18.0324 5.35082 17.8734 5.41667 17.7077 5.41667H16.6077L15.6327 15.5092C15.5579 16.2825 15.1977 17.0002 14.6224 17.5224C14.0471 18.0445 13.2979 18.3336 12.521 18.3333H7.47768C6.7009 18.3334 5.95193 18.0442 5.37681 17.5221C4.80168 16.9999 4.44163 16.2823 4.36685 15.5092L3.39102 5.41667H2.29102C2.12526 5.41667 1.96628 5.35082 1.84907 5.23361C1.73186 5.1164 1.66602 4.95743 1.66602 4.79167C1.66602 4.62591 1.73186 4.46694 1.84907 4.34973C1.96628 4.23251 2.12526 4.16667 2.29102 4.16667H7.08268ZM8.74935 8.125C8.74935 7.95924 8.6835 7.80027 8.56629 7.68306C8.44908 7.56585 8.29011 7.5 8.12435 7.5C7.95859 7.5 7.79962 7.56585 7.68241 7.68306C7.5652 7.80027 7.49935 7.95924 7.49935 8.125V14.375C7.49935 14.5408 7.5652 14.6997 7.68241 14.8169C7.79962 14.9342 7.95859 15 8.12435 15C8.29011 15 8.44908 14.9342 8.56629 14.8169C8.6835 14.6997 8.74935 14.5408 8.74935 14.375V8.125ZM11.8743 7.5C12.0401 7.5 12.1991 7.56585 12.3163 7.68306C12.4335 7.80027 12.4993 7.95924 12.4993 8.125V14.375C12.4993 14.5408 12.4335 14.6997 12.3163 14.8169C12.1991 14.9342 12.0401 15 11.8743 15C11.7086 15 11.5496 14.9342 11.4324 14.8169C11.3152 14.6997 11.2493 14.5408 11.2493 14.375V8.125C11.2493 7.95924 11.3152 7.80027 11.4324 7.68306C11.5496 7.56585 11.7086 7.5 11.8743 7.5ZM5.61102 15.3892C5.65596 15.853 5.87205 16.2835 6.21716 16.5968C6.56226 16.91 7.01164 17.0834 7.47768 17.0833H12.521C12.9871 17.0834 13.4364 16.91 13.7815 16.5968C14.1266 16.2835 14.3427 15.853 14.3877 15.3892L15.3527 5.41667H4.64602L5.61102 15.3892Z" fill="#121212" />
                                                                                </svg>
                                                                            </a>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Chicago</td>
                                                                        <td>60k</td>
                                                                        <td>03 August 2023, 09:41 AM</td>
                                                                        <td class="text-center">
                                                                            <a class="delete-file action-btn" href="#">
                                                                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                                                                    <path d="M8.33268 4.16667H11.666C11.666 3.72464 11.4904 3.30072 11.1779 2.98816C10.8653 2.67559 10.4414 2.5 9.99935 2.5C9.55732 2.5 9.1334 2.67559 8.82084 2.98816C8.50828 3.30072 8.33268 3.72464 8.33268 4.16667ZM7.08268 4.16667C7.08268 3.78364 7.15812 3.40437 7.3047 3.05051C7.45128 2.69664 7.66612 2.37511 7.93695 2.10427C8.20779 1.83343 8.52932 1.61859 8.88319 1.47202C9.23706 1.32544 9.61633 1.25 9.99935 1.25C10.3824 1.25 10.7616 1.32544 11.1155 1.47202C11.4694 1.61859 11.7909 1.83343 12.0617 2.10427C12.3326 2.37511 12.5474 2.69664 12.694 3.05051C12.8406 3.40437 12.916 3.78364 12.916 4.16667H17.7077C17.8734 4.16667 18.0324 4.23251 18.1496 4.34973C18.2668 4.46694 18.3327 4.62591 18.3327 4.79167C18.3327 4.95743 18.2668 5.1164 18.1496 5.23361C18.0324 5.35082 17.8734 5.41667 17.7077 5.41667H16.6077L15.6327 15.5092C15.5579 16.2825 15.1977 17.0002 14.6224 17.5224C14.0471 18.0445 13.2979 18.3336 12.521 18.3333H7.47768C6.7009 18.3334 5.95193 18.0442 5.37681 17.5221C4.80168 16.9999 4.44163 16.2823 4.36685 15.5092L3.39102 5.41667H2.29102C2.12526 5.41667 1.96628 5.35082 1.84907 5.23361C1.73186 5.1164 1.66602 4.95743 1.66602 4.79167C1.66602 4.62591 1.73186 4.46694 1.84907 4.34973C1.96628 4.23251 2.12526 4.16667 2.29102 4.16667H7.08268ZM8.74935 8.125C8.74935 7.95924 8.6835 7.80027 8.56629 7.68306C8.44908 7.56585 8.29011 7.5 8.12435 7.5C7.95859 7.5 7.79962 7.56585 7.68241 7.68306C7.5652 7.80027 7.49935 7.95924 7.49935 8.125V14.375C7.49935 14.5408 7.5652 14.6997 7.68241 14.8169C7.79962 14.9342 7.95859 15 8.12435 15C8.29011 15 8.44908 14.9342 8.56629 14.8169C8.6835 14.6997 8.74935 14.5408 8.74935 14.375V8.125ZM11.8743 7.5C12.0401 7.5 12.1991 7.56585 12.3163 7.68306C12.4335 7.80027 12.4993 7.95924 12.4993 8.125V14.375C12.4993 14.5408 12.4335 14.6997 12.3163 14.8169C12.1991 14.9342 12.0401 15 11.8743 15C11.7086 15 11.5496 14.9342 11.4324 14.8169C11.3152 14.6997 11.2493 14.5408 11.2493 14.375V8.125C11.2493 7.95924 11.3152 7.80027 11.4324 7.68306C11.5496 7.56585 11.7086 7.5 11.8743 7.5ZM5.61102 15.3892C5.65596 15.853 5.87205 16.2835 6.21716 16.5968C6.56226 16.91 7.01164 17.0834 7.47768 17.0833H12.521C12.9871 17.0834 13.4364 16.91 13.7815 16.5968C14.1266 16.2835 14.3427 15.853 14.3877 15.3892L15.3527 5.41667H4.64602L5.61102 15.3892Z" fill="#121212" />
                                                                                </svg>
                                                                            </a>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Earth</td>
                                                                        <td>420</td>
                                                                        <td>03 August 2023, 09:41 AM</td>
                                                                        <td class="text-center">
                                                                            <a class="delete-file action-btn" href="#">
                                                                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                                                                    <path d="M8.33268 4.16667H11.666C11.666 3.72464 11.4904 3.30072 11.1779 2.98816C10.8653 2.67559 10.4414 2.5 9.99935 2.5C9.55732 2.5 9.1334 2.67559 8.82084 2.98816C8.50828 3.30072 8.33268 3.72464 8.33268 4.16667ZM7.08268 4.16667C7.08268 3.78364 7.15812 3.40437 7.3047 3.05051C7.45128 2.69664 7.66612 2.37511 7.93695 2.10427C8.20779 1.83343 8.52932 1.61859 8.88319 1.47202C9.23706 1.32544 9.61633 1.25 9.99935 1.25C10.3824 1.25 10.7616 1.32544 11.1155 1.47202C11.4694 1.61859 11.7909 1.83343 12.0617 2.10427C12.3326 2.37511 12.5474 2.69664 12.694 3.05051C12.8406 3.40437 12.916 3.78364 12.916 4.16667H17.7077C17.8734 4.16667 18.0324 4.23251 18.1496 4.34973C18.2668 4.46694 18.3327 4.62591 18.3327 4.79167C18.3327 4.95743 18.2668 5.1164 18.1496 5.23361C18.0324 5.35082 17.8734 5.41667 17.7077 5.41667H16.6077L15.6327 15.5092C15.5579 16.2825 15.1977 17.0002 14.6224 17.5224C14.0471 18.0445 13.2979 18.3336 12.521 18.3333H7.47768C6.7009 18.3334 5.95193 18.0442 5.37681 17.5221C4.80168 16.9999 4.44163 16.2823 4.36685 15.5092L3.39102 5.41667H2.29102C2.12526 5.41667 1.96628 5.35082 1.84907 5.23361C1.73186 5.1164 1.66602 4.95743 1.66602 4.79167C1.66602 4.62591 1.73186 4.46694 1.84907 4.34973C1.96628 4.23251 2.12526 4.16667 2.29102 4.16667H7.08268ZM8.74935 8.125C8.74935 7.95924 8.6835 7.80027 8.56629 7.68306C8.44908 7.56585 8.29011 7.5 8.12435 7.5C7.95859 7.5 7.79962 7.56585 7.68241 7.68306C7.5652 7.80027 7.49935 7.95924 7.49935 8.125V14.375C7.49935 14.5408 7.5652 14.6997 7.68241 14.8169C7.79962 14.9342 7.95859 15 8.12435 15C8.29011 15 8.44908 14.9342 8.56629 14.8169C8.6835 14.6997 8.74935 14.5408 8.74935 14.375V8.125ZM11.8743 7.5C12.0401 7.5 12.1991 7.56585 12.3163 7.68306C12.4335 7.80027 12.4993 7.95924 12.4993 8.125V14.375C12.4993 14.5408 12.4335 14.6997 12.3163 14.8169C12.1991 14.9342 12.0401 15 11.8743 15C11.7086 15 11.5496 14.9342 11.4324 14.8169C11.3152 14.6997 11.2493 14.5408 11.2493 14.375V8.125C11.2493 7.95924 11.3152 7.80027 11.4324 7.68306C11.5496 7.56585 11.7086 7.5 11.8743 7.5ZM5.61102 15.3892C5.65596 15.853 5.87205 16.2835 6.21716 16.5968C6.56226 16.91 7.01164 17.0834 7.47768 17.0833H12.521C12.9871 17.0834 13.4364 16.91 13.7815 16.5968C14.1266 16.2835 14.3427 15.853 14.3877 15.3892L15.3527 5.41667H4.64602L5.61102 15.3892Z" fill="#121212" />
                                                                                </svg>
                                                                            </a>
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
                                        </div>
                                        <!--end::Col-->
                                        <!--begin::Col-->
                                        <div class="col-md-4 mb-md-0 mt-md-0 mb-5 mt-5 flex-grow-1">
                                            <div class="card card-flush shadow-xs h-100">
                                                <div class="custom-border-left mt-10 mt-md-0">
                                                    <div class="p-8">
                                                        <div>
                                                            <div class="d-flex justify-content-start align-items-center mb-1">
                                                                <div class="dark-color fs-20 fw-600 me-3">
                                                                    Upload Files
                                                                </div>
                                                            </div>
                                                            <p class="fs-14 color-neutral-grey mb-0">
                                                                Here, you can easily upload your data files to get started. We accept the following file formats: .txt, .csv, .xls, and .xlsx. These formats are perfect for handling your data efficiently and effectively.
                                                            </p>
                                                        </div>
                                                        <div class="mt-6">

                                                            <input type="hidden" name="uptoken" id="uptoken" runat="server" value="{61D800D0-0E78-4B71-8C74-62C1996A21A5}">
                                                            <div class="panel panel-flat">
                                                                <div class="panel-body">
                                                                    <div class="form-group">
                                                                        <input name="attach1" id="attach1" runat="server" type="file" accept=".txt,.csv,.xls,.xlsx" class="form-control form-control-solid">
                                                                        <div class="mt-8">
                                                                            <asp:Button ID="upload" runat="server" Text="Upload"
                                                                                CssClass="btn btn-primary btn-grad py-2 px-8 rounded-1 w-100 m-0"
                                                                                OnClientClick="uploadFile('upload'); return false;" OnClick="upload_Click" />
                                                                        </div>

                                                                        <div class="mt-6">
                                                                            <p class="fs-14 gray mb-0">
                                                                                * To ensure smooth processing, the maximum quantity of numbers allowed in a single file is 60,000.
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!--end::Col-->
                                    </div>
                                    <!--end::Row-->
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
        <uc1:footerLinks runat="server" ID="footerLinks" />
        <script src="/assets/js/manage_files.js"></script>
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
    </form>
</body>
<!--end::Body-->
</html>

