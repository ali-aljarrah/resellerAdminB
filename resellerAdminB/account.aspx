<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="account.aspx.cs" Inherits="resellerAdminB.account" %>


<%@ Register Src="~/Controls/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>
<%@ Register Src="~/Controls/FooterLinks.ascx" TagPrefix="uc1" TagName="FooterLinks" %>
<%@ Register Src="~/Controls/Head.ascx" TagPrefix="uc1" TagName="Head" %>
<%@ Register Src="~/Controls/Loader.ascx" TagPrefix="uc1" TagName="Loader" %>
<%@ Register Src="~/Controls/MenuTop.ascx" TagPrefix="uc1" TagName="MenuTop" %>
<%@ Register Src="~/Controls/SideBar.ascx" TagPrefix="uc1" TagName="SideBar" %>

<uc1:Head runat="server" ID="Head" />
<title>Reseller Admin - My Profile</title>
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
                <uc1:MenuTop runat="server" ID="MenuTop" parentPageText="Dashboard" childPageText="My Profile" />
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
                                            <div class="card card-flush p-4 h-100 border-0">
                                                <div class="card-body">
                                                    <!--begin::Details-->
                                                    <div class="d-flex flex-wrap flex-sm-nowrap">
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
                                                                        <div class="shadow-xs rounded-2 min-w-125px py-4 px-4 me-6 mb-3 bg-white">
                                                                            <!--begin::Label-->
                                                                            <div class="fs-12 gray mb-2">Current Balance</div>
                                                                            <!--end::Label-->
                                                                            <!--begin::Number-->
                                                                            <div class="fs-2 fw-bold" data-kt-countup="true" data-kt-countup-value="100" data-kt-countup-prefix="$">100</div>
                                                                            <!--end::Number-->
                                                                        </div>
                                                                        <!--end::Stat-->
                                                                        <!--begin::Stat-->
                                                                        <div class="shadow-xs rounded-2 min-w-125px py-4 px-4 me-6 mb-3 bg-white">
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
                                                                        <div class="shadow-xs rounded-2 min-w-125px py-4 px-4 me-6 mb-3 bg-white">
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
                                                                        <div class="shadow-xs rounded-2 min-w-125px py-4 px-4 me-6 mb-3 bg-white">
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
                                            </div>

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
                                                                <ul class="nav nav-tabs nav-line-tabs nav-line-tabs-2x mb-5 fs-6">
                                                                    <li class="nav-item">
                                                                        <a class="nav-link active" data-bs-toggle="tab" href="#kt_tab_pane_account">Account Information</a>
                                                                    </li>
                                                                    <li class="nav-item">
                                                                        <a class="nav-link" data-bs-toggle="tab" href="#kt_tab_pane_contact">Contact Details</a>
                                                                    </li>
                                                                    <li class="nav-item">
                                                                        <a class="nav-link" data-bs-toggle="tab" href="#kt_tab_pane_login">Login Methods</a>
                                                                    </li>
                                                                </ul>
                                                                <div class="tab-content" id="myTabContentAccount">
                                                                    <div class="tab-pane fade show active" id="kt_tab_pane_account" role="tabpanel">
                                                                        <!-- Start account info -->
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
                                                                                    CssClass="btn btn-grad-1 py-2 px-8 rounded-1 m-0"
                                                                                    OnClientClick="editAccountInfoSubmit('editAccountInfoSubmitBtn'); return false;" OnClick="editAccountInfoSubmitBtn_Click" />
                                                                            </div>
                                                                        </div>
                                                                        <!-- End account info -->
                                                                    </div>

                                                                    <div class="tab-pane fade" id="kt_tab_pane_contact" role="tabpanel">
                                                                        <!-- Start contact details -->
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
                                                                                    CssClass="btn btn-grad-1 py-2 px-8 rounded-1 m-0"
                                                                                    OnClientClick="editContactDetailsSubmit('editContactDetailsSubmitBtn'); return false;" OnClick="editContactDetailsSubmitBtn_Click" />
                                                                            </div>
                                                                        </div>
                                                                        <!-- End contact details -->
                                                                    </div>

                                                                    <div class="tab-pane fade" id="kt_tab_pane_login" role="tabpanel">
                                                                        <!-- Start Login methods -->
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
                                                                                    CssClass="btn btn-grad-1 py-2 px-8 rounded-1 m-0"
                                                                                    OnClientClick="changePasswordSubmit('changePasswordSubmitBtn'); return false;" OnClick="changePasswordSubmitBtn_Click" />
                                                                            </div>
                                                                        </div>
                                                                        <!-- End Login methods -->
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
                                                                        <table id="account-activity-report" class="table custom-table table-bordered table-striped gy-5">
                                                                            <thead>
                                                                                <tr class="fs-12 fw-600 dark-color">
                                                                                    <th class="white-color">Date & Time</th>
                                                                                    <th class="white-color">IP Address</th>
                                                                                    <th class="white-color">Event</th>
                                                                                </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                                <tr class="fs-12">
                                                                                    <td>5 September 2023 07:10 AM</td>
                                                                                    <td>45.228.99.232</td>
                                                                                    <td>You enabled API access</td>
                                                                                </tr>
                                                                                <tr class="fs-12">
                                                                                    <td>5 September 2023 07:09 AM</td>
                                                                                    <td>45.228.99.232</td>
                                                                                    <td>You logged into Ynet Interactive</td>
                                                                                </tr>
                                                                                <tr class="fs-12">
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
            <script src="/assets/js/account.js"></script>
            <asp:ScriptManager ID="ScriptManager1" runat="server" />
        </div>
    </form>
</body>
<!--end::Body-->
</html>

