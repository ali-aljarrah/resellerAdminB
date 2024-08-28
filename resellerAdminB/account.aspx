<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="account.aspx.cs" Inherits="resellerAdminB.account" %>


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
    <form action="/users-list.aspx" method="post" runat="server">
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
                <uc1:MenuTop runat="server" ID="MenuTop" parentPageText="Dashboard" childPageText="Account" />
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
                                    <div class="row g-5 g-xl-10 mb-xl-10 mt-0">
                                        <div class="col-md-12 mb-md-0 mb-5 mt-5">
                                            <!--begin::Details-->
                                            <div class="d-flex flex-wrap flex-sm-nowrap">
                                                <!--begin: Pic-->
                                                <div class="me-7 mb-4">
                                                    <div class="d-flex justify-content-center align-items-center w-150px h-150px bg-gray-200 rounded">
                                                        <svg width="150" height="150" viewBox="0 0 150 150" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                            <rect width="150" height="150" rx="16" fill="#F6F6FD" />
                                                            <g opacity="0.2">
                                                                <path d="M51.3333 71.0769C51.3333 76.9321 53.6687 82.5474 57.8258 86.6877C61.9829 90.8279 67.621 93.1538 73.5 93.1538C79.379 93.1538 85.0171 90.8279 89.1742 86.6877C93.3313 82.5474 95.6667 76.9321 95.6667 71.0769C95.6667 65.2218 93.3313 59.6064 89.1742 55.4662C85.0171 51.326 79.379 49 73.5 49C67.621 49 61.9829 51.326 57.8258 55.4662C53.6687 59.6064 51.3333 65.2218 51.3333 71.0769ZM105.167 131H38.6667C37.8268 131 37.0214 130.668 36.4275 130.076C35.8336 129.485 35.5 128.683 35.5 127.846V118.385C35.5 114.202 37.1681 110.191 40.1375 107.234C43.1068 104.277 47.1341 102.615 51.3333 102.615H95.6667C99.8659 102.615 103.893 104.277 106.863 107.234C109.832 110.191 111.5 114.202 111.5 118.385V127.846C111.5 128.683 111.166 129.485 110.573 130.076C109.979 130.668 109.173 131 108.333 131H105.167Z" fill="#009EF7" />
                                                            </g>
                                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M68.598 63.487C68.865 62.177 70.031 61.25 71.366 61.25H74.634C75.969 61.25 77.134 62.177 77.402 63.487C77.4315 63.6313 77.5088 63.7614 77.6212 63.8564C77.7337 63.9515 77.8748 64.0059 78.022 64.011H78.055C79.458 64.073 80.536 64.245 81.436 64.836C82.003 65.208 82.491 65.686 82.871 66.245C83.344 66.939 83.552 67.737 83.652 68.701C83.75 69.644 83.75 70.825 83.75 72.321V72.406C83.75 73.902 83.75 75.084 83.652 76.026C83.552 76.99 83.344 77.788 82.871 78.483C82.4898 79.0423 82.0022 79.5211 81.436 79.892C80.733 80.353 79.926 80.557 78.948 80.654C77.99 80.75 76.789 80.75 75.263 80.75H70.737C69.211 80.75 68.01 80.75 67.052 80.654C66.074 80.557 65.267 80.354 64.564 79.892C63.9977 79.5208 63.5101 79.0417 63.129 78.482C62.656 77.788 62.448 76.99 62.348 76.026C62.25 75.084 62.25 73.902 62.25 72.406V72.321C62.25 70.825 62.25 69.644 62.348 68.701C62.448 67.737 62.656 66.939 63.129 66.245C63.5101 65.6853 63.9977 65.2062 64.564 64.835C65.464 64.245 66.542 64.073 67.945 64.012L67.962 64.011H67.978C68.1252 64.0059 68.2663 63.9515 68.3788 63.8564C68.4912 63.7614 68.5685 63.6313 68.598 63.487ZM71.366 62.75C70.726 62.75 70.189 63.193 70.068 63.786C69.873 64.746 69.021 65.502 67.996 65.511C66.648 65.571 65.926 65.736 65.386 66.09C64.9849 66.3532 64.6393 66.6926 64.369 67.089C64.093 67.494 63.927 68.013 63.839 68.856C63.751 69.712 63.75 70.816 63.75 72.364C63.75 73.912 63.75 75.015 63.84 75.871C63.927 76.714 64.093 77.233 64.37 77.639C64.638 78.033 64.983 78.373 65.387 78.637C65.804 78.911 66.338 79.076 67.201 79.162C68.075 79.249 69.201 79.25 70.778 79.25H75.222C76.798 79.25 77.924 79.25 78.799 79.162C79.662 79.076 80.196 78.912 80.613 78.638C81.017 78.373 81.363 78.033 81.631 77.638C81.907 77.233 82.073 76.714 82.161 75.871C82.249 75.015 82.25 73.911 82.25 72.364C82.25 70.816 82.25 69.712 82.16 68.856C82.073 68.013 81.907 67.494 81.63 67.089C81.36 66.6921 81.0144 66.3523 80.613 66.089C80.075 65.736 79.353 65.571 78.003 65.511C76.979 65.501 76.127 64.747 75.932 63.786C75.868 63.4903 75.7039 63.2257 75.4674 63.0369C75.2309 62.8482 74.9366 62.7468 74.634 62.75H71.366ZM73 69.75C72.4033 69.75 71.831 69.9871 71.409 70.409C70.9871 70.831 70.75 71.4033 70.75 72C70.75 72.5967 70.9871 73.169 71.409 73.591C71.831 74.0129 72.4033 74.25 73 74.25C73.5967 74.25 74.169 74.0129 74.591 73.591C75.0129 73.169 75.25 72.5967 75.25 72C75.25 71.4033 75.0129 70.831 74.591 70.409C74.169 69.9871 73.5967 69.75 73 69.75ZM69.25 72C69.25 71.0054 69.6451 70.0516 70.3483 69.3483C71.0516 68.6451 72.0054 68.25 73 68.25C73.9946 68.25 74.9484 68.6451 75.6517 69.3483C76.3549 70.0516 76.75 71.0054 76.75 72C76.75 72.9946 76.3549 73.9484 75.6517 74.6517C74.9484 75.3549 73.9946 75.75 73 75.75C72.0054 75.75 71.0516 75.3549 70.3483 74.6517C69.6451 73.9484 69.25 72.9946 69.25 72ZM78.25 69C78.25 68.8011 78.329 68.6103 78.4697 68.4697C78.6103 68.329 78.8011 68.25 79 68.25H80C80.1989 68.25 80.3897 68.329 80.5303 68.4697C80.671 68.6103 80.75 68.8011 80.75 69C80.75 69.1989 80.671 69.3897 80.5303 69.5303C80.3897 69.671 80.1989 69.75 80 69.75H79C78.8011 69.75 78.6103 69.671 78.4697 69.5303C78.329 69.3897 78.25 69.1989 78.25 69Z" fill="white" />
                                                        </svg>
                                                    </div>
                                                </div>
                                                <!--end::Pic-->
                                                <!--begin::Info-->
                                                <div class="flex-grow-1">
                                                    <!--begin::Title-->
                                                    <div class="d-flex justify-content-between align-items-start flex-wrap mb-2">
                                                        <!--begin::User-->
                                                        <div class="d-flex flex-column">
                                                            <!--begin::Name-->
                                                            <div class="d-flex align-items-center mb-2">
                                                                <span class="text-gray-900 text-hover-primary fs-2 fw-bold me-1">Adam Selvich</span>
                                                                <!--begin::Menu-->
                                                                <div class="mx-4">
                                                                    <span class="badge badge-light-success rounded-0">Active</span>
                                                                </div>
                                                                <!--end::Menu-->
                                                            </div>
                                                            <!--end::Name-->
                                                            <!--begin::Info-->
                                                            <div class="d-flex flex-wrap fw-semibold fs-6 mb-4 pe-2">
                                                                <span class="gray text-hover-primary me-2 mb-2">Administrator</span>
                                                                <span class="gray text-hover-primary me-2 mb-2">•</span>
                                                                <span class="gray text-hover-primary me-2 mb-2">adam.selvich@gmail.com</span>
                                                            </div>
                                                            <!--end::Info-->
                                                        </div>
                                                        <!--end::User-->
                                                    </div>
                                                    <!--end::Title-->
                                                    <!--begin::Stats-->
                                                    <div class="d-flex flex-wrap flex-stack">
                                                        <!--begin::Wrapper-->
                                                        <div class="d-flex flex-column flex-grow-1 pe-8">
                                                            <!--begin::Stats-->
                                                            <div class="d-flex flex-wrap">
                                                                <!--begin::Stat-->
                                                                <div class="shadow-xs rounded-2 min-w-125px py-4 px-4 me-6 mb-3">
                                                                    <!--begin::Label-->
                                                                    <div class="fs-12 gray mb-2">Current Balance</div>
                                                                    <!--end::Label-->
                                                                    <!--begin::Number-->
                                                                    <div class="fs-2 fw-bold" data-kt-countup="true" data-kt-countup-value="100" data-kt-countup-prefix="$">100</div>
                                                                    <!--end::Number-->
                                                                </div>
                                                                <!--end::Stat-->
                                                                <!--begin::Stat-->
                                                                <div class="shadow-xs rounded-2 min-w-125px py-4 px-4 me-6 mb-3">
                                                                    <!--begin::Label-->
                                                                    <div class="fs-12 gray mb-2">Last Recharge</div>
                                                                    <!--end::Label-->
                                                                    <!--begin::Number-->
                                                                    <div>
                                                                        <span class="fs-2 fw-bold" data-kt-countup="true" data-kt-countup-value="100" data-kt-countup-prefix="$">0</span><span class="fs-2 fw-bold">K</span>
                                                                    </div>
                                                                    <!--end::Number-->
                                                                </div>
                                                                <!--end::Stat-->
                                                                <!--begin::Stat-->
                                                                <div class="shadow-xs rounded-2 min-w-125px py-4 px-4 me-6 mb-3">
                                                                    <!--begin::Label-->
                                                                    <div class="fs-12 gray mb-2">Total Recharge</div>
                                                                    <!--end::Label-->
                                                                    <!--begin::Number-->
                                                                    <div>
                                                                        <span class="fs-2 fw-bold" data-kt-countup="true" data-kt-countup-value="200" data-kt-countup-prefix="$">0</span><span class="fs-2 fw-bold">K</span>
                                                                    </div>
                                                                    <!--end::Number-->
                                                                </div>
                                                                <!--end::Stat-->
                                                                <!--begin::Stat-->
                                                                <div class="shadow-xs rounded-2 min-w-125px py-4 px-4 me-6 mb-3">
                                                                    <!--begin::Label-->
                                                                    <div class="fs-12 text-gray-400 mb-2">Credits Used</div>
                                                                    <!--end::Label-->
                                                                    <!--begin::Number-->
                                                                    <div>
                                                                        <span class="fs-2 fw-bold" data-kt-countup="true" data-kt-countup-value="100" data-kt-countup-prefix="$">0</span><span class="fs-2 fw-bold">K</span>
                                                                    </div>
                                                                    <!--end::Number-->
                                                                </div>
                                                                <!--end::Stat-->
                                                            </div>
                                                            <!--end::Stats-->
                                                        </div>
                                                        <!--end::Wrapper-->
                                                    </div>
                                                    <!--end::Stats-->
                                                </div>
                                                <!--end::Info-->
                                            </div>
                                            <!--end::Details-->
                                        </div>
                                        <!--begin::Col-->
                                        <div class="col-md-12 mb-md-0 mb-5 mt-5">
                                            <!--begin::Card widget 4-->
                                            <div class="card card-flush p-4 h-100 border-0">
                                                <!--begin::Card body-->
                                                <div class="card-body pb-4 mt-5 pt-0 ps-0 pr-0">
                                                    <ul class="nav nav-tabs nav-line-tabs nav-line-tabs-2x mb-5 fs-6">
                                                        <li class="nav-item">
                                                            <a class="nav-link active px-5" data-bs-toggle="tab" href="#my_account_tab">My Account</a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a class="nav-link px-5" data-bs-toggle="tab" href="#activity_tab">Activity</a>
                                                        </li>
                                                    </ul>
                                                    <div class="card card-flush shadow-xs p-8  border-0">
                                                        <div class="tab-content mt-2" id="myTabContent">
                                                            <div class="tab-pane fade show active" id="my_account_tab" role="tabpanel">
                                                                <div class="mb-6">
                                                                    <div class="d-flex align-items-center">
                                                                        <div class="fs-20 dark-color fw-600 me-5">
                                                                            Account Information
                                                                        </div>
                                                                    </div>
                                                                    <div class="mt-5">
                                                                        <div class="row my-4">
                                                                            <div class="col-md-4">
                                                                                <div class="mb-5">
                                                                                    <label for="accountType" class="form-label required">Account type</label>
                                                                                    <select runat="server" name="accountType" id="accountType" class="form-select form-custom-select">
                                                                                        <option value="admin">Admin</option>
                                                                                        <option value="customer">Customer</option>
                                                                                    </select>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-4">
                                                                                <div class="mb-5">
                                                                                    <label for="accountStatus" class="form-label required">Account status</label>
                                                                                    <select runat="server" name="accountStatus" id="accountStatus" class="form-select form-custom-select">
                                                                                        <option value="active">Active</option>
                                                                                        <option value="idle">Adle</option>
                                                                                    </select>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-4">
                                                                                <div class="mb-5">
                                                                                    <label for="accountAccountManager" class="form-label">Account manager</label>
                                                                                    <input class="form-control form-custom-input" value="" type="date" name="accountAccountManager" id="accountAccountManager" runat="server" placeholder="Enter user birthday date">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-4">
                                                                                <div class="mb-5">
                                                                                    <label for="userBirthday" class="form-label">Birthday</label>
                                                                                    <input class="form-control form-custom-input" value="" type="date" name="userBirthday" id="userBirthday" runat="server" placeholder="Enter user birthday date">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-4">
                                                                                <div class="mb-5">
                                                                                    <label for="userMemberSince" class="form-label">Member since</label>
                                                                                    <input class="form-control form-custom-input disabled" disabled readonly value="21 August 2023" type="text" runat="server" name="userMemberSince" id="userMemberSince" placeholder="">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-4">
                                                                                <div class="mb-5">
                                                                                    <label for="userLastLogin" class="form-label">Last login</label>
                                                                                    <input class="form-control form-custom-input disabled" disabled readonly value="24 August 2023, 06:08 AM" type="text" runat="server" name="userLastLogin" id="userLastLogin" placeholder="">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-4">
                                                                                <div class="mb-5">
                                                                                    <label for="userLastIP" class="form-label">Last IP</label>
                                                                                    <input class="form-control form-custom-input disabled" disabled readonly value="152.168.9.1" type="text" runat="server" name="userLastIP" id="userLastIP" placeholder="">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <asp:Button ID="editAccountInfoSubmitBtn" runat="server" Text="Save changes"
                                                                            CssClass="btn btn-primary btn-grad py-2 px-8 rounded-1 m-0"
                                                                            OnClientClick="editAccountInfoSubmit('editAccountInfoSubmitBtn'); return false;" OnClick="editAccountInfoSubmitBtn_Click" />
                                                                    </div>
                                                                </div>
                                                                <div class="mb-6">
                                                                    <div class="d-flex align-items-center">
                                                                        <div class="fs-20 dark-color fw-600 me-5 py-5">
                                                                            Contact Details
                                                                        </div>
                                                                    </div>
                                                                    <div class="mt-5">

                                                                        <div class="row my-4">
                                                                            <div class="col-md-4">
                                                                                <div class="mb-5">
                                                                                    <label for="userEmail" class="form-label">Email</label>
                                                                                    <input class="form-control form-custom-input disabled" disabled readonly runat="server" value="jessica.davis@gmail.com" type="text" name="userEmail" id="userEmail" placeholder="">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-4">
                                                                                <div class="mb-5">
                                                                                    <label for="userPhoneNumber" class="form-label">Phone number</label>
                                                                                    <input class="form-control form-custom-input disabled" disabled readonly runat="server" value="044 3276 454 935" type="text" name="userPhoneNumber" id="userPhoneNumber" placeholder="">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-4">
                                                                                <div class="mb-5">
                                                                                    <label for="contactPosition" class="form-label">Position</label>
                                                                                    <input class="form-control form-custom-input" value="Administrator" type="text" runat="server" name="contactPosition" id="contactPosition" placeholder="Enter user position">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-4">
                                                                                <div class="mb-5">
                                                                                    <label for="contactAddress" class="form-label">Address</label>
                                                                                    <input class="form-control form-custom-input" value="" type="text" runat="server" name="contactAddress" id="contactAddress" placeholder="Enter user contact address">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-4">
                                                                                <div class="mb-5">
                                                                                    <label for="contactCity" class="form-label">City</label>
                                                                                    <input class="form-control form-custom-input" value="" type="text" runat="server" name="contactCity" id="contactCity" placeholder="Enter user contact city">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-4">
                                                                                <div class="mb-5">
                                                                                    <label for="contactState" class="form-label">State</label>
                                                                                    <input class="form-control form-custom-input" value="" type="text" runat="server" name="contactState" id="contactState" placeholder="Enter user contact state">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-4">
                                                                                <div class="mb-5">
                                                                                    <label for="userCountry" class="form-label">Country</label>
                                                                                    <input class="form-control form-custom-input disabled" disabled readonly runat="server" value="Canada" type="text" name="userCountry" id="userCountry" placeholder="">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                          <asp:Button ID="editContactDetailsSubmitBtn" runat="server" Text="Save changes"
                                                                              CssClass="btn btn-primary btn-grad py-2 px-8 rounded-1 m-0"
                                                                              OnClientClick="editContactDetailsSubmit('editContactDetailsSubmitBtn'); return false;" OnClick="editContactDetailsSubmitBtn_Click" />
                                                                    </div>
                                                                </div>
                                                                <div class="mb-6">
                                                                    <div class="d-flex align-items-center">
                                                                        <div class="fs-20 dark-color fw-600 me-5 py-5">
                                                                            Login Methods
                                                                        </div>
                                                                    </div>
                                                                    <div class="fs-14 gray mt-2 py-2">
                                                                        Do not change these fields except if you want to modify the customer's login details. If changed, the new login information will be sent to the customer via email.
                                                                    </div>
                                                                    <div class="mt-5">
                                                                        <div class="row my-4">
                                                                            <div class="col-md-4">
                                                                                <div class="mb-5">
                                                                                    <label for="oldPassword" class="form-label required">Current password</label>
                                                                                    <input required class="form-control form-custom-input" value="" type="password" runat="server" name="oldPassword" id="oldPassword" placeholder="Enter your account current password">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-4">
                                                                                <div class="mb-5">
                                                                                    <label for="newPassword" class="form-label required">New password</label>
                                                                                    <input required class="form-control form-custom-input" value="" type="password" runat="server" name="newPassword" id="newPassword" placeholder="Enter the new password">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-4">
                                                                                <div class="mb-5">
                                                                                    <label for="confirmNewPassword" class="form-label required">Confirm new password</label>
                                                                                    <input required class="form-control form-custom-input" value="" type="password" runat="server" name="confirmNewPassword" id="confirmNewPassword" placeholder="Confirm account new password">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <asp:Button ID="changePasswordSubmitBtn" runat="server" Text="Change password"
                                                                            CssClass="btn btn-primary btn-grad py-2 px-8 rounded-1 m-0"
                                                                            OnClientClick="changePasswordSubmit('changePasswordSubmitBtn'); return false;" OnClick="changePasswordSubmitBtn_Click" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="tab-pane fade" id="activity_tab" role="tabpanel">
                                                                <div class="mb-6">
                                                                    <div class="d-flex align-items-center">
                                                                        <div class="fs-20 dark-color fw-600 me-5">
                                                                            Account Activity
                                                                        </div>
                                                                    </div>
                                                                    <div class="fs-14 text-gray-600 mt-2 py-5">
                                                                        Monitor your account activities by date and time, IP addresses and events. This will help you be informed and keeping records of the changes that are happening in your account.
                                                                    </div>
                                                                    <div class="table-responsive mt-5">
                                                                        <table id="account-activity-report" class="table custom-table table-bordered table-row-gray-300 gy-5 datatable">
                                                                            <thead>
                                                                                <tr class="fs-14 fw-600 dark-color">
                                                                                    <th class="white-color">Date & Time</th>
                                                                                    <th class="white-color">IP Address</th>
                                                                                    <th class="white-color">Event</th>
                                                                                </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td>5 September 2023 07:10 AM</td>
                                                                                    <td>45.228.99.232</td>
                                                                                    <td>You enabled API access</td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>5 September 2023 07:09 AM</td>
                                                                                    <td>45.228.99.232</td>
                                                                                    <td>You logged into Ynet Interactive</td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>5 September 2023 07:08 AM</td>
                                                                                    <td>45.228.99.232</td>
                                                                                    <td>You Logged into Ynet Interactive</td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </div>
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
            <script src="/assets/js/account.js"></script>
            <asp:ScriptManager ID="ScriptManager1" runat="server" />
        </div>
    </form>
</body>
<!--end::Body-->
</html>

