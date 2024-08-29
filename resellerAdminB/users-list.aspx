<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="users-list.aspx.cs" Inherits="resellerAdminB.user_list" %>


<%@ Register Src="~/Controls/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>
<%@ Register Src="~/Controls/FooterLinks.ascx" TagPrefix="uc1" TagName="FooterLinks" %>
<%@ Register Src="~/Controls/Head.ascx" TagPrefix="uc1" TagName="Head" %>
<%@ Register Src="~/Controls/Loader.ascx" TagPrefix="uc1" TagName="Loader" %>
<%@ Register Src="~/Controls/MenuTop.ascx" TagPrefix="uc1" TagName="MenuTop" %>
<%@ Register Src="~/Controls/SideBar.ascx" TagPrefix="uc1" TagName="SideBar" %>

<uc1:Head runat="server" ID="Head" />
<title>Reseller Admin - Users List</title>
</head>
<!--end::Head-->
<!--begin::Body-->
<body id="kt_app_body" data-kt-app-header-fixed="true" data-kt-app-sidebar-enabled="true" data-kt-app-sidebar-fixed="true" data-kt-app-sidebar-hoverable="true" data-kt-app-sidebar-push-header="true" data-kt-app-sidebar-push-toolbar="true" data-kt-app-sidebar-push-footer="true" data-kt-app-toolbar-enabled="true" class="app-default">
    <form class="d-flex flex-fill" action="/users-list.aspx" method="post" runat="server">
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
                <uc1:MenuTop runat="server" ID="MenuTop" parentPageText="Reseller Admin" childPageText="Users" />
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
                                            <div class="card card-flush shadow-xs border-0 p-8">
                                                <!--begin::Accordion-->
                                                <!--begin::Item-->
                                                <div class="d-flex justify-content-between align-items-start flex-column flex-md-row">
                                                        <!--begin::Page title-->
                                                        <div class="page-title gap-1 d-flex justify-content-between align-items-start mb-5 mb-md-0">
                                                            <div>
                                                                <!--begin::Title-->
                                                                <div class="d-flex justify-content-start align-items-center mb-1">
                                                                    <h1 class="page-heading pt-3 text-dark fw-bold m-0 me-3">Users List</h1>
                                                                </div>
                                                                <p class="fs-14 color-neutral-grey">
                                                                    View and manage all your users here.
                                                                </p>
                                                                <!--end::Title-->
                                                            </div>
                                                        </div>
                                                        <!--end::Page title-->
                                                        <!--begin::Header-->
                                                        <button type="button" class="btn btn-grad-1" id="btn-modal-popup" data-bs-toggle="modal" data-bs-target="#popupUserList">
                                                            Add new user
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
                                                                    <th class="white-color">Full Name</th>
                                                                    <th class="white-color">Email</th>
                                                                    <th class="white-color">Joined On</th>
                                                                    <th class="white-color">Status</th>
                                                                    <th></th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr class="fs-12">
                                                                    <td>Jessica Davis</td>
                                                                    <td>jessica.davis@gmail.com</td>
                                                                    <td>22/08/2023</td>
                                                                    <td class="text-success">ACTIVE</td>
                                                                    <td>
                                                                        <div class="d-flex justify-content-center align-items-center">
                                                                            <a class="delete-user me-5 action-btn" href="#" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete user" onclick="confirmDelete('123');">
                                                                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                                                                    <path d="M8.33366 4.16667H11.667C11.667 3.72464 11.4914 3.30072 11.1788 2.98816C10.8663 2.67559 10.4424 2.5 10.0003 2.5C9.5583 2.5 9.13438 2.67559 8.82182 2.98816C8.50925 3.30072 8.33366 3.72464 8.33366 4.16667ZM7.08366 4.16667C7.08366 3.78364 7.1591 3.40437 7.30568 3.05051C7.45225 2.69664 7.66709 2.37511 7.93793 2.10427C8.20877 1.83343 8.5303 1.61859 8.88417 1.47202C9.23803 1.32544 9.6173 1.25 10.0003 1.25C10.3833 1.25 10.7626 1.32544 11.1165 1.47202C11.4704 1.61859 11.7919 1.83343 12.0627 2.10427C12.3336 2.37511 12.5484 2.69664 12.695 3.05051C12.8416 3.40437 12.917 3.78364 12.917 4.16667H17.7087C17.8744 4.16667 18.0334 4.23251 18.1506 4.34973C18.2678 4.46694 18.3337 4.62591 18.3337 4.79167C18.3337 4.95743 18.2678 5.1164 18.1506 5.23361C18.0334 5.35082 17.8744 5.41667 17.7087 5.41667H16.6087L15.6337 15.5092C15.5589 16.2825 15.1987 17.0002 14.6234 17.5224C14.0481 18.0445 13.2989 18.3336 12.522 18.3333H7.47866C6.70188 18.3334 5.95291 18.0442 5.37778 17.5221C4.80266 16.9999 4.4426 16.2823 4.36783 15.5092L3.39199 5.41667H2.29199C2.12623 5.41667 1.96726 5.35082 1.85005 5.23361C1.73284 5.1164 1.66699 4.95743 1.66699 4.79167C1.66699 4.62591 1.73284 4.46694 1.85005 4.34973C1.96726 4.23251 2.12623 4.16667 2.29199 4.16667H7.08366ZM8.75033 8.125C8.75033 7.95924 8.68448 7.80027 8.56727 7.68306C8.45006 7.56585 8.29109 7.5 8.12533 7.5C7.95957 7.5 7.80059 7.56585 7.68338 7.68306C7.56617 7.80027 7.50033 7.95924 7.50033 8.125V14.375C7.50033 14.5408 7.56617 14.6997 7.68338 14.8169C7.80059 14.9342 7.95957 15 8.12533 15C8.29109 15 8.45006 14.9342 8.56727 14.8169C8.68448 14.6997 8.75033 14.5408 8.75033 14.375V8.125ZM11.8753 7.5C12.0411 7.5 12.2001 7.56585 12.3173 7.68306C12.4345 7.80027 12.5003 7.95924 12.5003 8.125V14.375C12.5003 14.5408 12.4345 14.6997 12.3173 14.8169C12.2001 14.9342 12.0411 15 11.8753 15C11.7096 15 11.5506 14.9342 11.4334 14.8169C11.3162 14.6997 11.2503 14.5408 11.2503 14.375V8.125C11.2503 7.95924 11.3162 7.80027 11.4334 7.68306C11.5506 7.56585 11.7096 7.5 11.8753 7.5ZM5.61199 15.3892C5.65694 15.853 5.87303 16.2835 6.21813 16.5968C6.56324 16.91 7.01261 17.0834 7.47866 17.0833H12.522C12.988 17.0834 13.4374 16.91 13.7825 16.5968C14.1276 16.2835 14.3437 15.853 14.3887 15.3892L15.3537 5.41667H4.64699L5.61199 15.3892Z" fill="#121212" />
                                                                                </svg>
                                                                            </a>
                                                                            <a class="view-user action-btn" href="/user.aspx" data-bs-toggle="tooltip" data-bs-placement="top" title="View and edit user details">
                                                                                <svg xmlns="http://www.w3.org/2000/svg" width="18" height="16" viewBox="0 0 18 16" fill="none">
                                                                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M9 4.875C8.1712 4.875 7.37634 5.20424 6.79029 5.79029C6.20424 6.37634 5.875 7.1712 5.875 8C5.875 8.8288 6.20424 9.62366 6.79029 10.2097C7.37634 10.7958 8.1712 11.125 9 11.125C9.8288 11.125 10.6237 10.7958 11.2097 10.2097C11.7958 9.62366 12.125 8.8288 12.125 8C12.125 7.1712 11.7958 6.37634 11.2097 5.79029C10.6237 5.20424 9.8288 4.875 9 4.875ZM7.125 8C7.125 7.50272 7.32254 7.02581 7.67417 6.67417C8.02581 6.32254 8.50272 6.125 9 6.125C9.49728 6.125 9.97419 6.32254 10.3258 6.67417C10.6775 7.02581 10.875 7.50272 10.875 8C10.875 8.49728 10.6775 8.97419 10.3258 9.32582C9.97419 9.67746 9.49728 9.875 9 9.875C8.50272 9.875 8.02581 9.67746 7.67417 9.32582C7.32254 8.97419 7.125 8.49728 7.125 8Z" fill="#121212" />
                                                                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M9.00033 0.708374C5.23866 0.708374 2.70449 2.96171 1.23366 4.87254L1.20783 4.90671C0.874492 5.33921 0.568659 5.73671 0.361159 6.20671C0.138659 6.71087 0.0419922 7.26004 0.0419922 8.00004C0.0419922 8.74004 0.138659 9.28921 0.361159 9.79337C0.569492 10.2634 0.875326 10.6617 1.20783 11.0934L1.23449 11.1275C2.70449 13.0384 5.23866 15.2917 9.00033 15.2917C12.762 15.2917 15.2962 13.0384 16.767 11.1275L16.7928 11.0934C17.1262 10.6617 17.432 10.2634 17.6395 9.79337C17.862 9.28921 17.9587 8.74004 17.9587 8.00004C17.9587 7.26004 17.862 6.71087 17.6395 6.20671C17.4312 5.73671 17.1253 5.33921 16.7928 4.90671L16.7662 4.87254C15.2962 2.96171 12.762 0.708374 9.00033 0.708374ZM2.22533 5.63504C3.58199 3.87087 5.79199 1.95837 9.00033 1.95837C12.2087 1.95837 14.4178 3.87087 15.7753 5.63504C16.142 6.11004 16.3553 6.39337 16.4962 6.71171C16.6278 7.01004 16.7087 7.37421 16.7087 8.00004C16.7087 8.62587 16.6278 8.99004 16.4962 9.28837C16.3553 9.60671 16.1412 9.89004 15.7762 10.365C14.417 12.1292 12.2087 14.0417 9.00033 14.0417C5.79199 14.0417 3.58283 12.1292 2.22533 10.365C1.85866 9.89004 1.64533 9.60671 1.50449 9.28837C1.37283 8.99004 1.29199 8.62587 1.29199 8.00004C1.29199 7.37421 1.37283 7.01004 1.50449 6.71171C1.64533 6.39337 1.86033 6.11004 2.22533 5.63504Z" fill="#121212" />
                                                                                </svg>
                                                                            </a>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr class="fs-12">
                                                                    <td>Thorin Deep</td>
                                                                    <td>deep.thorin@hotmail.com</td>
                                                                    <td>22/08/2023</td>
                                                                    <td class="text-success">ACTIVE</td>
                                                                    <td>
                                                                        <div class="d-flex justify-content-center align-items-center">
                                                                            <a class="delete-user me-5 action-btn" href="#" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete user" onclick="confirmDelete('124');">
                                                                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                                                                    <path d="M8.33366 4.16667H11.667C11.667 3.72464 11.4914 3.30072 11.1788 2.98816C10.8663 2.67559 10.4424 2.5 10.0003 2.5C9.5583 2.5 9.13438 2.67559 8.82182 2.98816C8.50925 3.30072 8.33366 3.72464 8.33366 4.16667ZM7.08366 4.16667C7.08366 3.78364 7.1591 3.40437 7.30568 3.05051C7.45225 2.69664 7.66709 2.37511 7.93793 2.10427C8.20877 1.83343 8.5303 1.61859 8.88417 1.47202C9.23803 1.32544 9.6173 1.25 10.0003 1.25C10.3833 1.25 10.7626 1.32544 11.1165 1.47202C11.4704 1.61859 11.7919 1.83343 12.0627 2.10427C12.3336 2.37511 12.5484 2.69664 12.695 3.05051C12.8416 3.40437 12.917 3.78364 12.917 4.16667H17.7087C17.8744 4.16667 18.0334 4.23251 18.1506 4.34973C18.2678 4.46694 18.3337 4.62591 18.3337 4.79167C18.3337 4.95743 18.2678 5.1164 18.1506 5.23361C18.0334 5.35082 17.8744 5.41667 17.7087 5.41667H16.6087L15.6337 15.5092C15.5589 16.2825 15.1987 17.0002 14.6234 17.5224C14.0481 18.0445 13.2989 18.3336 12.522 18.3333H7.47866C6.70188 18.3334 5.95291 18.0442 5.37778 17.5221C4.80266 16.9999 4.4426 16.2823 4.36783 15.5092L3.39199 5.41667H2.29199C2.12623 5.41667 1.96726 5.35082 1.85005 5.23361C1.73284 5.1164 1.66699 4.95743 1.66699 4.79167C1.66699 4.62591 1.73284 4.46694 1.85005 4.34973C1.96726 4.23251 2.12623 4.16667 2.29199 4.16667H7.08366ZM8.75033 8.125C8.75033 7.95924 8.68448 7.80027 8.56727 7.68306C8.45006 7.56585 8.29109 7.5 8.12533 7.5C7.95957 7.5 7.80059 7.56585 7.68338 7.68306C7.56617 7.80027 7.50033 7.95924 7.50033 8.125V14.375C7.50033 14.5408 7.56617 14.6997 7.68338 14.8169C7.80059 14.9342 7.95957 15 8.12533 15C8.29109 15 8.45006 14.9342 8.56727 14.8169C8.68448 14.6997 8.75033 14.5408 8.75033 14.375V8.125ZM11.8753 7.5C12.0411 7.5 12.2001 7.56585 12.3173 7.68306C12.4345 7.80027 12.5003 7.95924 12.5003 8.125V14.375C12.5003 14.5408 12.4345 14.6997 12.3173 14.8169C12.2001 14.9342 12.0411 15 11.8753 15C11.7096 15 11.5506 14.9342 11.4334 14.8169C11.3162 14.6997 11.2503 14.5408 11.2503 14.375V8.125C11.2503 7.95924 11.3162 7.80027 11.4334 7.68306C11.5506 7.56585 11.7096 7.5 11.8753 7.5ZM5.61199 15.3892C5.65694 15.853 5.87303 16.2835 6.21813 16.5968C6.56324 16.91 7.01261 17.0834 7.47866 17.0833H12.522C12.988 17.0834 13.4374 16.91 13.7825 16.5968C14.1276 16.2835 14.3437 15.853 14.3887 15.3892L15.3537 5.41667H4.64699L5.61199 15.3892Z" fill="#121212" />
                                                                                </svg>
                                                                            </a>
                                                                            <a class="view-user action-btn" href="/user.aspx" data-bs-toggle="tooltip" data-bs-placement="top" title="View and edit user details">
                                                                                <svg xmlns="http://www.w3.org/2000/svg" width="18" height="16" viewBox="0 0 18 16" fill="none">
                                                                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M9 4.875C8.1712 4.875 7.37634 5.20424 6.79029 5.79029C6.20424 6.37634 5.875 7.1712 5.875 8C5.875 8.8288 6.20424 9.62366 6.79029 10.2097C7.37634 10.7958 8.1712 11.125 9 11.125C9.8288 11.125 10.6237 10.7958 11.2097 10.2097C11.7958 9.62366 12.125 8.8288 12.125 8C12.125 7.1712 11.7958 6.37634 11.2097 5.79029C10.6237 5.20424 9.8288 4.875 9 4.875ZM7.125 8C7.125 7.50272 7.32254 7.02581 7.67417 6.67417C8.02581 6.32254 8.50272 6.125 9 6.125C9.49728 6.125 9.97419 6.32254 10.3258 6.67417C10.6775 7.02581 10.875 7.50272 10.875 8C10.875 8.49728 10.6775 8.97419 10.3258 9.32582C9.97419 9.67746 9.49728 9.875 9 9.875C8.50272 9.875 8.02581 9.67746 7.67417 9.32582C7.32254 8.97419 7.125 8.49728 7.125 8Z" fill="#121212" />
                                                                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M9.00033 0.708374C5.23866 0.708374 2.70449 2.96171 1.23366 4.87254L1.20783 4.90671C0.874492 5.33921 0.568659 5.73671 0.361159 6.20671C0.138659 6.71087 0.0419922 7.26004 0.0419922 8.00004C0.0419922 8.74004 0.138659 9.28921 0.361159 9.79337C0.569492 10.2634 0.875326 10.6617 1.20783 11.0934L1.23449 11.1275C2.70449 13.0384 5.23866 15.2917 9.00033 15.2917C12.762 15.2917 15.2962 13.0384 16.767 11.1275L16.7928 11.0934C17.1262 10.6617 17.432 10.2634 17.6395 9.79337C17.862 9.28921 17.9587 8.74004 17.9587 8.00004C17.9587 7.26004 17.862 6.71087 17.6395 6.20671C17.4312 5.73671 17.1253 5.33921 16.7928 4.90671L16.7662 4.87254C15.2962 2.96171 12.762 0.708374 9.00033 0.708374ZM2.22533 5.63504C3.58199 3.87087 5.79199 1.95837 9.00033 1.95837C12.2087 1.95837 14.4178 3.87087 15.7753 5.63504C16.142 6.11004 16.3553 6.39337 16.4962 6.71171C16.6278 7.01004 16.7087 7.37421 16.7087 8.00004C16.7087 8.62587 16.6278 8.99004 16.4962 9.28837C16.3553 9.60671 16.1412 9.89004 15.7762 10.365C14.417 12.1292 12.2087 14.0417 9.00033 14.0417C5.79199 14.0417 3.58283 12.1292 2.22533 10.365C1.85866 9.89004 1.64533 9.60671 1.50449 9.28837C1.37283 8.99004 1.29199 8.62587 1.29199 8.00004C1.29199 7.37421 1.37283 7.01004 1.50449 6.71171C1.64533 6.39337 1.86033 6.11004 2.22533 5.63504Z" fill="#121212" />
                                                                                </svg>
                                                                            </a>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr class="fs-12">
                                                                    <td>Hugh Janus</td>
                                                                    <td>hughjanus@hotmail.com</td>
                                                                    <td>22/08/2023</td>
                                                                    <td class="text-success">ACTIVE</td>
                                                                    <td>
                                                                        <div class="d-flex justify-content-center align-items-center">
                                                                            <a class="delete-user me-5 action-btn" href="#" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete user" onclick="confirmDelete('125');">
                                                                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                                                                    <path d="M8.33366 4.16667H11.667C11.667 3.72464 11.4914 3.30072 11.1788 2.98816C10.8663 2.67559 10.4424 2.5 10.0003 2.5C9.5583 2.5 9.13438 2.67559 8.82182 2.98816C8.50925 3.30072 8.33366 3.72464 8.33366 4.16667ZM7.08366 4.16667C7.08366 3.78364 7.1591 3.40437 7.30568 3.05051C7.45225 2.69664 7.66709 2.37511 7.93793 2.10427C8.20877 1.83343 8.5303 1.61859 8.88417 1.47202C9.23803 1.32544 9.6173 1.25 10.0003 1.25C10.3833 1.25 10.7626 1.32544 11.1165 1.47202C11.4704 1.61859 11.7919 1.83343 12.0627 2.10427C12.3336 2.37511 12.5484 2.69664 12.695 3.05051C12.8416 3.40437 12.917 3.78364 12.917 4.16667H17.7087C17.8744 4.16667 18.0334 4.23251 18.1506 4.34973C18.2678 4.46694 18.3337 4.62591 18.3337 4.79167C18.3337 4.95743 18.2678 5.1164 18.1506 5.23361C18.0334 5.35082 17.8744 5.41667 17.7087 5.41667H16.6087L15.6337 15.5092C15.5589 16.2825 15.1987 17.0002 14.6234 17.5224C14.0481 18.0445 13.2989 18.3336 12.522 18.3333H7.47866C6.70188 18.3334 5.95291 18.0442 5.37778 17.5221C4.80266 16.9999 4.4426 16.2823 4.36783 15.5092L3.39199 5.41667H2.29199C2.12623 5.41667 1.96726 5.35082 1.85005 5.23361C1.73284 5.1164 1.66699 4.95743 1.66699 4.79167C1.66699 4.62591 1.73284 4.46694 1.85005 4.34973C1.96726 4.23251 2.12623 4.16667 2.29199 4.16667H7.08366ZM8.75033 8.125C8.75033 7.95924 8.68448 7.80027 8.56727 7.68306C8.45006 7.56585 8.29109 7.5 8.12533 7.5C7.95957 7.5 7.80059 7.56585 7.68338 7.68306C7.56617 7.80027 7.50033 7.95924 7.50033 8.125V14.375C7.50033 14.5408 7.56617 14.6997 7.68338 14.8169C7.80059 14.9342 7.95957 15 8.12533 15C8.29109 15 8.45006 14.9342 8.56727 14.8169C8.68448 14.6997 8.75033 14.5408 8.75033 14.375V8.125ZM11.8753 7.5C12.0411 7.5 12.2001 7.56585 12.3173 7.68306C12.4345 7.80027 12.5003 7.95924 12.5003 8.125V14.375C12.5003 14.5408 12.4345 14.6997 12.3173 14.8169C12.2001 14.9342 12.0411 15 11.8753 15C11.7096 15 11.5506 14.9342 11.4334 14.8169C11.3162 14.6997 11.2503 14.5408 11.2503 14.375V8.125C11.2503 7.95924 11.3162 7.80027 11.4334 7.68306C11.5506 7.56585 11.7096 7.5 11.8753 7.5ZM5.61199 15.3892C5.65694 15.853 5.87303 16.2835 6.21813 16.5968C6.56324 16.91 7.01261 17.0834 7.47866 17.0833H12.522C12.988 17.0834 13.4374 16.91 13.7825 16.5968C14.1276 16.2835 14.3437 15.853 14.3887 15.3892L15.3537 5.41667H4.64699L5.61199 15.3892Z" fill="#121212" />
                                                                                </svg>
                                                                            </a>
                                                                            <a class="view-user action-btn" href="/user.aspx" data-bs-toggle="tooltip" data-bs-placement="top" title="View and edit user details">
                                                                                <svg xmlns="http://www.w3.org/2000/svg" width="18" height="16" viewBox="0 0 18 16" fill="none">
                                                                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M9 4.875C8.1712 4.875 7.37634 5.20424 6.79029 5.79029C6.20424 6.37634 5.875 7.1712 5.875 8C5.875 8.8288 6.20424 9.62366 6.79029 10.2097C7.37634 10.7958 8.1712 11.125 9 11.125C9.8288 11.125 10.6237 10.7958 11.2097 10.2097C11.7958 9.62366 12.125 8.8288 12.125 8C12.125 7.1712 11.7958 6.37634 11.2097 5.79029C10.6237 5.20424 9.8288 4.875 9 4.875ZM7.125 8C7.125 7.50272 7.32254 7.02581 7.67417 6.67417C8.02581 6.32254 8.50272 6.125 9 6.125C9.49728 6.125 9.97419 6.32254 10.3258 6.67417C10.6775 7.02581 10.875 7.50272 10.875 8C10.875 8.49728 10.6775 8.97419 10.3258 9.32582C9.97419 9.67746 9.49728 9.875 9 9.875C8.50272 9.875 8.02581 9.67746 7.67417 9.32582C7.32254 8.97419 7.125 8.49728 7.125 8Z" fill="#121212" />
                                                                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M9.00033 0.708374C5.23866 0.708374 2.70449 2.96171 1.23366 4.87254L1.20783 4.90671C0.874492 5.33921 0.568659 5.73671 0.361159 6.20671C0.138659 6.71087 0.0419922 7.26004 0.0419922 8.00004C0.0419922 8.74004 0.138659 9.28921 0.361159 9.79337C0.569492 10.2634 0.875326 10.6617 1.20783 11.0934L1.23449 11.1275C2.70449 13.0384 5.23866 15.2917 9.00033 15.2917C12.762 15.2917 15.2962 13.0384 16.767 11.1275L16.7928 11.0934C17.1262 10.6617 17.432 10.2634 17.6395 9.79337C17.862 9.28921 17.9587 8.74004 17.9587 8.00004C17.9587 7.26004 17.862 6.71087 17.6395 6.20671C17.4312 5.73671 17.1253 5.33921 16.7928 4.90671L16.7662 4.87254C15.2962 2.96171 12.762 0.708374 9.00033 0.708374ZM2.22533 5.63504C3.58199 3.87087 5.79199 1.95837 9.00033 1.95837C12.2087 1.95837 14.4178 3.87087 15.7753 5.63504C16.142 6.11004 16.3553 6.39337 16.4962 6.71171C16.6278 7.01004 16.7087 7.37421 16.7087 8.00004C16.7087 8.62587 16.6278 8.99004 16.4962 9.28837C16.3553 9.60671 16.1412 9.89004 15.7762 10.365C14.417 12.1292 12.2087 14.0417 9.00033 14.0417C5.79199 14.0417 3.58283 12.1292 2.22533 10.365C1.85866 9.89004 1.64533 9.60671 1.50449 9.28837C1.37283 8.99004 1.29199 8.62587 1.29199 8.00004C1.29199 7.37421 1.37283 7.01004 1.50449 6.71171C1.64533 6.39337 1.86033 6.11004 2.22533 5.63504Z" fill="#121212" />
                                                                                </svg>
                                                                            </a>
                                                                        </div>
                                                                    </td>
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
        <div class="modal fade" tabindex="-1" id="popupUserList">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h3 class="modal-title">Add New User</h3>

                        <!--begin::Close-->
                        <div class="btn btn-icon btn-sm btn-active-light-primary ms-2" data-bs-dismiss="modal" aria-label="Close">
                            <i class="ki-duotone ki-cross fs-1"><span class="path1"></span><span class="path2"></span></i>
                        </div>
                        <!--end::Close-->
                    </div>
                    <!--begin::Body-->

                    <div class="modal-body">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="mb-5">
                                    <label for="newUserFullName" class="form-label required">Full name</label>
                                    <input class="form-control form-custom-input" value="" type="text" name="newUserFullName" id="newUserFullName" runat="server" placeholder="Enter new user full name">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="mb-5">
                                    <label for="newUserEmail" class="form-label required">Email</label>
                                    <input class="form-control form-custom-input" value="" type="email" name="newUserEmail" id="newUserEmail" runat="server" placeholder="Enter new user email">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="mb-5">
                                    <label for="newUserPhoneNumber" class="form-label required">Phone number</label>
                                    <input class="form-control form-custom-input" value="" type="text" onkeypress="return goodchars(event,'0123456789,+');" name="newUserPhoneNumber" id="newUserPhoneNumber" runat="server" placeholder="Enter new user phone number">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="mb-5">
                                    <label for="newUserAddress" class="form-label">Address</label>
                                    <input class="form-control form-custom-input" value="" type="text" name="newUserAddress" id="newUserAddress" runat="server" placeholder="Enter new user address">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="mb-5">
                                    <label for="newUserCity" class="form-label">City</label>
                                    <input class="form-control form-custom-input" value="" type="text" name="newUserCity" id="newUserCity" runat="server" placeholder="Enter new user city">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="mb-5">
                                    <label for="newUserState" class="form-label">State</label>
                                    <input class="form-control form-custom-input" value="" type="text" name="newUserState" id="newUserState" runat="server" placeholder="Enter new user state">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="mb-5">
                                    <label for="newUserCountry" class="form-label required">Country</label>
                                    <select runat="server" name="newUserCountry" id="newUserCountry" class="form-select form-custom-select">
                                        <option value="" selected>Select...</option>
                                        <option value="USA">USA</option>
                                        <option value="canada">Canada</option>
                                        <option value="france">France</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--end::Body-->
                    <div class="modal-footer">
                        <asp:Button ID="AddNewUserSubmitBtn" runat="server" Text="Add new user"
                            CssClass="btn btn-grad-1 py-2 px-6 rounded-1"
                            OnClientClick="addNewUserSubmit('AddNewUserSubmitBtn'); return false;" OnClick="AddNewUserSubmitBtn_Click"/>
                    </div>
                </div>
            </div>
        </div>
        <uc1:footerLinks runat="server" ID="footerLinks" />
        <script src="/assets/js/user-list.js"></script>
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
    </form>
</body>
<!--end::Body-->
</html>

