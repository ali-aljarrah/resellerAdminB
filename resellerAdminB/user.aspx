<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="resellerAdminB.user" %>



<%@ Register Src="~/Controls/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>
<%@ Register Src="~/Controls/FooterLinks.ascx" TagPrefix="uc1" TagName="FooterLinks" %>
<%@ Register Src="~/Controls/Head.ascx" TagPrefix="uc1" TagName="Head" %>
<%@ Register Src="~/Controls/Loader.ascx" TagPrefix="uc1" TagName="Loader" %>
<%@ Register Src="~/Controls/MenuTop.ascx" TagPrefix="uc1" TagName="MenuTop" %>
<%@ Register Src="~/Controls/SideBar.ascx" TagPrefix="uc1" TagName="SideBar" %>

<uc1:Head runat="server" ID="Head" />
<title>Reseller Admin - User</title>
</head>
<!--end::Head-->
<!--begin::Body-->
<body id="kt_app_body" data-kt-app-header-fixed="true" data-kt-app-sidebar-enabled="true" data-kt-app-sidebar-fixed="true" data-kt-app-sidebar-hoverable="true" data-kt-app-sidebar-push-header="true" data-kt-app-sidebar-push-toolbar="true" data-kt-app-sidebar-push-footer="true" data-kt-app-toolbar-enabled="true" class="app-default">
    <form class="d-flex flex-fill" action="#" runat="server" name="userForm" id="userForm" novalidate="novalidate">
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
                <uc1:MenuTop runat="server" ID="MenuTop" parentPageText="Users List" childPageText="User" />
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
                                                    <div class="mb-6">
                                                        <a href="/users-list.aspx" class="d-flex align-items-center w-fit">
                                                            <span class="me-3">
                                                                <svg class="dynamic-svg-color" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                                    <path d="M11.67 18.795C11.459 19.0057 11.1731 19.124 10.875 19.124C10.5769 19.124 10.2909 19.0057 10.08 18.795L3.70499 12.42C3.49431 12.209 3.37598 11.9231 3.37598 11.625C3.37598 11.3269 3.49431 11.0409 3.70499 10.83L10.08 4.45498C10.2934 4.25636 10.5755 4.14821 10.8669 4.15324C11.1584 4.15828 11.4366 4.27611 11.643 4.48198C11.8489 4.68838 11.9667 4.96656 11.9717 5.25803C11.9768 5.54951 11.8686 5.83159 11.67 6.04498L7.21499 10.5H18.375C18.6734 10.5 18.9595 10.6185 19.1705 10.8295C19.3815 11.0405 19.5 11.3266 19.5 11.625C19.5 11.9233 19.3815 12.2095 19.1705 12.4205C18.9595 12.6315 18.6734 12.75 18.375 12.75H7.21499L11.67 17.205C11.8807 17.4159 11.999 17.7019 11.999 18C11.999 18.2981 11.8807 18.584 11.67 18.795Z" fill="#121212" />
                                                                </svg>
                                                            </span>
                                                            <span class="fs-14 color-black-1">Back to list</span>
                                                        </a>
                                                    </div>
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
                                                                        <span class="text-gray-900 text-hover-primary fs-2 fw-bold me-1">Jessica Davis</span>
                                                                        <!--begin::Menu-->
                                                                        <div class="mx-4 d-flex justify-content-between align-items-center">
                                                                            <select class="btn bg-green rounded-0 py-2 px-4" name="userStatus" id="userStatus">
                                                                                <option value="active">Active</option>
                                                                                <option value="idle">Idle</option>
                                                                            </select>
                                                                            <!--begin::button-->
                                                                            <button type="button" class="btn border border-2 rounded-0 py-1 px-4 ms-5" id="btn-modal-popup" data-bs-toggle="modal" data-bs-target="#sendMessageModal">
                                                                                <svg class="me-1" width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M1.83809 6.77814C1.58957 9.07768 1.60022 11.7297 1.94638 14.0195C2.0393 14.6352 2.33769 15.2017 2.79351 15.628C3.24933 16.0543 3.83603 16.3154 4.45913 16.3694L5.79939 16.4852C8.59528 16.7272 11.4054 16.7272 14.2013 16.4852L15.5415 16.3703C16.1646 16.3163 16.7513 16.0552 17.2071 15.6289C17.663 15.2026 17.9614 14.636 18.0543 14.0204C18.4004 11.7297 18.4111 9.07768 18.1626 6.77814C18.1305 6.51141 18.0944 6.24518 18.0543 5.97953C17.9614 5.36391 17.663 4.79734 17.2071 4.37107C16.7513 3.94479 16.1646 3.68362 15.5415 3.62963L14.2013 3.51478C11.4059 3.2729 8.59474 3.2729 5.79939 3.51478L4.45913 3.62963C3.83603 3.68362 3.24933 3.94479 2.79351 4.37107C2.33769 4.79734 2.0393 5.36391 1.94638 5.97953C1.90636 6.24519 1.87027 6.51142 1.83809 6.77814ZM5.91477 4.83461C8.63305 4.59942 11.3667 4.59942 14.085 4.83461L15.4252 4.95034C15.7507 4.97862 16.057 5.11501 16.2952 5.33757C16.5333 5.56014 16.6892 5.85594 16.738 6.17741L16.7682 6.38325L11.8323 9.11302C11.2719 9.4229 10.6414 9.58551 10.0003 9.58551C9.35925 9.58551 8.72875 9.4229 8.16835 9.11302L3.23249 6.38325L3.26267 6.17741C3.31109 5.85595 3.46684 5.56008 3.70482 5.33748C3.94281 5.11487 4.24916 4.9785 4.57452 4.95034L5.91477 4.83461ZM16.9306 7.80909C17.1031 9.81417 17.0385 11.8325 16.738 13.8225C16.6896 14.144 16.5338 14.4399 16.2958 14.6625C16.0578 14.8851 15.7515 15.0214 15.4261 15.0496L14.0859 15.1653C11.3673 15.4005 8.63335 15.4005 5.91477 15.1653L4.57452 15.0496C4.24916 15.0214 3.94281 14.8851 3.70482 14.6625C3.46684 14.4399 3.31109 14.144 3.26267 13.8225C2.96191 11.8325 2.89697 9.8142 3.06918 7.80909L7.5213 10.2712C8.2795 10.6904 9.13253 10.9105 9.99988 10.9105C10.8672 10.9105 11.7203 10.6904 12.4785 10.2712L16.9306 7.80909Z" fill="#121212" />
                                                                                </svg>
                                                                                Message Jessica
                                                                            </button>
                                                                            <!--end::button-->
                                                                        </div>
                                                                        <!--end::Menu-->
                                                                    </div>
                                                                    <!--end::Name-->
                                                                    <!--begin::Info-->
                                                                    <div class="d-flex flex-wrap fw-semibold fs-6 mb-4 pe-2">
                                                                        <span class="gray text-hover-primary me-2 mb-2">Senior Manager</span>
                                                                        <span class="gray text-hover-primary me-2 mb-2">•</span>
                                                                        <span class="gray text-hover-primary me-2 mb-2">jessica.davis@gmail.com</span>
                                                                    </div>
                                                                    <!--end::Info-->
                                                                </div>
                                                                <!--end::User-->
                                                                <!--begin::Actions-->
                                                                <div class="d-flex justify-content-between align-items-center my-4">
                                                                    <!-- login as customer button  -->
                                                                    <!--login as Add Credits button-->
                                                                    <button type="button" class="btn btn-grad-1 py-2 px-6 ms-5" id="btn-modal-popup" data-bs-toggle="modal" data-bs-target="#AddCreditsModal">
                                                                        <svg class="me-2" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                            <path d="M19 12C19 12.2652 18.8946 12.5196 18.7071 12.7071C18.5196 12.8946 18.2652 13 18 13C17.7348 13 17.4804 12.8946 17.2929 12.7071C17.1054 12.5196 17 12.2652 17 12C17 11.7348 17.1054 11.4804 17.2929 11.2929C17.4804 11.1054 17.7348 11 18 11C18.2652 11 18.5196 11.1054 18.7071 11.2929C18.8946 11.4804 19 11.7348 19 12Z" fill="white" />
                                                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M9.944 3.25H13.056C14.894 3.25 16.35 3.25 17.489 3.403C18.661 3.561 19.61 3.893 20.359 4.641C21.283 5.566 21.578 6.804 21.685 8.411C22.262 8.664 22.698 9.201 22.745 9.881C22.75 9.942 22.75 10.007 22.75 10.067V13.933C22.75 13.993 22.75 14.058 22.746 14.118C22.698 14.798 22.262 15.336 21.685 15.59C21.578 17.196 21.283 18.434 20.359 19.359C19.61 20.107 18.661 20.439 17.489 20.597C16.349 20.75 14.894 20.75 13.056 20.75H9.944C8.106 20.75 6.65 20.75 5.511 20.597C4.339 20.439 3.39 20.107 2.641 19.359C1.893 18.61 1.561 17.661 1.403 16.489C1.25 15.349 1.25 13.894 1.25 12.056V11.944C1.25 10.106 1.25 8.65 1.403 7.511C1.561 6.339 1.893 5.39 2.641 4.641C3.39 3.893 4.339 3.561 5.511 3.403C6.651 3.25 8.106 3.25 9.944 3.25ZM20.168 15.75H18.23C16.085 15.75 14.249 14.122 14.249 12C14.249 9.878 16.085 8.25 18.229 8.25H20.167C20.053 6.909 19.796 6.2 19.297 5.702C18.874 5.279 18.294 5.025 17.288 4.89C16.261 4.752 14.906 4.75 12.999 4.75H9.999C8.092 4.75 6.738 4.752 5.709 4.89C4.704 5.025 4.124 5.279 3.701 5.702C3.278 6.125 3.024 6.705 2.889 7.711C2.751 8.739 2.749 10.093 2.749 12C2.749 13.907 2.751 15.261 2.889 16.29C3.024 17.295 3.278 17.875 3.701 18.298C4.124 18.721 4.704 18.975 5.71 19.11C6.738 19.248 8.092 19.25 9.999 19.25H12.999C14.906 19.25 16.261 19.248 17.289 19.11C18.294 18.975 18.874 18.721 19.297 18.298C19.796 17.8 20.054 17.092 20.168 15.75ZM5.25 8C5.25 7.80109 5.32902 7.61032 5.46967 7.46967C5.61032 7.32902 5.80109 7.25 6 7.25H10C10.1989 7.25 10.3897 7.32902 10.5303 7.46967C10.671 7.61032 10.75 7.80109 10.75 8C10.75 8.19891 10.671 8.38968 10.5303 8.53033C10.3897 8.67098 10.1989 8.75 10 8.75H6C5.80109 8.75 5.61032 8.67098 5.46967 8.53033C5.32902 8.38968 5.25 8.19891 5.25 8ZM20.924 9.75H18.23C16.806 9.75 15.749 10.809 15.749 12C15.749 13.191 16.806 14.25 18.229 14.25H20.947C21.153 14.237 21.242 14.098 21.249 14.014V9.986C21.242 9.902 21.153 9.763 20.947 9.751H20.923L20.924 9.75Z" fill="white" />
                                                                        </svg>
                                                                        Add Credits
                                                                    </button>
                                                                    <!--login as Add Credits button-->
                                                                    <a id="loginAsCutomerBtn" href="#" class="btn border border-2 ms-3 py-2 px-8 rounded-3">
                                                                        <span class="me-2">
                                                                            <svg class="dynamic-svg-color" xmlns="http://www.w3.org/2000/svg" width="16" height="18" viewBox="0 0 16 18" fill="none">
                                                                                <path d="M9.00007 1.00903C9.00007 0.743816 8.89471 0.489463 8.70718 0.301926C8.51964 0.11439 8.26529 0.0090332 8.00007 0.0090332C7.73485 0.0090332 7.4805 0.11439 7.29296 0.301926C7.10543 0.489463 7.00007 0.743816 7.00007 1.00903L6.99707 9.01203C6.99707 9.27725 7.10243 9.5316 7.28996 9.71914C7.4775 9.90668 7.73185 10.012 7.99707 10.012C8.26229 10.012 8.51664 9.90668 8.70418 9.71914C8.89171 9.5316 8.99707 9.27725 8.99707 9.01203L9.00007 1.01003V1.00903Z" fill="#121212" />
                                                                                <path d="M0 9.99208C0 7.78208 0.895 5.78208 2.343 4.33508L3.757 5.74908C2.91785 6.58818 2.34636 7.65728 2.11482 8.82118C1.88327 9.98507 2.00207 11.1915 2.45618 12.2879C2.9103 13.3843 3.67933 14.3213 4.66604 14.9807C5.65274 15.64 6.8128 15.9919 7.9995 15.9919C9.1862 15.9919 10.3463 15.64 11.333 14.9807C12.3197 14.3213 13.0887 13.3843 13.5428 12.2879C13.9969 11.1915 14.1157 9.98507 13.8842 8.82118C13.6526 7.65728 13.0812 6.58818 12.242 5.74908L13.657 4.33508C14.5872 5.26537 15.2737 6.41071 15.6556 7.66965C16.0374 8.9286 16.1029 10.2623 15.8463 11.5526C15.5896 12.8429 15.0187 14.05 14.1841 15.067C13.3495 16.0839 12.2769 16.8794 11.0615 17.3828C9.84607 17.8863 8.52522 18.0822 7.21597 17.9533C5.90671 17.8243 4.64946 17.3745 3.55558 16.6436C2.46169 15.9128 1.56493 14.9234 0.944738 13.7632C0.324541 12.6029 4.79384e-05 11.3077 0 9.99208Z" fill="#121212" />
                                                                            </svg>
                                                                        </span>
                                                                        <span>Login</span>
                                                                    </a>
                                                                </div>
                                                                <!--end::Actions-->
                                                            </div>
                                                            <!--end::Title-->
                                                            <!--begin::Stats-->
                                                            <div class="d-flex flex-wrap flex-stack">
                                                                <!--begin::Wrapper-->
                                                                <div class="d-flex flex-column flex-grow-1 pe-8">
                                                                    <!--begin::Stats-->
                                                                    <div class="d-flex flex-wrap">
                                                                        <!--begin::Stat-->
                                                                        <div class="shadow-xs rounded min-w-125px py-2 px-4 me-6 mb-3">
                                                                            <!--begin::Label-->
                                                                            <div class="fs-12 gray mb-2">Current Balance</div>
                                                                            <!--end::Label-->
                                                                            <!--begin::Number-->
                                                                            <div class="fs-2 fw-bold" data-kt-countup="true" data-kt-countup-value="100" data-kt-countup-prefix="$">100</div>
                                                                            <!--end::Number-->
                                                                        </div>
                                                                        <!--end::Stat-->
                                                                        <!--begin::Stat-->
                                                                        <div class="shadow-xs rounded min-w-125px py-2 px-4 me-6 mb-3">
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
                                                                        <div class="shadow-xs rounded min-w-125px py-2 px-4 me-6 mb-3">
                                                                            <!--begin::Label-->
                                                                            <div class="fs-12 gray mb-2">Total Recharge</div>
                                                                            <!--end::Label-->
                                                                            <!--begin::Number-->
                                                                            <div>
                                                                                <span class="fs-2 fw-bold" data-kt-countup="true" data-kt-countup-value="100" data-kt-countup-prefix="$">0</span><span class="fs-2 fw-bold">K</span>
                                                                            </div>
                                                                            <!--end::Number-->
                                                                        </div>
                                                                        <!--end::Stat-->
                                                                        <!--begin::Stat-->
                                                                        <div class=" shadow-xs rounded min-w-125px py-2 px-4 me-6 mb-3">
                                                                            <!--begin::Label-->
                                                                            <div class="fs-12 gray mb-2">Credits Used</div>
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
                                                            <a class="nav-link active " data-bs-toggle="tab" href="#manage_account_tab">Manage Jessica Davis' s Account</a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a class="nav-link px-4" data-bs-toggle="tab" href="#account_data_tab">Account Data</a>
                                                        </li>
                                                    </ul>

                                                    <div class="card card-flush shadow-xs p-8 border-0">
                                                        <div class="tab-content mt-2" id="myTabContent">
                                                            <div class="tab-pane fade show active" id="manage_account_tab" role="tabpanel">
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
                                                                        <div class="mb-10">
                                                                            <div class="d-flex align-items-center">
                                                                                <div class="fs-20 dark-color fw-600 me-5">
                                                                                    Account Information
                                                                                </div>
                                                                            </div>
                                                                            <div class="mt-5">
                                                                                <div class="row my-4">
                                                                                    <div class="col-md-6">
                                                                                        <div class="mb-5">
                                                                                            <label for="accountType" class="form-label required">Account type</label>
                                                                                            <select required name="accountType" id="accountType" class="form-select form-custom-select" runat="server">
                                                                                                <option value="customer">Customer</option>
                                                                                                <option value="admin">Admin</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-6">
                                                                                        <div class="mb-5">
                                                                                            <label for="accountStatus" class="form-label required">Account status</label>
                                                                                            <select required name="accountStatus" id="accountStatus" class="form-select form-custom-select" runat="server">
                                                                                                <option value="active">Active</option>
                                                                                                <option value="idle">Adle</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-6">
                                                                                        <div class="mb-5">
                                                                                            <label for="userBirthday" class="form-label">Birthday</label>
                                                                                            <input class="form-control form-custom-input" value="" type="date" name="userBirthday" id="userBirthday" placeholder="Enter user birthday date" runat="server">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-6">
                                                                                        <div class="mb-5">
                                                                                            <label for="userMemberSince" class="form-label">Member since</label>
                                                                                            <input class="form-control form-custom-input disabled" disabled readonly value="21 August 2023" type="text" name="userMemberSince" id="userMemberSince" placeholder="">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-6">
                                                                                        <div class="mb-5">
                                                                                            <label for="userLastLogin" class="form-label">Last login</label>
                                                                                            <input class="form-control form-custom-input disabled" disabled readonly value="24 August 2023, 06:08 AM" type="text" name="userLastLogin" id="userLastLogin" placeholder="">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-6">
                                                                                        <div class="mb-5">
                                                                                            <label for="userLastIP" class="form-label">Last IP</label>
                                                                                            <input class="form-control form-custom-input disabled" disabled readonly value="152.168.9.1" type="text" name="userLastIP" id="userLastIP" placeholder="">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-6">
                                                                                        <div class="mb-5">
                                                                                            <label for="userTotalSMSSent" class="form-label">Total SMS sent</label>
                                                                                            <input class="form-control form-custom-input disabled" disabled readonly value="0 message(s)" type="text" name="userTotalSMSSent" id="userTotalSMSSent" placeholder="">
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <asp:Button ID="EditAccountInfoSubmitBtn" runat="server" Text="Save changes"
                                                                                    CssClass="btn btn-grad-1 py-2 px-8 rounded-3"
                                                                                    OnClientClick="editAccountSubmit('EditAccountInfoSubmitBtn'); return false;" OnClick="EditAccountInfoSubmitBtn_Click" />
                                                                            </div>
                                                                        </div>
                                                                        <!-- End account info -->
                                                                    </div>
                                                                    <div class="tab-pane fade" id="kt_tab_pane_contact" role="tabpanel">
                                                                        <!-- Start contact details -->
                                                                        <div class="mb-10">
                                                                            <div class="d-flex align-items-center">
                                                                                <div class="fs-20 dark-color fw-600 me-5">
                                                                                    Contact Details
                                                                                </div>
                                                                            </div>
                                                                            <div class="mt-5">
                                                                                <div class="row my-4">
                                                                                    <div class="col-md-6">
                                                                                        <div class="mb-5">
                                                                                            <label for="userEmail" class="form-label">Email</label>
                                                                                            <input class="form-control form-custom-input disabled" disabled readonly value="jessica.davis@gmail.com" type="text" name="userEmail" id="userEmail" placeholder="">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-6">
                                                                                        <div class="mb-5">
                                                                                            <label for="userPhoneNumber" class="form-label">Phone number</label>
                                                                                            <input class="form-control form-custom-input disabled" disabled readonly value="044 3276 454 935" type="text" name="userPhoneNumber" id="userPhoneNumber" placeholder="">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-6">
                                                                                        <div class="mb-5">
                                                                                            <label for="contactPosition" class="form-label">Position</label>
                                                                                            <input class="form-control form-custom-input" value="Senior Manager" type="text" name="contactPosition" id="contactPosition" placeholder="Enter user position">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-6">
                                                                                        <div class="mb-5">
                                                                                            <label for="contactAddress" class="form-label">Address</label>
                                                                                            <input class="form-control form-custom-input" value="" type="text" name="contactAddress" id="contactAddress" placeholder="Enter user contact address">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-6">
                                                                                        <div class="mb-5">
                                                                                            <label for="contactCity" class="form-label">City</label>
                                                                                            <input class="form-control form-custom-input" value="" type="text" name="contactCity" id="contactCity" placeholder="Enter user contact city">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-6">
                                                                                        <div class="mb-5">
                                                                                            <label for="contactState" class="form-label">State</label>
                                                                                            <input class="form-control form-custom-input" value="" type="text" name="contactState" id="contactState" placeholder="Enter user contact state">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-6">
                                                                                        <div class="mb-5">
                                                                                            <label for="userCountry" class="form-label">Country</label>
                                                                                            <input class="form-control form-custom-input disabled" disabled readonly value="Canada" type="text" name="userCountry" id="userCountry" placeholder="">
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <asp:Button ID="EditContactDetailsSubmitBtn" runat="server" Text="Save changes"
                                                                                    CssClass="btn btn-grad-1 py-2 px-8 rounded-3" OnClick="EditContactDetailsSubmitBtn_Click" />
                                                                            </div>
                                                                        </div>
                                                                        <!-- End contact details -->
                                                                    </div>
                                                                    <div class="tab-pane fade" id="kt_tab_pane_login" role="tabpanel">
                                                                        <!-- Start Login method -->
                                                                        <div class="mb-10">
                                                                            <div class="d-flex align-items-center">
                                                                                <div class="fs-20 dark-color fw-600 me-5">
                                                                                    Login Methods
                                                                                </div>
                                                                            </div>
                                                                            <div class="fs-14 text-gray-600 mt-2">
                                                                                Do not change these fields except if you want to modify the customer's login details. If changed, the new login information will be sent to the customer via email.
                                                                            </div>
                                                                            <div class="mt-5">

                                                                                <div class="row my-4">
                                                                                    <div class="col-md-6">
                                                                                        <div class="mb-5">
                                                                                            <label for="oldPassword" class="form-label required">Current password</label>
                                                                                            <input required class="form-control form-custom-input" value="" type="password" name="oldPassword" id="oldPassword" placeholder="Enter your account current password" runat="server">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-6">
                                                                                        <div class="mb-5">
                                                                                            <label for="newPassword" class="form-label required">New password</label>
                                                                                            <input required class="form-control form-custom-input" value="" type="password" name="newPassword" id="newPassword" placeholder="Enter the new password" runat="server">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-6">
                                                                                        <div class="mb-5">
                                                                                            <label for="confirmNewPassword" class="form-label required">Confirm new password</label>
                                                                                            <input required class="form-control form-custom-input" value="" type="password" name="confirmNewPassword" id="confirmNewPassword" placeholder="Confirm account new password" runat="server">
                                                                                        </div>
                                                                                    </div>
                                                                                </div>

                                                                                <asp:Button ID="ChangePasswordSubmitBtn" runat="server" Text="Change password"
                                                                                    CssClass="btn btn-grad-1 py-2 px-8 rounded-3"
                                                                                    OnClientClick="editAccountPasswordSubmit('ChangePasswordSubmitBtn'); return false;" OnClick="ChangePasswordSubmitBtn_Click" />
                                                                            </div>
                                                                        </div>
                                                                        <!-- End Login method -->
                                                                    </div>
                                                                </div>

                                                            </div>
                                                            <div class="tab-pane fade" id="account_data_tab" role="tabpanel">
                                                                <ul class="nav nav-tabs nav-line-tabs nav-line-tabs-2x mb-5 fs-6">
                                                                    <li class="nav-item">
                                                                        <a class="nav-link active" data-bs-toggle="tab" href="#kt_tab_pane_traffic">Recent Traffic</a>
                                                                    </li>
                                                                    <li class="nav-item">
                                                                        <a class="nav-link" data-bs-toggle="tab" href="#kt_tab_pane_transactions">Recent Transactions</a>
                                                                    </li>
                                                                    <li class="nav-item">
                                                                        <a class="nav-link" data-bs-toggle="tab" href="#kt_tab_pane_rates">Custom Rates</a>
                                                                    </li>
                                                                </ul>
                                                                <div class="tab-content" id="myTabContentActivity">
                                                                    <div class="tab-pane fade show active" id="kt_tab_pane_traffic" role="tabpanel">
                                                                        <div class="mb-10">
                                                                            <div class="d-flex align-items-center">
                                                                                <div class="fs-20 dark-color fw-600 me-5">
                                                                                    Recent Traffic
                                                                                </div>
                                                                            </div>
                                                                            <div class="fs-14 text-gray-600 mt-2">
                                                                                See a complete list of all the transactions your customers have done here. You can view or approve their invoices here too
                                                                            </div>
                                                                            <div class="table-responsive mt-5">
                                                                                <table id="recent-traffic-report" class="table custom-table table-bordered table-striped gy-5">
                                                                                    <thead>
                                                                                        <tr class="fs-12 fw-600 dark-color">
                                                                                            <th class="white-color">User</th>
                                                                                            <th class="white-color">Amount</th>
                                                                                            <th class="white-color">Date & Time</th>
                                                                                        </tr>
                                                                                    </thead>
                                                                                    <tbody>
                                                                                        <tr class="fs-12">
                                                                                            <td>-</td>
                                                                                            <td>-</td>
                                                                                            <td>-</td>
                                                                                        </tr>
                                                                                        <tr class="fs-12">
                                                                                            <td>-</td>
                                                                                            <td>-</td>
                                                                                            <td>-</td>
                                                                                        </tr>
                                                                                        <tr class="fs-12">
                                                                                            <td>-</td>
                                                                                            <td>-</td>
                                                                                            <td>-</td>
                                                                                        </tr>
                                                                                    </tbody>
                                                                                </table>
                                                                            </div>
                                                                        </div>
                                                                    </div>

                                                                    <div class="tab-pane fade" id="kt_tab_pane_transactions" role="tabpanel">
                                                                        <div class="mb-10">
                                                                            <div class="d-flex align-items-center">
                                                                                <div class="fs-20 dark-color fw-600 me-5">
                                                                                    Recent Transactions
                                                                                </div>
                                                                            </div>
                                                                            <div class="fs-14 text-gray-600 mt-2">
                                                                                See a complete list of all the transactions your customers have done here. You can view or approve their invoices here too
                                                                            </div>
                                                                            <div class="table-responsive mt-5">
                                                                                <table id="recent-transactions-report" class="table custom-table table-bordered table-striped gy-5">
                                                                                    <thead>
                                                                                        <tr class="fs-12 fw-600 dark-color">
                                                                                            <th class="white-color">User</th>
                                                                                            <th class="white-color">Amount</th>
                                                                                            <th class="white-color">Date & Time</th>
                                                                                        </tr>
                                                                                    </thead>
                                                                                    <tbody>
                                                                                        <tr class="fs-12">
                                                                                            <td>-</td>
                                                                                            <td>-</td>
                                                                                            <td>-</td>
                                                                                        </tr>
                                                                                        <tr class="fs-12">
                                                                                            <td>-</td>
                                                                                            <td>-</td>
                                                                                            <td>-</td>
                                                                                        </tr>
                                                                                        <tr class="fs-12">
                                                                                            <td>-</td>
                                                                                            <td>-</td>
                                                                                            <td>-</td>
                                                                                        </tr>
                                                                                    </tbody>
                                                                                </table>
                                                                            </div>
                                                                        </div>
                                                                    </div>

                                                                    <div class="tab-pane fade" id="kt_tab_pane_rates" role="tabpanel">
                                                                        <div class="mb-10">
                                                                            <div class="d-flex align-items-center">
                                                                                <div class="fs-20 dark-color fw-600 me-5">
                                                                                    Custom Rates
                                                                                </div>
                                                                            </div>
                                                                            <div class="fs-14 text-gray-600 mt-2">
                                                                                See a complete list of all the transactions your customers have done here. You can view or approve their invoices here too
                                                                            </div>
                                                                            <div class="table-responsive mt-5">
                                                                                <table id="custom-rates-report" class="table custom-table table-bordered table-striped gy-5">
                                                                                    <thead>
                                                                                        <tr class="fs-12 fw-600 dark-color">
                                                                                            <th class="white-color">User</th>
                                                                                            <th class="white-color">Amount</th>
                                                                                            <th class="white-color">Date & Time</th>
                                                                                        </tr>
                                                                                    </thead>
                                                                                    <tbody>
                                                                                        <tr class="fs-12">
                                                                                            <td>-</td>
                                                                                            <td>-</td>
                                                                                            <td>-</td>
                                                                                        </tr>
                                                                                        <tr class="fs-12">
                                                                                            <td>-</td>
                                                                                            <td>-</td>
                                                                                            <td>-</td>
                                                                                        </tr>
                                                                                        <tr class="fs-12">
                                                                                            <td>-</td>
                                                                                            <td>-</td>
                                                                                            <td>-</td>
                                                                                        </tr>
                                                                                    </tbody>
                                                                                </table>
                                                                            </div>
                                                                        </div>
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
        </div>

        <!--start modal message popup-->
        <div class="modal fade" tabindex="-1" id="sendMessageModal">
            <div class="modal-dialog p-8">
                <div class="modal-content">
                    <div class="modal-header">
                        <h3 class="modal-title">Add message</h3>
                        <!--begin::Close-->
                        <div class="btn btn-icon btn-sm btn-active-light-primary ms-2" data-bs-dismiss="modal" aria-label="Close">
                            <i class="ki-duotone ki-cross fs-1"><span class="path1"></span><span class="path2"></span></i>
                        </div>
                        <!--end::Close-->
                    </div>
                    <!--begin::Body-->
                    <div class="modal-body">
                        <div class="mb-5">
                            <label for="messageSubject" class="form-label required">Subject</label>
                            <input class="form-custom-input form-control" runat="server" type="text" name="messageSubject" id="messageSubject" value="" placeholder="Enter message subject here">
                        </div>

                        <div class="mb-5">
                            <label for="messageBody" class="form-label required">Message</label>
                            <textarea rows="5" runat="server" class="form-control form-custom-textarea" name="messageBody" id="messageBody" placeholder="Enter your message"></textarea>
                        </div>
                    </div>
                    <!--end::Body-->
                    <div class="modal-footer text-end">
                        <asp:Button ID="SendMessageSubmitBtn" runat="server" Text="Send"
                            CssClass="btn btn-grad-1 py-2 px-8 rounded-1 ms-0"
                            OnClientClick="sendEmailSubmit('SendMessageSubmitBtn'); return false;" OnClick="SendMessageSubmitBtn_Click" />
                    </div>
                </div>
            </div>
        </div>
        <!--end modal message popup-->

        <!--start modal add credit popup-->
        <div class="modal fade" tabindex="-1" id="AddCreditsModal">
            <div class="modal-dialog p-8">
                <div class="modal-content">
                    <div class="modal-header">
                        <h3 class="modal-title">Add Credits</h3>
                        <!--begin::Close-->
                        <div class="btn btn-icon btn-sm btn-active-light-primary ms-2" data-bs-dismiss="modal" aria-label="Close">
                            <i class="ki-duotone ki-cross fs-1"><span class="path1"></span><span class="path2"></span></i>
                        </div>
                        <!--end::Close-->
                    </div>
                    <!--begin::Body-->
                    <div class="modal-body">
                        <div class="row mb-4">
                            <div class="col-lg-12">
                                <div class="mb-5">
                                    <label for="creditsAmount" class="form-label required">Credits amount</label>
                                    <input required class="form-custom-input form-control" value="" type="number" name="creditsAmount" id="creditsAmount" placeholder="500" runat="server">
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--end::Body-->
                    <div class="modal-footer text-end">
                        <asp:Button ID="AddCreditsSubmitBtn" runat="server" Text="Add credits"
                            CssClass="btn btn-grad-1 py-2 px-8 rounded-1 ms-0"
                            OnClientClick="addCreditSubmit('AddCreditsSubmitBtn'); return false;" OnClick="AddCreditsSubmitBtn_Click" />
                    </div>
                </div>
            </div>
        </div>
        <!--end modal add credit popup-->

        <uc1:FooterLinks runat="server" ID="footerLinks" />
        <script src="/assets/js/user.js"></script>
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
    </form>
</body>
<!--end::Body-->
</html>
