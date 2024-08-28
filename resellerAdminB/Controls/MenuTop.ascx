<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MenuTop.ascx.cs" Inherits="resellerAdminB.Controls.MenuTop" %>

<div id="kt_app_header" class="app-header" data-kt-sticky="true" data-kt-sticky-activate="{default: true, lg: true}" data-kt-sticky-name="app-header-minimize" data-kt-sticky-offset="{default: '200px', lg: '0'}" data-kt-sticky-animation="false">
    <!--begin::Header container-->
    <div class="app-container container-fluid d-flex align-items-stretch justify-content-between" id="kt_app_header_container">
        <!--begin::Sidebar mobile toggle-->
        <div class="d-flex align-items-center d-lg-none ms-n3 me-1 me-md-2" title="Show sidebar menu">
            <div class="btn btn-icon btn-active-color-primary w-35px h-35px" id="kt_app_sidebar_mobile_toggle">
                <i class="ki-duotone ki-abstract-14 fs-2 fs-md-1">
                    <span class="path1"></span>
                    <span class="path2"></span>
                </i>
            </div>
        </div>
        <!--end::Sidebar mobile toggle-->
        <!--begin::Mobile logo-->
        <div class="d-flex align-items-center flex-grow-1 flex-lg-grow-0">
            <a href="index.html" class="d-lg-none">
                <img class="h-30px" src="assets/img/LOGO.svg" alt="Reseller Logo" />
            </a>
        </div>
        <!--end::Mobile logo-->
        <!--begin::Header wrapper-->
        <div class="d-flex align-items-stretch justify-content-between flex-lg-grow-1" id="kt_app_header_wrapper">
            <!--begin::Menu wrapper-->
            <div class="app-header-menu app-header-mobile-drawer align-items-stretch" data-kt-drawer="true" data-kt-drawer-name="app-header-menu" data-kt-drawer-activate="{default: true, lg: false}" data-kt-drawer-overlay="true" data-kt-drawer-width="250px" data-kt-drawer-direction="end" data-kt-drawer-toggle="#kt_app_header_menu_toggle" data-kt-swapper="true" data-kt-swapper-mode="{default: 'append', lg: 'prepend'}" data-kt-swapper-parent="{default: '#kt_app_body', lg: '#kt_app_header_wrapper'}">
                <!--begin::Menu-->
                <div class="menu menu-rounded menu-column menu-lg-row my-5 my-lg-0 align-items-stretch fw-semibold px-2 px-lg-0" id="kt_app_header_menu" data-kt-menu="true">
                    <!--begin:Menu item-->


                    <div class="d-flex flex-column justify-content-center">
                        <ul class="breadcrumb breadcrumb-separatorless fw-semibold fs-base">
                            <!--begin::Item-->
                            <li class="breadcrumb-item text-muted" id="parentPage" runat="server"></li>
                            <!--end::Item-->
                            <!--begin::Item-->
                            <li class="breadcrumb-item text-muted">/</li>
                            <!--end::Item-->
                            <!--begin::Item-->
                            <li class="breadcrumb-item black" id="childPage" runat="server"></li>
                            <!--end::Item-->
                        </ul>
                        <!--end::Breadcrumb-->
                    </div>



                    <!--end:Menu item-->
                </div>
                <!--end::Menu-->
            </div>
            <!--end::Menu wrapper-->
            <!--begin::Navbar-->
            <div class="app-navbar flex-shrink-0">
                <!--begin::User menu-->
                <div class="app-navbar-item">
                    <!--begin::Menu wrapper-->
                    <div class="cursor-pointer symbol symbol-40px" data-kt-menu-trigger="{default: 'click', lg: 'hover'}" data-kt-menu-attach="parent" data-kt-menu-placement="bottom-end">
                        <svg width="28" height="34" viewBox="0 0 22 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M3.67537 4.80769C3.67537 5.95016 4.13106 7.04584 4.94219 7.85369C5.75332 8.66154 6.85346 9.11539 8.00057 9.11539C9.14769 9.11539 10.2478 8.66154 11.059 7.85369C11.8701 7.04584 12.3258 5.95016 12.3258 4.80769C12.3258 3.66522 11.8701 2.56954 11.059 1.76169C10.2478 0.953845 9.14769 0.5 8.00057 0.5C6.85346 0.5 5.75332 0.953845 4.94219 1.76169C4.13106 2.56954 3.67537 3.66522 3.67537 4.80769ZM14.1794 16.5H1.20382C1.03995 16.5 0.882788 16.4352 0.766912 16.3198C0.651036 16.2044 0.585938 16.0478 0.585938 15.8846V14.0385C0.585938 13.2224 0.91143 12.4398 1.49081 11.8627C2.07019 11.2857 2.856 10.9615 3.67537 10.9615H12.3258C13.1451 10.9615 13.931 11.2857 14.5103 11.8627C15.0897 12.4398 15.4152 13.2224 15.4152 14.0385V15.8846C15.4152 16.0478 15.3501 16.2044 15.2342 16.3198C15.1184 16.4352 14.9612 16.5 14.7973 16.5H14.1794Z" fill="url(#paint0_linear_1097_390)" />
                            <defs>
                                <linearGradient id="paint0_linear_1097_390" x1="8.00057" y1="1.5" x2="8.00057" y2="18.5" gradientUnits="userSpaceOnUse">
                                    <stop stop-color="#0f204b" stop-opacity="0.870588" />
                                    <stop offset="1" stop-color="#0f204b" stop-opacity="0.870588" />
                                </linearGradient>
                            </defs>
                        </svg>
                    </div>
                    <!--begin::User account menu-->
                    <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-800 menu-state-bg menu-state-color fw-semibold py-4 fs-6 w-275px" data-kt-menu="true">
                        <!--begin::Menu item-->
                        <div class="menu-item px-3">
                            <div class="menu-content d-flex align-items-center px-3">
                                <!--begin::Username-->
                                <div class="d-flex flex-column">
                                    <div class="fw-bold d-flex align-items-center fs-5">Jessica Davis</div>
                                </div>
                                <!--end::Username-->
                            </div>
                        </div>
                        <!--end::Menu item-->
                        <!--begin::Menu separator-->
                        <div class="separator my-2"></div>
                        <!--end::Menu separator-->
                        <!--begin::Menu item-->
                        <div class="menu-item px-5">
                            <a href="/general-settings.aspx" class="menu-link px-5">My Profile</a>
                        </div>
                        <!--end::Menu item-->
                        <!--begin::Menu separator-->
                        <div class="separator my-2"></div>
                        <!--end::Menu separator-->
                        <!--begin::Menu item-->
                        <div class="menu-item px-5">
                            <a href="/help.aspx" class="menu-link px-5">Help</a>
                        </div>
                        <!--end::Menu item-->
                        <!--begin::Menu item-->
                        <div class="menu-item px-5 my-1">
                            <a href="#" class="menu-link px-5">Contact us</a>
                        </div>
                        <!--end::Menu item-->
                        <!--begin::Menu item-->
                        <div class="menu-item px-5">
                            <a href="#" class="menu-link px-5">Logout</a>
                        </div>
                        <!--end::Menu item-->
                    </div>
                    <!--end::User account menu-->
                    <!--end::Menu wrapper-->
                </div>
                <!--end::User menu-->
                <a href="/reload.aspx" class="btn btn-grad btn-prem-top-menu rotate-scale-hover d-none d-lg-block">
                    <svg class="pe-1 pb-1" width="24" height="25" viewBox="0 0 24 25" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M18.15 18.1H3.85C3.5475 18.1 3.3 18.3475 3.3 18.65V19.75C3.3 20.0525 3.5475 20.3 3.85 20.3H18.15C18.4525 20.3 18.7 20.0525 18.7 19.75V18.65C18.7 18.3475 18.4525 18.1 18.15 18.1ZM20.35 7.1C19.4391 7.1 18.7 7.83906 18.7 8.75C18.7 8.99406 18.755 9.22094 18.8513 9.43063L16.3625 10.9225C15.8331 11.2388 15.1491 11.06 14.8431 10.5238L12.0416 5.62188C12.4094 5.31938 12.65 4.86563 12.65 4.35C12.65 3.43906 11.9109 2.7 11 2.7C10.0891 2.7 9.35 3.43906 9.35 4.35C9.35 4.86563 9.59063 5.31938 9.95844 5.62188L7.15688 10.5238C6.85094 11.06 6.16344 11.2388 5.6375 10.9225L3.15219 9.43063C3.245 9.22438 3.30344 8.99406 3.30344 8.75C3.30344 7.83906 2.56437 7.1 1.65344 7.1C0.7425 7.1 0 7.83906 0 8.75C0 9.66094 0.739062 10.4 1.65 10.4C1.73937 10.4 1.82875 10.3863 1.91469 10.3725L4.4 17H17.6L20.0853 10.3725C20.1712 10.3863 20.2606 10.4 20.35 10.4C21.2609 10.4 22 9.66094 22 8.75C22 7.83906 21.2609 7.1 20.35 7.1Z" fill="white" />
                    </svg>
                    Try Premium
                </a>
            </div>
            <!--end::Navbar-->
        </div>
        <!--end::Header wrapper-->
    </div>
    <!--end::Header container-->
</div>
