<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="resellerAdminB.index" %>

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
<body id="kt_app_body" data-kt-app-layout="dark-sidebar" data-kt-app-header-fixed="true" data-kt-app-sidebar-enabled="true" data-kt-app-sidebar-fixed="true" data-kt-app-sidebar-hoverable="true" data-kt-app-sidebar-push-header="true" data-kt-app-sidebar-push-toolbar="true" data-kt-app-sidebar-push-footer="true" data-kt-app-toolbar-enabled="true" class="app-default">
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
            <uc1:MenuTop runat="server" ID="MenuTop" parentPageText="Home" childPageText="Dashboard" />
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
                                <div class="row g-5 g-xl-10">
                                    <div class="col-xl-12 d-flex">
                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <g clip-path="url(#clip0_1291_9557)">
                                                <path d="M1.65843 10.206V16.2756C1.65828 17.0726 1.81512 17.8619 2.12002 18.5983C2.42491 19.3347 2.87188 20.0038 3.4354 20.5674C3.99892 21.131 4.66795 21.5781 5.40428 21.8832C6.14061 22.1882 6.92982 22.3452 7.72683 22.3452H12.1392C12.9362 22.3452 13.7255 22.1882 14.4618 21.8832C15.1981 21.5781 15.8671 21.131 16.4307 20.5674C16.9942 20.0038 17.4412 19.3347 17.746 18.5983C18.0509 17.8619 18.2078 17.0726 18.2076 16.2756V10.2072L1.65843 10.206ZM14.2644 0.19202C14.4328 0.33301 14.5382 0.535105 14.5576 0.753847C14.577 0.972589 14.5086 1.19006 14.3676 1.35842C13.5972 2.27642 13.4268 2.90282 13.6644 3.32282C13.7388 3.45362 14.376 4.46042 14.5224 4.77122C14.8536 5.47322 14.8968 6.15362 14.6112 6.95762C14.4012 7.53507 14.0966 8.07361 13.71 8.55122H18.3672C18.8916 8.57042 19.272 8.70362 19.5072 8.95322C19.6392 9.09002 19.7328 9.26282 19.7916 9.47162L19.8636 9.46922C20.9612 9.46922 22.0137 9.90521 22.7898 10.6813C23.5658 11.4573 24.0018 12.5099 24.0018 13.6074C24.0018 14.7049 23.5658 15.7575 22.7898 16.5336C22.0137 17.3096 20.9612 17.7456 19.8636 17.7456L19.7244 17.7408C19.3839 19.5025 18.4407 21.0907 17.0568 22.2328C15.673 23.3749 13.9347 23.9998 12.1404 24H7.72563C6.71131 24 5.70692 23.8002 4.76982 23.412C3.83272 23.0238 2.98126 22.4548 2.26408 21.7375C1.5469 21.0202 0.978039 20.1687 0.589982 19.2315C0.201926 18.2944 0.00227544 17.2899 0.00243304 16.2756V10.0044C-0.021567 9.48482 0.0768331 9.11642 0.295233 8.90042C0.514833 8.68442 0.838833 8.56802 1.26603 8.55242H4.80963C4.85578 8.4755 4.91415 8.4066 4.98243 8.34842C5.71443 7.72802 6.19203 7.08002 6.43203 6.40442C6.56883 6.02042 6.55323 5.79242 6.40563 5.47922C6.31203 5.28002 5.72283 4.34882 5.60523 4.14002C4.95843 2.99762 5.31483 1.68722 6.47883 0.29762C6.54729 0.21014 6.63264 0.137327 6.72982 0.0835163C6.82699 0.0297059 6.934 -0.00400177 7.04447 -0.0156C7.15494 -0.0271982 7.26662 -0.0164498 7.37285 0.0160053C7.47908 0.0484604 7.5777 0.101959 7.66283 0.173315C7.74796 0.244671 7.81786 0.332427 7.86837 0.431357C7.91888 0.530287 7.94897 0.63837 7.95684 0.749169C7.96472 0.859969 7.95022 0.97122 7.91421 1.0763C7.8782 1.18138 7.82141 1.27814 7.74723 1.36082C6.97683 2.27882 6.80763 2.90522 7.04523 3.32522C7.11843 3.45602 7.75683 4.46282 7.90323 4.77362C8.23323 5.47562 8.27763 6.15602 7.99083 6.96002C7.78115 7.53739 7.47701 8.07592 7.09083 8.55362H8.12043C8.16659 8.4767 8.22495 8.4078 8.29323 8.34962C9.02403 7.72802 9.50163 7.08002 9.74163 6.40442C9.87843 6.02042 9.86403 5.79242 9.71523 5.47922C9.62163 5.28002 9.03243 4.34882 8.91483 4.14002C8.26803 2.99762 8.62443 1.68722 9.78963 0.29762C9.8575 0.20848 9.94275 0.13404 10.0402 0.0788069C10.1377 0.0235738 10.2454 -0.0113035 10.3567 -0.0237133C10.4681 -0.0361231 10.5808 -0.0258073 10.688 0.0066095C10.7952 0.0390263 10.8948 0.0928699 10.9806 0.16488C11.0665 0.236891 11.1368 0.32557 11.1873 0.425549C11.2379 0.525528 11.2676 0.634728 11.2748 0.746536C11.2819 0.858344 11.2662 0.970435 11.2288 1.07602C11.1913 1.18161 11.1328 1.2785 11.0568 1.36082C10.2876 2.27882 10.1172 2.90522 10.3548 3.32522C10.4292 3.45602 11.0664 4.46282 11.2128 4.77362C11.544 5.47562 11.5872 6.15602 11.3004 6.96002C11.0907 7.53739 10.7866 8.07592 10.4004 8.55362H11.4312C11.477 8.47679 11.535 8.40789 11.6028 8.34962C12.3348 7.72802 12.8112 7.08002 13.0512 6.40442C13.188 6.02042 13.1736 5.79242 13.0248 5.47922C12.9312 5.28002 12.3432 4.34882 12.2244 4.14002C11.5788 2.99762 11.934 1.68722 13.0992 0.29762C13.2402 0.129618 13.442 0.0243986 13.6605 0.00505098C13.8789 -0.0142967 14.0961 0.053808 14.2644 0.19442V0.19202ZM19.8624 11.124V16.0896C20.5209 16.0896 21.1524 15.828 21.618 15.3624C22.0837 14.8968 22.3452 14.2653 22.3452 13.6068C22.3452 12.9483 22.0837 12.3168 21.618 11.8512C21.1524 11.3856 20.5209 11.124 19.8624 11.124Z" fill="#121212" />
                                            </g>
                                            <defs>
                                                <clipPath id="clip0_1291_9557">
                                                    <rect width="24" height="24" fill="white" />
                                                </clipPath>
                                            </defs>
                                        </svg>
                                        <h1 class="fw-bold color-black-1 ps-5">Hello, Adam Selvich.</h1>
                                    </div>
                                </div>
                                <!--end::Row-->
                                <!--begin::Row-->
                                <div class="row mb-5 mt-4">
                                    <div class="col-lg-6 d-flex  flex-wrap">
                                        <div class="border-1 rounded-1 px-4 py-2 m-2">
                                            <a href="#">
                                                <span class="color-black-1 fs-14 pe-2">Bulk SMS</span>
                                                <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M5.00003 5.83333C5.00003 6.29167 5.37503 6.66667 5.83337 6.66667H12.1584L4.75837 14.0667C4.68121 14.1438 4.62001 14.2354 4.57826 14.3362C4.53651 14.437 4.51501 14.5451 4.51501 14.6542C4.51501 14.7633 4.53651 14.8713 4.57826 14.9721C4.62001 15.0729 4.68121 15.1645 4.75837 15.2417C4.83552 15.3188 4.92711 15.38 5.02791 15.4218C5.12872 15.4635 5.23676 15.485 5.34587 15.485C5.45497 15.485 5.56301 15.4635 5.66382 15.4218C5.76462 15.38 5.85621 15.3188 5.93337 15.2417L13.3334 7.84167V14.1667C13.3334 14.625 13.7084 15 14.1667 15C14.625 15 15 14.625 15 14.1667V5.83333C15 5.375 14.625 5 14.1667 5H5.83337C5.37503 5 5.00003 5.375 5.00003 5.83333Z" fill="#121212" />
                                                </svg>
                                            </a>
                                        </div>
                                        <div class="border-1 rounded-1 px-4 py-2 m-2">
                                            <a href="#">
                                                <span class="color-black-1 fs-14 pe-2">API</span>
                                                <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M5.00003 5.83333C5.00003 6.29167 5.37503 6.66667 5.83337 6.66667H12.1584L4.75837 14.0667C4.68121 14.1438 4.62001 14.2354 4.57826 14.3362C4.53651 14.437 4.51501 14.5451 4.51501 14.6542C4.51501 14.7633 4.53651 14.8713 4.57826 14.9721C4.62001 15.0729 4.68121 15.1645 4.75837 15.2417C4.83552 15.3188 4.92711 15.38 5.02791 15.4218C5.12872 15.4635 5.23676 15.485 5.34587 15.485C5.45497 15.485 5.56301 15.4635 5.66382 15.4218C5.76462 15.38 5.85621 15.3188 5.93337 15.2417L13.3334 7.84167V14.1667C13.3334 14.625 13.7084 15 14.1667 15C14.625 15 15 14.625 15 14.1667V5.83333C15 5.375 14.625 5 14.1667 5H5.83337C5.37503 5 5.00003 5.375 5.00003 5.83333Z" fill="#121212" />
                                                </svg>
                                            </a>
                                        </div>
                                        <div class="border-1 rounded-1 px-4 py-2 m-2">
                                            <a href="#">
                                                <span class="color-black-1 fs-14 pe-2">Files Manager</span>
                                                <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M5.00003 5.83333C5.00003 6.29167 5.37503 6.66667 5.83337 6.66667H12.1584L4.75837 14.0667C4.68121 14.1438 4.62001 14.2354 4.57826 14.3362C4.53651 14.437 4.51501 14.5451 4.51501 14.6542C4.51501 14.7633 4.53651 14.8713 4.57826 14.9721C4.62001 15.0729 4.68121 15.1645 4.75837 15.2417C4.83552 15.3188 4.92711 15.38 5.02791 15.4218C5.12872 15.4635 5.23676 15.485 5.34587 15.485C5.45497 15.485 5.56301 15.4635 5.66382 15.4218C5.76462 15.38 5.85621 15.3188 5.93337 15.2417L13.3334 7.84167V14.1667C13.3334 14.625 13.7084 15 14.1667 15C14.625 15 15 14.625 15 14.1667V5.83333C15 5.375 14.625 5 14.1667 5H5.83337C5.37503 5 5.00003 5.375 5.00003 5.83333Z" fill="#121212" />
                                                </svg>
                                            </a>
                                        </div>
                                        <div class="border-1 rounded-1 px-4 py-2 m-2">
                                            <a href="#">
                                                <span class="color-black-1 fs-14 pe-2">Send Email</span>
                                                <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M5.00003 5.83333C5.00003 6.29167 5.37503 6.66667 5.83337 6.66667H12.1584L4.75837 14.0667C4.68121 14.1438 4.62001 14.2354 4.57826 14.3362C4.53651 14.437 4.51501 14.5451 4.51501 14.6542C4.51501 14.7633 4.53651 14.8713 4.57826 14.9721C4.62001 15.0729 4.68121 15.1645 4.75837 15.2417C4.83552 15.3188 4.92711 15.38 5.02791 15.4218C5.12872 15.4635 5.23676 15.485 5.34587 15.485C5.45497 15.485 5.56301 15.4635 5.66382 15.4218C5.76462 15.38 5.85621 15.3188 5.93337 15.2417L13.3334 7.84167V14.1667C13.3334 14.625 13.7084 15 14.1667 15C14.625 15 15 14.625 15 14.1667V5.83333C15 5.375 14.625 5 14.1667 5H5.83337C5.37503 5 5.00003 5.375 5.00003 5.83333Z" fill="#121212" />
                                                </svg>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <!--end::Row-->
                                <!--begin::Row-->
                                <div class="row g-5 g-xl-10">
                                    <!--begin::Col-->
                                    <div class="col-xl-12">
                                        <!--begin::Row-->
                                        <div class="row g-2 g-xl-10">
                                            <!--begin::Col-->
                                            <div class="col-lg-3">
                                                <!--begin::Chart Widget 47-->
                                                <div class="card card-flush shadow-xs bg-blue">
                                                    <!--begin::Card body-->
                                                    <div class="d-flex align-items-center">
                                                        <!--begin::Wrapper-->
                                                        <div class="flex-stack flex-row-fluid p-4">
                                                            <span class="white-color fw-bold fs-12">Current Balance</span>
                                                            <div class="d-flex py-2">
                                                                <span class="white-color fw-600 fs-25 pe-3">$100k</span>
                                                                <svg class="pt-1" width="28" height="29" viewBox="0 0 21 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                    <g clip-path="url(#clip0_375_10033)">
                                                                        <circle cx="10.7499" cy="10" r="6.66667" fill="#50CD89" />
                                                                        <path d="M10.75 1.11108C8.99192 1.11108 7.27335 1.63241 5.81158 2.60913C4.3498 3.58586 3.21049 4.97411 2.53771 6.59834C1.86494 8.22257 1.68891 10.0098 2.03189 11.7341C2.37487 13.4584 3.22145 15.0422 4.46458 16.2854C5.70772 17.5285 7.29157 18.3751 9.01584 18.7181C10.7401 19.061 12.5274 18.885 14.1516 18.2122C15.7758 17.5395 17.1641 16.4001 18.1408 14.9384C19.1175 13.4766 19.6389 11.758 19.6389 9.99997C19.6389 7.64249 18.7024 5.38157 17.0354 3.71458C15.3684 2.04759 13.1075 1.11108 10.75 1.11108ZM15.1944 9.76108C15.046 9.90631 14.8465 9.98764 14.6389 9.98764C14.4312 9.98764 14.2318 9.90631 14.0833 9.76108L11.5278 7.2222V15.0778C11.5278 15.284 11.4458 15.4819 11.3 15.6277C11.1541 15.7736 10.9563 15.8555 10.75 15.8555C10.5437 15.8555 10.3459 15.7736 10.2 15.6277C10.0541 15.4819 9.9722 15.284 9.9722 15.0778V7.29997L7.51109 9.76108C7.36375 9.90843 7.16391 9.9912 6.95553 9.9912C6.74716 9.9912 6.54732 9.90843 6.39998 9.76108C6.25264 9.61374 6.16986 9.4139 6.16986 9.20553C6.16986 8.99715 6.25264 8.79732 6.39998 8.64997L10.7944 4.27775L15.1944 8.66108C15.2667 8.73331 15.324 8.81905 15.363 8.91342C15.4021 9.00779 15.4223 9.10894 15.4223 9.21108C15.4223 9.31323 15.4021 9.41438 15.363 9.50875C15.324 9.60312 15.2667 9.68886 15.1944 9.76108Z" fill="#DAF9E9" />
                                                                    </g>
                                                                    <defs>
                                                                        <clipPath id="clip0_375_10033">
                                                                            <rect width="20" height="20" fill="white" transform="translate(0.75)" />
                                                                        </clipPath>
                                                                    </defs>
                                                                </svg>
                                                                <span class="color-green fs-12 ps-1 pt-3">15%</span>
                                                                <!--end::Wrapper-->
                                                            </div>
                                                            <span class="white-color fs-12">since last used</span>
                                                            <!--end::Card body-->
                                                        </div>
                                                        <!--end::Chart Widget 47-->
                                                    </div>
                                                </div>
                                                <!--end::Col-->
                                            </div>
                                            <!--begin::Col-->
                                            <div class="col-lg-3 mb-xl-10">
                                                <!--begin::Chart Widget 47-->
                                                <!--begin::Chart Widget 48-->
                                                <div class="card card-flush shadow-xs">
                                                    <div class="d-flex align-items-start">
                                                        <div class="flex-stack flex-row-fluid p-4">
                                                            <span class="color-black-1 fw-bold fs-12">Last Recharge</span>
                                                            <div class="d-flex py-2">
                                                                <span class="color-black-1 fw-600 fs-25 pe-3">$100k</span>
                                                            </div>
                                                            <span class="gray fs-12">since last recharge</span>
                                                        </div>
                                                        <!--end::Wrapper-->
                                                    </div>
                                                    <!--end::Card body-->
                                                </div>
                                                <!--end::Chart Widget 48-->
                                            </div>
                                            <!--end::Col-->
                                            <!--begin::Col-->
                                            <div class="col-lg-3 mb-xl-10">
                                                <!--begin::Chart Widget 47-->
                                                <!--begin::Chart Widget 48-->
                                                <div class="card card-flush shadow-xs mb-1">
                                                    <div class="d-flex align-items-start">
                                                        <div class="flex-stack flex-row-fluid p-4">
                                                            <span class="color-black-1 fw-bold fs-12">Credits Used</span>
                                                            <div class="d-flex py-2">
                                                                <span class="color-black-1 fw-600 fs-25 pe-3">$500k</span>
                                                                <svg class="pt-1" width="28" height="29" viewBox="0 0 21 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                    <g clip-path="url(#clip0_375_10033)">
                                                                        <circle cx="10.7499" cy="10" r="6.66667" fill="#50CD89" />
                                                                        <path d="M10.75 1.11108C8.99192 1.11108 7.27335 1.63241 5.81158 2.60913C4.3498 3.58586 3.21049 4.97411 2.53771 6.59834C1.86494 8.22257 1.68891 10.0098 2.03189 11.7341C2.37487 13.4584 3.22145 15.0422 4.46458 16.2854C5.70772 17.5285 7.29157 18.3751 9.01584 18.7181C10.7401 19.061 12.5274 18.885 14.1516 18.2122C15.7758 17.5395 17.1641 16.4001 18.1408 14.9384C19.1175 13.4766 19.6389 11.758 19.6389 9.99997C19.6389 7.64249 18.7024 5.38157 17.0354 3.71458C15.3684 2.04759 13.1075 1.11108 10.75 1.11108ZM15.1944 9.76108C15.046 9.90631 14.8465 9.98764 14.6389 9.98764C14.4312 9.98764 14.2318 9.90631 14.0833 9.76108L11.5278 7.2222V15.0778C11.5278 15.284 11.4458 15.4819 11.3 15.6277C11.1541 15.7736 10.9563 15.8555 10.75 15.8555C10.5437 15.8555 10.3459 15.7736 10.2 15.6277C10.0541 15.4819 9.9722 15.284 9.9722 15.0778V7.29997L7.51109 9.76108C7.36375 9.90843 7.16391 9.9912 6.95553 9.9912C6.74716 9.9912 6.54732 9.90843 6.39998 9.76108C6.25264 9.61374 6.16986 9.4139 6.16986 9.20553C6.16986 8.99715 6.25264 8.79732 6.39998 8.64997L10.7944 4.27775L15.1944 8.66108C15.2667 8.73331 15.324 8.81905 15.363 8.91342C15.4021 9.00779 15.4223 9.10894 15.4223 9.21108C15.4223 9.31323 15.4021 9.41438 15.363 9.50875C15.324 9.60312 15.2667 9.68886 15.1944 9.76108Z" fill="#DAF9E9" />
                                                                    </g>
                                                                    <defs>
                                                                        <clipPath id="clip0_375_10033">
                                                                            <rect width="20" height="20" fill="white" transform="translate(0.75)" />
                                                                        </clipPath>
                                                                    </defs>
                                                                </svg>
                                                                <span class="color-green fs-12 ps-1 pt-3">45%</span>
                                                            </div>
                                                            <span class="gray fs-12">since last used</span>
                                                        </div>
                                                        <!--end::Wrapper-->
                                                    </div>
                                                    <!--end::Card body-->
                                                </div>
                                                <!--end::Chart Widget 48-->
                                            </div>
                                            <!--end::Col-->
                                            <!--begin::Col-->
                                            <div class="col-lg-3 mb-xl-10">
                                                <!--begin::Chart Widget 47-->
                                                <!--begin::Chart Widget 48-->
                                                <div class="card card-flush shadow-xs mb-1">
                                                    <div class="d-flex align-items-start">
                                                        <!--begin::Wrapper-->
                                                        <div class="flex-stack flex-row-fluid p-4">
                                                            <span class="color-black-1 fw-bold fs-12">Credits Used</span>
                                                            <div class="d-flex py-2">
                                                                <span class="color-black-1 fw-600 fs-25 pe-3">$400k</span>
                                                                <svg class="pt-1" width="28" height="29" viewBox="0 0 21 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                    <g clip-path="url(#clip0_375_10033)">
                                                                        <circle cx="10.7499" cy="10" r="6.66667" fill="#50CD89" />
                                                                        <path d="M10.75 1.11108C8.99192 1.11108 7.27335 1.63241 5.81158 2.60913C4.3498 3.58586 3.21049 4.97411 2.53771 6.59834C1.86494 8.22257 1.68891 10.0098 2.03189 11.7341C2.37487 13.4584 3.22145 15.0422 4.46458 16.2854C5.70772 17.5285 7.29157 18.3751 9.01584 18.7181C10.7401 19.061 12.5274 18.885 14.1516 18.2122C15.7758 17.5395 17.1641 16.4001 18.1408 14.9384C19.1175 13.4766 19.6389 11.758 19.6389 9.99997C19.6389 7.64249 18.7024 5.38157 17.0354 3.71458C15.3684 2.04759 13.1075 1.11108 10.75 1.11108ZM15.1944 9.76108C15.046 9.90631 14.8465 9.98764 14.6389 9.98764C14.4312 9.98764 14.2318 9.90631 14.0833 9.76108L11.5278 7.2222V15.0778C11.5278 15.284 11.4458 15.4819 11.3 15.6277C11.1541 15.7736 10.9563 15.8555 10.75 15.8555C10.5437 15.8555 10.3459 15.7736 10.2 15.6277C10.0541 15.4819 9.9722 15.284 9.9722 15.0778V7.29997L7.51109 9.76108C7.36375 9.90843 7.16391 9.9912 6.95553 9.9912C6.74716 9.9912 6.54732 9.90843 6.39998 9.76108C6.25264 9.61374 6.16986 9.4139 6.16986 9.20553C6.16986 8.99715 6.25264 8.79732 6.39998 8.64997L10.7944 4.27775L15.1944 8.66108C15.2667 8.73331 15.324 8.81905 15.363 8.91342C15.4021 9.00779 15.4223 9.10894 15.4223 9.21108C15.4223 9.31323 15.4021 9.41438 15.363 9.50875C15.324 9.60312 15.2667 9.68886 15.1944 9.76108Z" fill="#DAF9E9" />
                                                                    </g>
                                                                    <defs>
                                                                        <clipPath id="clip0_375_10033">
                                                                            <rect width="20" height="20" fill="white" transform="translate(0.75)" />
                                                                        </clipPath>
                                                                    </defs>
                                                                </svg>
                                                                <span class="color-green fs-12 ps-1 pt-3">45%</span>
                                                            </div>
                                                            <span class="gray fs-12">since last used</span>
                                                        </div>
                                                        <!--end::Wrapper-->
                                                    </div>
                                                    <!--end::Card body-->
                                                </div>
                                                <!--end::Chart Widget 48-->
                                            </div>
                                            <!--end::Col-->
                                            <!--end::Row-->
                                            <!--begin::Row-->
                                            <div class="row g-2 gx-xl-10">
                                                <!--begin::Col-->
                                                <div class="col-xl-8 mb-5 mb-xl-10">
                                                    <div class="card card-flush shadow-xs h-xl-100 mt-1">
                                                        <!--begin::Header-->
                                                        <div class="card-header pt-5">
                                                            <!--begin::Title-->
                                                            <h3 class="card-title align-items-start flex-column">
                                                                <span class="card-label fw-bold text-gray-800">SMS Traffic</span>
                                                            </h3>
                                                            <!--end::Title-->
                                                        </div>
                                                        <div class="card-body">
                                                            <div id="kt_docs_google_chart_column" style="height: 250px;"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--end::Col-->
                                                <!--begin::Col-->
                                                <div class="col-xl-4 mb-5 mb-xl-10">
                                                    <!--begin::Table widget 10-->
                                                    <div class="card card-flush shadow-xs bg-blue h-xl-100 p-5 rounded-4">
                                                        <div class="p-5">
                                                            <div class="pt-2 mb-5">
                                                                <svg width="20" height="22" viewBox="0 0 14 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                    <path d="M13.5952 11.3708C13.205 10.6986 12.6249 8.79664 12.6249 6.3125C12.6249 4.82066 12.0323 3.38992 10.9774 2.33502C9.9225 1.28013 8.49176 0.6875 6.99992 0.6875C5.50807 0.6875 4.07733 1.28013 3.02244 2.33502C1.96755 3.38992 1.37492 4.82066 1.37492 6.3125C1.37492 8.79734 0.794136 10.6986 0.403902 11.3708C0.304248 11.5417 0.251418 11.7358 0.250739 11.9336C0.25006 12.1315 0.301556 12.326 0.400034 12.4975C0.498512 12.6691 0.640489 12.8117 0.811648 12.9109C0.982806 13.0101 1.17709 13.0624 1.37492 13.0625H4.24437C4.37415 13.6975 4.71928 14.2683 5.22139 14.6781C5.72349 15.088 6.35176 15.3119 6.99992 15.3119C7.64808 15.3119 8.27634 15.088 8.77845 14.6781C9.28056 14.2683 9.62569 13.6975 9.75546 13.0625H12.6249C12.8227 13.0622 13.0169 13.0098 13.1879 12.9106C13.359 12.8114 13.5009 12.6688 13.5993 12.4972C13.6977 12.3257 13.7491 12.1312 13.7484 11.9335C13.7477 11.7357 13.6949 11.5416 13.5952 11.3708ZM6.99992 14.1875C6.65104 14.1874 6.31077 14.0792 6.02595 13.8777C5.74112 13.6762 5.52574 13.3914 5.40945 13.0625H8.59039C8.47409 13.3914 8.25871 13.6762 7.97389 13.8777C7.68906 14.0792 7.34879 14.1874 6.99992 14.1875ZM1.37492 11.9375C1.91632 11.0066 2.49992 8.84937 2.49992 6.3125C2.49992 5.11903 2.97402 3.97443 3.81794 3.13052C4.66185 2.28661 5.80644 1.8125 6.99992 1.8125C8.19339 1.8125 9.33798 2.28661 10.1819 3.13052C11.0258 3.97443 11.4999 5.11903 11.4999 6.3125C11.4999 8.84726 12.0821 11.0045 12.6249 11.9375H1.37492Z" fill="white" />
                                                                </svg>
                                                                <span class="card-label fs-16 white-color ps-2">New notification</span>
                                                            </div>
                                                            <div id="kt_carousel_3_carousel" class="carousel carousel-custom slide" data-bs-ride="carousel" data-bs-interval="8000">
                                                                <!--begin::Heading-->
                                                                <div class="d-flex align-items-center justify-content-between flex-wrap">
                                                                    <!--begin::Label-->
                                                                    <span class="fs-24 white-color fw-bold pe-2">Title</span>
                                                                    <!--end::Label-->
                                                                </div>
                                                                <!--end::Heading-->

                                                                <!--begin::Carousel-->
                                                                <div class="carousel-inner">
                                                                    <!--begin::Item-->
                                                                    <div class="carousel-item active">
                                                                        <p class="fs-14 white-color pt-5">
                                                                            1.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis.
                                                                        </p>
                                                                    </div>
                                                                    <!--end::Item-->

                                                                    <!--begin::Item-->
                                                                    <div class="carousel-item">
                                                                        <p class="fs-14 white-color pt-5">
                                                                            2.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis.
                                                                        </p>
                                                                    </div>
                                                                    <!--end::Item-->

                                                                    <!--begin::Item-->
                                                                    <div class="carousel-item">
                                                                        <p class="fs-14 white-color pt-5">
                                                                            3.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis.
                                                                        </p>
                                                                    </div>
                                                                    <!--end::Item-->
                                                                </div>
                                                                <!--begin::Carousel Indicators-->
                                                                <ol class="p-0 m-0 carousel-indicators carousel-indicators-bullet carousel-indicators-active-primary justify-content-stretch">
                                                                    <li data-bs-target="#kt_carousel_3_carousel" data-bs-slide-to="0" class="ms-1 active"></li>
                                                                    <li data-bs-target="#kt_carousel_3_carousel" data-bs-slide-to="1" class="ms-1"></li>
                                                                    <li data-bs-target="#kt_carousel_3_carousel" data-bs-slide-to="2" class="ms-1"></li>
                                                                </ol>
                                                                <!--end::Carousel Indicators-->
                                                                <!--end::Carousel-->
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--end::Table Widget 10-->
                                                </div>
                                                <!--end::Col-->
                                            </div>
                                            <!--end::Row-->
                                        </div>
                                        <!--end::Col-->
                                    </div>
                                    <!--end::Row-->
                                    <!--begin::Row-->
                                    <div class="row g-2 gx-xl-10">
                                        <!--begin::Col-->
                                        <div class="row g-2 gx-xl-10">
                                            <!--begin::Col-->
                                            <!--begin::Title-->
                                            <span class="fw-bold fs-20 text-gray-800 ps-5">Sent Messages</span>
                                            <!--end::Title-->
                                            <!--end::Header-->
                                            <div class="col-xl-12 mb-5 mb-xl-10">
                                                <!--begin::Table container-->
                                                <div class="table-responsive px-5 py-5 mt-5 align-items-center ">
                                                    <!--begin::Table-->
                                                    <table class="table table-row-dashed align-middle gs-0 gy-3 my-0">
                                                        <!--begin::Table body-->
                                                        <tbody>
                                                            <tr>
                                                                <td class="text-start pe-2">
                                                                    <div class="d-flex justify-content-start flex-column">
                                                                        <p>Lorem ipsum dolor sit a</p>
                                                                    </div>
                                                                </td>
                                                                <td class="text-start pe-2">
                                                                    <div class="d-flex justify-content-start flex-column">
                                                                        <p>11 August 2023, 09:41 AM</p>
                                                                    </div>
                                                                </td>
                                                                <td class="text-start pe-2">
                                                                    <div class="d-flex justify-content-start flex-column">
                                                                        <p class="color-green">Delivered</p>
                                                                    </div>
                                                                </td>
                                                                <td class="text-start pe-2">
                                                                    <div class="d-flex justify-content-start flex-column">
                                                                        <p>$0.00</p>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="text-start pe-2">
                                                                    <div class="d-flex justify-content-start flex-column">
                                                                        <p>Lorem ipsum dolor sit a</p>
                                                                    </div>
                                                                </td>
                                                                <td class="text-start pe-2">
                                                                    <div class="d-flex justify-content-start flex-column">
                                                                        <p>11 August 2023, 09:41 AM</p>
                                                                    </div>
                                                                </td>
                                                                <td class="text-start pe-2">
                                                                    <div class="d-flex justify-content-start flex-column">
                                                                        <p class="color-green">Delivered</p>
                                                                    </div>
                                                                </td>
                                                                <td class="text-start pe-2">
                                                                    <div class="d-flex justify-content-start flex-column">
                                                                        <p>$0.00</p>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="text-start pe-2">
                                                                    <div class="d-flex justify-content-start flex-column">
                                                                        <p>Lorem ipsum dolor sit a</p>
                                                                    </div>
                                                                </td>
                                                                <td class="text-start pe-2">
                                                                    <div class="d-flex justify-content-start flex-column">
                                                                        <p>11 August 2023, 09:41 AM</p>
                                                                    </div>
                                                                </td>
                                                                <td class="text-start pe-2">
                                                                    <div class="d-flex justify-content-start flex-column">
                                                                        <p class="color-green">Delivered</p>
                                                                    </div>
                                                                </td>
                                                                <td class="text-start pe-2">
                                                                    <div class="d-flex justify-content-start flex-column">
                                                                        <p>$0.00</p>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="text-start pe-2">
                                                                    <div class="d-flex justify-content-start flex-column">
                                                                        <p>Lorem ipsum dolor sit a</p>
                                                                    </div>
                                                                </td>
                                                                <td class="text-start pe-2">
                                                                    <div class="d-flex justify-content-start flex-column">
                                                                        <p>11 August 2023, 09:41 AM</p>
                                                                    </div>
                                                                </td>
                                                                <td class="text-start pe-2">
                                                                    <div class="d-flex justify-content-start flex-column">
                                                                        <p class="color-green">Delivered</p>
                                                                    </div>
                                                                </td>
                                                                <td class="text-start pe-2">
                                                                    <div class="d-flex justify-content-start flex-column">
                                                                        <p>$0.00</p>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                        <!--end::Table body-->
                                                        <!--end::Table body-->
                                                    </table>
                                                </div>
                                                <!--end::Table-->
                                            </div>
                                        </div>
                                        <!--end::Col-->
                                    </div>
                                    <!--end::Row-->
                                    <!--begin::Row-->
                                    <div class="row g-2 gx-xl-10">
                                        <!--begin::Col-->
                                        <!--begin::Title-->
                                        <span class="fw-bold fs-20 text-gray-800 ps-5">Recent Activity</span>
                                        <!--end::Title-->
                                        <!--end::Header-->
                                        <div class="col-xl-12 mb-5 mb-xl-10">
                                            <!--begin::Table widget 9-->
                                            <div class="mt-2">
                                                <div id="kt_apexcharts_3" style="height: 400px;"></div>
                                            </div>
                                            <!--end::Table Widget 9-->
                                        </div>
                                        <!--end::Col-->
                                    </div>
                                    <!--end::Row-->
                                    <!--end::Content container-->
                                </div>
                                <!--end::Content-->
                                <!--end::Content container-->
                            </div>
                            <!--end::Content-->
                        </div>
                        <!--end::Content-->
                    </div>
                    <!--end::Content wrapper-->

                    <!--begin::Footer-->
                    <uc1:Footer runat="server" ID="Footer" />
                    <!--end::Footer-->
                </div>
                <!--end:::Main-->

            </div>
            <!--end::Wrapper-->
        </div>
        <!--end::Page-->
    </div>
    <!--end::App-->
    <uc1:FooterLinks runat="server" ID="FooterLinks" />
    			<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
			<script>
                // GOOGLE CHARTS INIT
                google.load('visualization', '1', {
                    packages: ['corechart', 'bar', 'line']
                });

                google.setOnLoadCallback(function () {
                    // COLUMN CHART
                    var data = new google.visualization.DataTable();
                    data.addColumn('timeofday', 'Time of Day');
                    data.addColumn('number', 'Motivation Level');
                    data.addColumn('number', 'Energy Level');

                    data.addRows([
                        [{
                            v: [8, 0, 0],
                            f: '8 am'
                        }, 1, .25],
                        [{
                            v: [9, 0, 0],
                            f: '9 am'
                        }, 2, .5],
                        [{
                            v: [10, 0, 0],
                            f: '10 am'
                        }, 3, 1],
                        [{
                            v: [11, 0, 0],
                            f: '11 am'
                        }, 4, 2.25],
                        [{
                            v: [12, 0, 0],
                            f: '12 pm'
                        }, 5, 2.25],
                        [{
                            v: [13, 0, 0],
                            f: '1 pm'
                        }, 6, 3],
                        [{
                            v: [14, 0, 0],
                            f: '2 pm'
                        }, 7, 4],
                        [{
                            v: [15, 0, 0],
                            f: '3 pm'
                        }, 8, 5.25],
                        [{
                            v: [16, 0, 0],
                            f: '4 pm'
                        }, 9, 7.5],
                        [{
                            v: [17, 0, 0],
                            f: '5 pm'
                        }, 10, 10],
                    ]);

                    var data = google.visualization.arrayToDataTable([
                        ['Element', 'SMS', { role: 'style' }],
                        ['Jan', 10.94, '#E9EDF7'],
                        ['Feb', 10.94, '#E9EDF7'],
                        ['Mar', 32.49, '#bfbff8'],
                        ['Apr', 20.30, '#e5e4e2'],
                        ['May', 10.94, '#E9EDF7'],
                        ['Jun', 32.49, '#bfbff8'],
                        ['Jul', 20.30, '#E9EDF7'],
                        ['Aug', 30.45, 'color: #e5e4e2'],
                        ['Sep', 20.30, '#E9EDF7'],
                        ['Oct', 10.94, '#E9EDF7'],
                        ['Nov', 32.49, '#bfbff8'],
                        ['Dec', 20.30, '#E9EDF7'],
                    ]);

                    var options = {

                        focusTarget: 'category',
                        hAxis: {
                            title: 'Time of Day',
                            format: 'h:mm a',
                            viewWindow: {
                                min: [7, 30, 0],
                                max: [17, 30, 0]
                            },
                        },
                        vAxis: {
                            title: 'Rating (scale of 1-10)'
                        },
                        colors: ['#6e4ff5', '#fe3995']
                    };



                    var chart = new google.visualization.ColumnChart(document.getElementById('kt_docs_google_chart_column'));
                    chart.draw(data, options);
                });
            </script>

	    	<script>
                var element = document.getElementById('kt_apexcharts_3');
                var height = parseInt(KTUtil.css(element, 'height'));
                var labelColor = KTUtil.getCssVariableValue('--kt-gray-500');
                var borderColor = KTUtil.getCssVariableValue('--kt-gray-200');
                var baseColor = "#0E41C1";
                var lightColor = "rgba(14, 65, 193, .3)";
                // if (!element) {
                // 	return;
                // }
                var options = {
                    series: [{
                        name: 'Sent SMS',
                        data: [30, 40, 40, 90, 90, 70, 15, 30, 25, 60, 40, 5]
                    }],
                    chart: {
                        fontFamily: 'inherit',
                        type: 'area',
                        height: height,
                        toolbar: {
                            show: false
                        }
                    },
                    plotOptions: {
                    },
                    legend: {
                        show: false
                    },
                    dataLabels: {
                        enabled: false
                    },
                    fill: {
                        type: 'solid',
                        opacity: 1
                    },
                    stroke: {
                        curve: 'smooth',
                        show: true,
                        width: 3,
                        colors: [baseColor]
                    },
                    xaxis: {
                        categories: ['01', '02', '03', '04', '05', '06', '07', ' 08', '08', '10', '11', '12', '13'],
                        axisBorder: {
                            show: false,
                        },
                        axisTicks: {
                            show: false
                        },
                        labels: {
                            style: {
                                colors: labelColor,
                                fontSize: '12px'
                            }
                        },
                        crosshairs: {
                            position: 'front',
                            stroke: {
                                color: baseColor,
                                width: 1,
                                dashArray: 3
                            }
                        },
                        tooltip: {
                            enabled: true,
                            formatter: undefined,
                            offsetY: 0,
                            style: {
                                fontSize: '12px'
                            }
                        }
                    },
                    yaxis: {
                        labels: {
                            style: {
                                colors: labelColor,
                                fontSize: '12px'
                            }
                        }
                    },
                    states: {
                        normal: {
                            filter: {
                                type: 'none',
                                value: 0
                            }
                        },
                        hover: {
                            filter: {
                                type: 'none',
                                value: 0
                            }
                        },
                        active: {
                            allowMultipleDataPointsSelection: false,
                            filter: {
                                type: 'none',
                                value: 0
                            }
                        }
                    },
                    tooltip: {
                        style: {
                            fontSize: '12px'
                        },
                        y: {
                            formatter: function (val) {
                                return val + ' SMS'
                            }
                        }
                    },
                    colors: [lightColor],
                    grid: {
                        borderColor: borderColor,
                        strokeDashArray: 4,
                        yaxis: {
                            lines: {
                                show: true
                            }
                        }
                    },
                    markers: {
                        strokeColor: baseColor,
                        strokeWidth: 3
                    }
                };
                var chart = new ApexCharts(element, options);
                chart.render();


            </script>
</body>
<!--end::Body-->
</html>
