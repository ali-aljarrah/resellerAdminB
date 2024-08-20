<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SideBar.ascx.cs" Inherits="resellerAdminB.Controls.SideBar" %>

<div id="kt_app_sidebar" class="app-sidebar flex-column" data-kt-drawer="true" data-kt-drawer-name="app-sidebar" data-kt-drawer-activate="{default: true, lg: false}" data-kt-drawer-overlay="true" data-kt-drawer-width="225px" data-kt-drawer-direction="start" data-kt-drawer-toggle="#kt_app_sidebar_mobile_toggle">
    <!--begin::Logo-->
    <div class="app-sidebar-logo px-6 bg-sidebar b.none" id="kt_app_sidebar_logo">
        <!--begin::Logo image-->
        <a href="/index.html">
            <svg width="40" height="41" viewBox="0 0 40 41" fill="none" xmlns="http://www.w3.org/2000/svg">
                <rect y="0.5" width="40" height="40" rx="8" fill="url(#paint0_linear_1628_4829)" />
                <path d="M13.5802 18.807V10.0465H15.4252V17.2799H19.1661V18.807H13.5802Z" fill="white" />
                <path d="M28.067 14.4267C28.067 15.3821 27.8866 16.1948 27.5259 16.865C27.168 17.5351 26.6794 18.047 26.0601 18.4006C25.4437 18.7514 24.7507 18.9267 23.9809 18.9267C23.2054 18.9267 22.5095 18.7499 21.8931 18.3963C21.2767 18.0427 20.7895 17.5308 20.4316 16.8607C20.0737 16.1905 19.8947 15.3792 19.8947 14.4267C19.8947 13.4714 20.0737 12.6587 20.4316 11.9885C20.7895 11.3184 21.2767 10.8079 21.8931 10.4572C22.5095 10.1035 23.2054 9.92674 23.9809 9.92674C24.7507 9.92674 25.4437 10.1035 26.0601 10.4572C26.6794 10.8079 27.168 11.3184 27.5259 11.9885C27.8866 12.6587 28.067 13.4714 28.067 14.4267ZM26.1965 14.4267C26.1965 13.8079 26.1042 13.2861 25.9195 12.8611C25.7377 12.4362 25.4807 12.114 25.1483 11.8944C24.816 11.6748 24.4268 11.565 23.9809 11.565C23.5349 11.565 23.1457 11.6748 22.8134 11.8944C22.4811 12.114 22.2226 12.4362 22.0379 12.8611C21.8561 13.2861 21.7652 13.8079 21.7652 14.4267C21.7652 15.0456 21.8561 15.5674 22.0379 15.9923C22.2226 16.4172 22.4811 16.7395 22.8134 16.9591C23.1457 17.1786 23.5349 17.2884 23.9809 17.2884C24.4268 17.2884 24.816 17.1786 25.1483 16.9591C25.4807 16.7395 25.7377 16.4172 25.9195 15.9923C26.1042 15.5674 26.1965 15.0456 26.1965 14.4267Z" fill="white" />
                <path d="M17.2892 25.0248C17.2295 24.8166 17.1457 24.6327 17.0378 24.473C16.9299 24.3104 16.7978 24.1735 16.6415 24.0623C16.4882 23.9483 16.312 23.8613 16.1132 23.8014C15.9172 23.7415 15.6999 23.7116 15.4613 23.7116C15.0153 23.7116 14.6233 23.8228 14.2853 24.0452C13.9501 24.2677 13.6888 24.5913 13.5013 25.0162C13.3138 25.4383 13.2201 25.9544 13.2201 26.5647C13.2201 27.175 13.3124 27.694 13.4971 28.1217C13.6817 28.5495 13.943 28.876 14.281 29.1013C14.6191 29.3237 15.0182 29.435 15.4783 29.435C15.8959 29.435 16.2524 29.3608 16.5478 29.2125C16.8461 29.0614 17.0733 28.8489 17.2295 28.5752C17.3886 28.3014 17.4681 27.9777 17.4681 27.6042L17.8431 27.6598H15.5934V26.2653H19.2449V27.3689C19.2449 28.1389 19.083 28.8004 18.7592 29.3537C18.4353 29.9041 17.9894 30.329 17.4213 30.6284C16.8532 30.925 16.2027 31.0733 15.4698 31.0733C14.6517 31.0733 13.9331 30.8922 13.3138 30.53C12.6946 30.165 12.2117 29.6474 11.8652 28.9773C11.5215 28.3043 11.3496 27.5058 11.3496 26.5818C11.3496 25.8717 11.4519 25.2387 11.6564 24.6826C11.8637 24.1236 12.1535 23.6503 12.5256 23.2624C12.8977 22.8746 13.3309 22.5794 13.8251 22.377C14.3194 22.1745 14.8548 22.0733 15.4315 22.0733C15.9257 22.0733 16.3859 22.146 16.812 22.2914C17.2381 22.434 17.6158 22.6365 17.9453 22.8988C18.2777 23.1612 18.549 23.4735 18.7592 23.8356C18.9694 24.1949 19.1043 24.5913 19.1639 25.0248H17.2892Z" fill="white" />
                <path d="M28.6496 26.5733C28.6496 27.5286 28.4692 28.3413 28.1085 29.0115C27.7505 29.6816 27.262 30.1935 26.6427 30.5471C26.0263 30.8979 25.3332 31.0733 24.5635 31.0733C23.788 31.0733 23.0921 30.8965 22.4757 30.5428C21.8593 30.1892 21.3721 29.6774 21.0142 29.0072C20.6563 28.337 20.4773 27.5257 20.4773 26.5733C20.4773 25.6179 20.6563 24.8052 21.0142 24.135C21.3721 23.4649 21.8593 22.9544 22.4757 22.6037C23.0921 22.2501 23.788 22.0733 24.5635 22.0733C25.3332 22.0733 26.0263 22.2501 26.6427 22.6037C27.262 22.9544 27.7505 23.4649 28.1085 24.135C28.4692 24.8052 28.6496 25.6179 28.6496 26.5733ZM26.7791 26.5733C26.7791 25.9544 26.6868 25.4326 26.5021 25.0077C26.3203 24.5828 26.0633 24.2605 25.7309 24.0409C25.3986 23.8214 25.0094 23.7116 24.5635 23.7116C24.1175 23.7116 23.7283 23.8214 23.396 24.0409C23.0637 24.2605 22.8052 24.5828 22.6205 25.0077C22.4387 25.4326 22.3478 25.9544 22.3478 26.5733C22.3478 27.1921 22.4387 27.7139 22.6205 28.1389C22.8052 28.5638 23.0637 28.886 23.396 29.1056C23.7283 29.3252 24.1175 29.435 24.5635 29.435C25.0094 29.435 25.3986 29.3252 25.7309 29.1056C26.0633 28.886 26.3203 28.5638 26.5021 28.1389C26.6868 27.7139 26.7791 27.1921 26.7791 26.5733Z" fill="white" />
                <defs>
                    <linearGradient id="paint0_linear_1628_4829" x1="20" y1="0.5" x2="20" y2="40.5" gradientUnits="userSpaceOnUse">
                        <stop stop-color="#0E41C1" stop-opacity="0.870588" />
                        <stop offset="1" stop-color="#0047FF" stop-opacity="0.870588" />
                    </linearGradient>
                </defs>
            </svg>
            <%-- <img class="img-fluid" src="assets/img/LOGO.svg" alt="Reseller Logo" />--%>
        </a>
        <!--end::Logo image-->
        <!--begin::Sidebar toggle-->
        <div id="kt_app_sidebar_toggle" class="app-sidebar-toggle btn btn-icon btn-shadow btn-sm btn-color-muted btn-active-color-primary h-30px w-30px position-absolute top-50 start-100 translate-middle rotate" data-kt-toggle="true" data-kt-toggle-state="active" data-kt-toggle-target="body" data-kt-toggle-name="app-sidebar-minimize">
            <i class="ki-duotone ki-black-left-line fs-3 rotate-180">
                <span class="path1"></span>
                <span class="path2"></span>
            </i>
        </div>
        <!--end::Sidebar toggle-->
    </div>
    <!--end::Logo-->
    <!--begin::sidebar menu-->
    <div class="app-sidebar-menu overflow-hidden flex-column-fluid bg-sidebar">
        <!--begin::Menu wrapper-->
        <div id="kt_app_sidebar_menu_wrapper" class="app-sidebar-wrapper">
            <!--begin::Scroll wrapper-->
            <div class="my-5 mx-3" data-kt-scroll="true" data-kt-scroll-activate="true" data-kt-scroll-height="auto" data-kt-scroll-dependencies="#kt_app_sidebar_logo, #kt_app_sidebar_footer" data-kt-scroll-wrappers="#kt_app_sidebar_menu" data-kt-scroll-offset="5px" data-kt-scroll-save-state="true">
                <!--begin::Menu-->
                <div class="menu menu-column menu-rounded menu-sub-indention fw-semibold fs-6" id="#kt_app_sidebar_menu" data-kt-menu="true" data-kt-menu-expand="false">
                    <!--begin:Menu item-->
                    <div class="menu-item">
                        <a class="menu-link main" href="/index.aspx">
                            <!--begin:Menu link-->
                            <span class="menu-icon">
                                <svg width="24" height="25" viewBox="0 0 24 25" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M11.9994 3.54167C11.4094 3.54167 10.8735 3.71084 10.291 3.99334C9.72935 4.26667 9.07935 4.67001 8.26852 5.17334L6.54602 6.24251C5.77935 6.71917 5.16352 7.10084 4.69018 7.46334C4.19935 7.83834 3.82268 8.22167 3.55018 8.71917C3.27852 9.21501 3.15685 9.74334 3.09768 10.3675C3.04102 10.9717 3.04102 11.7117 3.04102 12.6392V13.9833C3.04102 15.57 3.04102 16.8225 3.16852 17.8017C3.29852 18.8058 3.57352 19.6167 4.19352 20.2575C4.81602 20.9017 5.60768 21.19 6.58935 21.3258C7.53935 21.4583 8.75435 21.4583 10.2843 21.4583H13.7143C15.2443 21.4583 16.4594 21.4583 17.4094 21.3258C18.3902 21.19 19.1827 20.9017 19.806 20.2575C20.4252 19.6167 20.7002 18.8058 20.831 17.8017C20.9577 16.8225 20.9577 15.57 20.9577 13.9833V12.6392C20.9577 11.7117 20.9577 10.9725 20.901 10.3675C20.8427 9.74251 20.7202 9.21501 20.4485 8.71917C20.176 8.22167 19.7985 7.83917 19.3085 7.46334C18.8352 7.10001 18.2202 6.71917 17.4527 6.24251L15.7302 5.17334C14.9193 4.67001 14.2693 4.26667 13.7068 3.99334C13.126 3.71001 12.5902 3.54167 11.9994 3.54167Z" fill="#275CE5" />
                                    <path d="M10.957 17.4999C10.957 17.7651 11.0624 18.0195 11.2499 18.207C11.4375 18.3946 11.6918 18.4999 11.957 18.4999C12.2222 18.4999 12.4766 18.3946 12.6641 18.207C12.8517 18.0195 12.957 17.7651 12.957 17.4999V13.4999C12.957 13.2347 12.8517 12.9804 12.6641 12.7928C12.4766 12.6053 12.2222 12.4999 11.957 12.4999C11.6918 12.4999 11.4375 12.6053 11.2499 12.7928C11.0624 12.9804 10.957 13.2347 10.957 13.4999V17.4999Z" fill="#fff" />
                                    <defs>
                                        <linearGradient id="paint0_linear_1628_4834" x1="11.957" y1="12.4999" x2="11.957" y2="18.4999" gradientUnits="userSpaceOnUse">
                                            <stop stop-color="#0E41C1" stop-opacity="0.870588" />
                                            <stop offset="1" stop-color="#0047FF" stop-opacity="0.870588" />
                                        </linearGradient>
                                    </defs>
                                </svg>
                            </span>
                            <span class="menu-title fw-600">Dashboards</span>
                            <!--end:Menu link-->
                        </a>
                    </div>
                    <!--end:Menu item-->
                    <!--begin:Menu item-->
                    <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                        <!--begin:Menu link-->
                        <span class="menu-link main">
                            <span class="menu-icon">
                                <svg width="24" height="25" viewBox="0 0 24 25" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M13.629 20.972L13.087 21.888C12.604 22.704 11.397 22.704 10.913 21.888L10.371 20.972C9.951 20.262 9.741 19.906 9.403 19.71C9.065 19.513 8.64 19.506 7.79 19.491C6.534 19.47 5.747 19.393 5.087 19.119C4.48037 18.8677 3.92917 18.4994 3.46487 18.0351C3.00057 17.5708 2.63227 17.0196 2.381 16.413C2 15.495 2 14.33 2 12V11C2 7.727 2 6.09 2.737 4.888C3.14904 4.2152 3.71445 3.64945 4.387 3.237C5.59 2.5 7.228 2.5 10.5 2.5H13.5C16.773 2.5 18.41 2.5 19.613 3.237C20.2854 3.64917 20.8508 4.21456 21.263 4.887C22 6.09 22 7.728 22 11V12C22 14.33 22 15.495 21.62 16.413C21.3686 17.0197 21.0002 17.571 20.5357 18.0353C20.0712 18.4996 19.5198 18.8678 18.913 19.119C18.253 19.393 17.466 19.469 16.21 19.491C15.36 19.506 14.935 19.513 14.597 19.71C14.259 19.906 14.049 20.261 13.629 20.972ZM8 12.25C7.80109 12.25 7.61032 12.329 7.46967 12.4697C7.32902 12.6103 7.25 12.8011 7.25 13C7.25 13.1989 7.32902 13.3897 7.46967 13.5303C7.61032 13.671 7.80109 13.75 8 13.75H13.5C13.6989 13.75 13.8897 13.671 14.0303 13.5303C14.171 13.3897 14.25 13.1989 14.25 13C14.25 12.8011 14.171 12.6103 14.0303 12.4697C13.8897 12.329 13.6989 12.25 13.5 12.25H8ZM7.25 9.5C7.25 9.30109 7.32902 9.11032 7.46967 8.96967C7.61032 8.82902 7.80109 8.75 8 8.75H16C16.1989 8.75 16.3897 8.82902 16.5303 8.96967C16.671 9.11032 16.75 9.30109 16.75 9.5C16.75 9.69891 16.671 9.88968 16.5303 10.0303C16.3897 10.171 16.1989 10.25 16 10.25H8C7.80109 10.25 7.61032 10.171 7.46967 10.0303C7.32902 9.88968 7.25 9.69891 7.25 9.5Z" fill="url(#paint0_linear_1607_3807)" />
                                    <defs>
                                        <linearGradient id="paint0_linear_1607_3807" x1="12" y1="2.5" x2="12" y2="22.5" gradientUnits="userSpaceOnUse">
                                            <stop stop-color="#0E41C1" stop-opacity="0.870588" />
                                            <stop offset="1" stop-color="#0047FF" stop-opacity="0.870588" />
                                        </linearGradient>
                                    </defs>
                                </svg>
                            </span>
                            <span class="menu-title">Send SMS</span>
                            <span class="menu-arrow"></span>
                        </span>
                        <!--end:Menu link-->
                        <!--begin:Menu sub-->
                        <div class="menu-sub menu-sub-accordion">
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="/send_sms.aspx">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title black">Single SMS</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="/bulksms.aspx">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title black">Bulk SMS</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                        </div>
                        <!--end:Menu sub-->
                    </div>
                    <!--end:Menu item-->
                    <!--begin:Menu item-->
                    <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                        <!--begin:Menu link-->
                        <span class="menu-link main">
                            <span class="menu-icon">
                                <svg class="svg.stroke" width="24" height="25" viewBox="0 0 24 25" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M22.3731 11.9677C20.396 8.11004 16.4818 5.49998 12 5.49998C7.51817 5.49998 3.6029 8.11187 1.62686 11.9681C1.54345 12.133 1.5 12.3153 1.5 12.5002C1.5 12.685 1.54345 12.8673 1.62686 13.0323C3.60399 16.89 7.51817 19.5 12 19.5C16.4818 19.5 20.3971 16.8881 22.3731 13.0319C22.4565 12.8669 22.5 12.6847 22.5 12.4998C22.5 12.315 22.4565 12.1327 22.3731 11.9677ZM12 17.75C10.9616 17.75 9.94661 17.4421 9.08325 16.8652C8.21989 16.2883 7.54698 15.4684 7.14962 14.5091C6.75226 13.5498 6.64829 12.4942 6.85087 11.4758C7.05344 10.4574 7.55346 9.52191 8.28768 8.78768C9.02191 8.05345 9.95737 7.55344 10.9758 7.35087C11.9942 7.14829 13.0498 7.25226 14.0091 7.64962C14.9684 8.04698 15.7883 8.71989 16.3652 9.58325C16.9421 10.4466 17.25 11.4616 17.25 12.5C17.2503 13.1895 17.1148 13.8724 16.8511 14.5095C16.5873 15.1466 16.2006 15.7255 15.7131 16.2131C15.2255 16.7006 14.6466 17.0873 14.0095 17.3511C13.3724 17.6148 12.6895 17.7503 12 17.75ZM12 8.99999C11.6876 9.00436 11.3772 9.05084 11.0772 9.13817C11.3245 9.4742 11.4432 9.88771 11.4117 10.3037C11.3802 10.7197 11.2007 11.1107 10.9057 11.4057C10.6107 11.7007 10.2197 11.8802 9.80373 11.9117C9.38771 11.9432 8.9742 11.8245 8.63817 11.5772C8.44682 12.2822 8.48137 13.0294 8.73693 13.7137C8.9925 14.398 9.45622 14.9849 10.0628 15.3919C10.6694 15.7988 11.3884 16.0053 12.1185 15.9822C12.8486 15.9591 13.5531 15.7077 14.1328 15.2633C14.7125 14.8189 15.1382 14.2038 15.3501 13.5048C15.562 12.8057 15.5493 12.0578 15.3138 11.3664C15.0784 10.6749 14.632 10.0747 14.0375 9.65016C13.4431 9.22566 12.7305 8.99827 12 8.99999Z" fill="url(#paint0_linear_1607_3813)" />
                                    <defs>
                                        <linearGradient id="paint0_linear_1607_3813" x1="12" y1="5.49998" x2="12" y2="19.5" gradientUnits="userSpaceOnUse">
                                            <stop stop-color="#0E41C1" stop-opacity="0.870588" />
                                            <stop offset="1" stop-color="#0047FF" stop-opacity="0.870588" />
                                        </linearGradient>
                                    </defs>
                                </svg>
                            </span>
                            <span class="menu-title">Lookup</span>
                            <span class="menu-arrow"></span>
                        </span>
                        <!--end:Menu link-->
                        <!--begin:Menu sub-->
                        <div class="menu-sub menu-sub-accordion">
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="/hlr.aspx">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title black">Single Lookup</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="/hlr_log.aspx">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title black">Lookup Log</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                        </div>
                        <!--end:Menu sub-->
                    </div>
                    <!--end:Menu item-->
                    <!--begin:Menu item-->
                    <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                        <!--begin:Menu link-->
                        <span class="menu-link main">
                            <span class="menu-icon">
                                <svg class="svg.stroke" width="24" height="25" viewBox="0 0 24 25" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M9.15323 5.908C10.4202 3.636 11.0532 2.5 12.0002 2.5C12.9472 2.5 13.5802 3.636 14.8472 5.908L15.1752 6.496C15.5352 7.142 15.7152 7.465 15.9952 7.678C16.2752 7.891 16.6252 7.97 17.3252 8.128L17.9612 8.272C20.4212 8.829 21.6502 9.107 21.9432 10.048C22.2352 10.988 21.3972 11.969 19.7202 13.93L19.2862 14.437C18.8102 14.994 18.5712 15.273 18.4642 15.617C18.3572 15.962 18.3932 16.334 18.4652 17.077L18.5312 17.754C18.7842 20.371 18.9112 21.679 18.1452 22.26C17.3792 22.842 16.2272 22.311 13.9252 21.251L13.3282 20.977C12.6742 20.675 12.3472 20.525 12.0002 20.525C11.6532 20.525 11.3262 20.675 10.6712 20.977L10.0762 21.251C7.77323 22.311 6.62123 22.841 5.85624 22.261C5.08924 21.679 5.21623 20.371 5.46923 17.754L5.53523 17.078C5.60723 16.334 5.64323 15.962 5.53523 15.618C5.42923 15.273 5.19024 14.994 4.71424 14.438L4.28024 13.93C2.60324 11.97 1.76523 10.989 2.05723 10.048C2.35024 9.107 3.58024 8.828 6.04024 8.272L6.67624 8.128C7.37524 7.97 7.72424 7.891 8.00524 7.678C8.28524 7.465 8.46523 7.142 8.82523 6.496L9.15323 5.908Z" fill="url(#paint0_linear_1607_3820)" />
                                    <defs>
                                        <linearGradient id="paint0_linear_1607_3820" x1="12.0002" y1="2.5" x2="12.0002" y2="22.4999" gradientUnits="userSpaceOnUse">
                                            <stop stop-color="#0E41C1" stop-opacity="0.870588" />
                                            <stop offset="1" stop-color="#0047FF" stop-opacity="0.870588" />
                                        </linearGradient>
                                    </defs>
                                </svg>
                            </span>
                            <span class="menu-title">Favorites</span>
                            <span class="menu-arrow"></span>
                        </span>
                        <!--end:Menu link-->
                        <!--begin:Menu sub-->
                        <div class="menu-sub menu-sub-accordion">
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="/sms_temp.aspx">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title black">Templates Management</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="/groups_manager.aspx">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title black">Groups Manager</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                        </div>
                        <!--end:Menu sub-->
                    </div>
                    <!--end:Menu item-->
                    <!--begin:Menu item-->
                    <%--                    <div data-kt-menu-trigger="{default: 'click', lg: 'hover'}" data-kt-menu-placement="right-start" class="menu-item menu-lg-down-accordion menu-sub-lg-down-indention">--%>
                    <!--begin:Menu link-->
                    <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                        <!--begin:Menu link-->
                        <span class="menu-link main">
                            <span class="menu-icon">
                                <svg class="svg.stroke" width="24" height="25" viewBox="0 0 24 25" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M21.4041 13.6764H12.6802L18.4901 19.4863C18.7122 19.7084 19.0776 19.7264 19.3059 19.5113C20.7287 18.1709 21.7074 16.3639 21.9945 14.3327C22.0438 13.9849 21.7552 13.6764 21.4041 13.6764ZM20.8221 11.2941C20.5191 6.9022 17.0096 3.39265 12.6177 3.08971C12.2824 3.06655 12 3.34927 12 3.68529V11.9117H20.2269C20.5629 11.9117 20.8452 11.6294 20.8221 11.2941ZM10.2353 13.6764V4.95257C10.2353 4.60147 9.92689 4.31287 9.57947 4.36213C5.19823 4.98125 1.84935 8.80881 2.00523 13.3959C2.16552 18.1069 6.22176 21.9702 10.935 21.911C12.7879 21.8878 14.5 21.2908 15.9078 20.2922C16.1982 20.0863 16.2173 19.6588 15.9655 19.4069L10.2353 13.6764Z" fill="url(#paint0_linear_1628_1902)" />
                                    <defs>
                                        <linearGradient id="paint0_linear_1628_1902" x1="12" y1="3.08838" x2="12" y2="21.9116" gradientUnits="userSpaceOnUse">
                                            <stop stop-color="#0E41C1" stop-opacity="0.870588" />
                                            <stop offset="1" stop-color="#0047FF" stop-opacity="0.870588" />
                                        </linearGradient>
                                    </defs>
                                </svg>
                            </span>
                            <span class="menu-title">Report</span>
                            <span class="menu-arrow"></span>
                        </span>
                        <!--end:Menu link-->
                        <!--begin:Menu sub-->
                        <div class="menu-sub menu-sub-accordion">
                            <%--                        <div class="menu-sub menu-sub-lg-down-accordion menu-sub-lg-dropdown px-2 py-4 w-200px mh-75 overflow-auto">--%>
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="/sentreport.aspx">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title black">Sent Report</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="/queuereport.aspx">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title black">Queue Report</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="/reloadreport.aspx">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title black">Credits Report</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="/paymentsreport.aspx">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title black">Payments Report</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                        </div>
                        <!--end:Menu sub-->
                    </div>
                    <!--end:Menu item-->
                    <!--begin:Menu item-->
                    <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                        <!--begin:Menu link-->
                        <span class="menu-link main">
                            <span class="menu-icon">
                                <svg width="24" height="25" viewBox="0 0 24 25" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M21.1006 8.504C21.0456 8.5 20.9846 8.5 20.9206 8.5H18.3956C16.3276 8.5 14.5586 10.128 14.5586 12.25C14.5586 14.372 16.3286 16 18.3956 16H20.9206C20.9846 16 21.0456 16 21.1026 15.996C21.5276 15.9704 21.9288 15.7911 22.2315 15.4916C22.5341 15.1921 22.7176 14.7927 22.7476 14.368C22.7516 14.308 22.7516 14.243 22.7516 14.183V10.317C22.7516 10.257 22.7516 10.192 22.7476 10.132C22.7176 9.70726 22.5341 9.30793 22.2315 9.00842C21.9288 8.7089 21.5276 8.52963 21.1026 8.504H21.1006ZM18.1726 13.25C18.7046 13.25 19.1356 12.802 19.1356 12.25C19.1356 11.698 18.7046 11.25 18.1726 11.25C17.6396 11.25 17.2086 11.698 17.2086 12.25C17.2086 12.802 17.6396 13.25 18.1726 13.25Z" fill="url(#paint0_linear_1607_2849)" />
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M20.918 17.5C20.9526 17.4986 20.987 17.5054 21.0184 17.5198C21.0499 17.5342 21.0775 17.5558 21.099 17.5829C21.1206 17.61 21.1354 17.6418 21.1424 17.6757C21.1493 17.7096 21.1481 17.7446 21.139 17.778C20.939 18.49 20.62 19.098 20.109 19.608C19.36 20.358 18.411 20.689 17.239 20.847C16.099 21 14.644 21 12.806 21H10.694C8.856 21 7.4 21 6.261 20.847C5.089 20.689 4.14 20.357 3.391 19.609C2.643 18.86 2.311 17.911 2.153 16.739C2 15.599 2 14.144 2 12.306V12.194C2 10.356 2 8.9 2.153 7.76C2.311 6.588 2.643 5.639 3.391 4.89C4.14 4.142 5.089 3.81 6.261 3.652C7.401 3.5 8.856 3.5 10.694 3.5H12.806C14.644 3.5 16.1 3.5 17.239 3.653C18.411 3.811 19.36 4.143 20.109 4.891C20.62 5.403 20.939 6.01 21.139 6.722C21.1481 6.75537 21.1493 6.79042 21.1424 6.82432C21.1354 6.85822 21.1206 6.89 21.099 6.91708C21.0775 6.94417 21.0499 6.96579 21.0184 6.9802C20.987 6.9946 20.9526 7.00139 20.918 7H18.394C15.557 7 13.057 9.24 13.057 12.25C13.057 15.26 15.557 17.5 18.394 17.5H20.918ZM5.75 7.5C5.55109 7.5 5.36032 7.57902 5.21967 7.71967C5.07902 7.86032 5 8.05109 5 8.25C5 8.44891 5.07902 8.63968 5.21967 8.78033C5.36032 8.92098 5.55109 9 5.75 9H9.75C9.94891 9 10.1397 8.92098 10.2803 8.78033C10.421 8.63968 10.5 8.44891 10.5 8.25C10.5 8.05109 10.421 7.86032 10.2803 7.71967C10.1397 7.57902 9.94891 7.5 9.75 7.5H5.75Z" fill="url(#paint1_linear_1607_2849)" />
                                    <defs>
                                        <linearGradient id="paint0_linear_1607_2849" x1="18.6551" y1="8.5" x2="18.6551" y2="16" gradientUnits="userSpaceOnUse">
                                            <stop stop-color="#0E41C1" stop-opacity="0.870588" />
                                            <stop offset="1" stop-color="#0047FF" stop-opacity="0.870588" />
                                        </linearGradient>
                                        <linearGradient id="paint1_linear_1607_2849" x1="11.5734" y1="3.5" x2="11.5734" y2="21" gradientUnits="userSpaceOnUse">
                                            <stop stop-color="#0E41C1" stop-opacity="0.870588" />
                                            <stop offset="1" stop-color="#0047FF" stop-opacity="0.870588" />
                                        </linearGradient>
                                    </defs>
                                </svg>
                            </span>
                            <span class="menu-title bg-hov">Billing</span>
                            <span class="menu-arrow"></span>
                        </span>
                        <!--end:Menu link-->
                        <!--begin:Menu sub-->
                        <div class="menu-sub menu-sub-accordion">
                            <!--begin:Menu item-->
                            <!--begin:Menu link-->
                            <a class="menu-link" href="/standard-quality.aspx">
                                <span class="menu-bullet">
                                    <span class="bullet bullet-dot"></span>
                                </span>
                                <span class="menu-title black">Standard Quality</span>
                            </a>
                            <!--end:Menu link-->

                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="#">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title black">High Quality</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="/hlr_lookup.aspx">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title black">HLR Lookup</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                        </div>
                        <!--end:Menu sub-->
                    </div>
                    <!--end:Menu item-->
                    <!--begin:Menu item-->

                    <div class="menu-item">
                        <a class="menu-link main" href="/api_references.aspx">
                            <!--begin:Menu link-->
                            <span class="menu-icon">
                                <svg width="24" height="25" viewBox="0 0 24 25" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M21.5088 3.98751L20.515 2.99376C20.4775 2.95626 20.4306 2.93985 20.3814 2.93985C20.3322 2.93985 20.2853 2.9586 20.2478 2.99376L18.4642 4.77735C17.6889 4.25201 16.7735 3.97191 15.8369 3.97344C14.6369 3.97344 13.4369 4.43047 12.5205 5.34688L10.1322 7.73516C10.0973 7.7704 10.0777 7.81799 10.0777 7.86758C10.0777 7.91718 10.0973 7.96477 10.1322 8.00001L16.5002 14.368C16.5377 14.4055 16.5845 14.4219 16.6338 14.4219C16.6806 14.4219 16.7299 14.4031 16.7674 14.368L19.1556 11.9797C20.7705 10.3625 20.9603 7.86173 19.7252 6.03829L21.5088 4.25469C21.5814 4.17969 21.5814 4.06016 21.5088 3.98751ZM13.5681 13.3133C13.5329 13.2784 13.4853 13.2588 13.4357 13.2588C13.3861 13.2588 13.3385 13.2784 13.3033 13.3133L11.7424 14.8742L9.62595 12.7578L11.1892 11.1945C11.2619 11.1219 11.2619 11.0023 11.1892 10.9297L10.3361 10.0766C10.3009 10.0417 10.2533 10.0221 10.2037 10.0221C10.1541 10.0221 10.1065 10.0417 10.0713 10.0766L8.50798 11.6398L7.50017 10.632C7.48268 10.6145 7.46183 10.6007 7.43887 10.5915C7.41592 10.5822 7.39133 10.5777 7.36658 10.5781C7.3197 10.5781 7.27048 10.5969 7.23298 10.632L4.84705 13.0203C3.2322 14.6375 3.04236 17.1383 4.27752 18.9617L2.49392 20.7453C2.45903 20.7806 2.43945 20.8281 2.43945 20.8777C2.43945 20.9273 2.45903 20.9749 2.49392 21.0102L3.48767 22.0039C3.52517 22.0414 3.57205 22.0578 3.62127 22.0578C3.67048 22.0578 3.71736 22.0391 3.75486 22.0039L5.53845 20.2203C6.3283 20.757 7.24705 21.0242 8.1658 21.0242C9.3658 21.0242 10.5658 20.5672 11.4822 19.6508L13.8705 17.2625C13.9431 17.1898 13.9431 17.0703 13.8705 16.9977L12.8627 15.9899L14.426 14.4266C14.4986 14.3539 14.4986 14.2344 14.426 14.1617L13.5681 13.3133ZM10.3525 18.5258C10.0657 18.8141 9.72451 19.0427 9.34877 19.1984C8.97303 19.3541 8.57017 19.4338 8.16345 19.4328C7.33611 19.4328 6.56033 19.1117 5.97439 18.5258C5.68607 18.2389 5.45746 17.8978 5.30177 17.522C5.14608 17.1463 5.06641 16.7434 5.06736 16.3367C5.06736 15.5094 5.38845 14.7336 5.97439 14.1477L7.36658 12.7555L11.7447 17.1336L10.3525 18.5258Z" fill="url(#paint0_linear_1607_2855)" />
                                    <defs>
                                        <linearGradient id="paint0_linear_1607_2855" x1="12.0014" y1="2.93985" x2="12.0014" y2="22.0578" gradientUnits="userSpaceOnUse">
                                            <stop stop-color="#0E41C1" stop-opacity="0.870588" />
                                            <stop offset="1" stop-color="#0047FF" stop-opacity="0.870588" />
                                        </linearGradient>
                                    </defs>
                                </svg>
                            </span>
                            <span class="menu-title fw-600">API</span>
                        </a>
                        <!--end:Menu link-->
                    </div>
                    <!--end:Menu item-->
                    <!--begin:Menu item-->

                    <div class="menu-item">
                        <a class="menu-link main" href="/cov.aspx">
                            <!--begin:Menu link-->
                            <span class="menu-icon">
                                <svg width="24" height="25" viewBox="0 0 24 25" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M11.6276 23.2196L11.6312 23.2208C11.8676 23.324 11.9996 23.3 11.9996 23.3C11.9996 23.3 12.1316 23.324 12.3692 23.2208L12.3716 23.2196L12.3788 23.216L12.4004 23.2064C12.5143 23.1535 12.6268 23.0975 12.7376 23.0384C12.9608 22.9232 13.2728 22.7504 13.646 22.5188C14.39 22.058 15.38 21.3596 16.3748 20.4008C18.362 18.4856 20.3996 15.4916 20.3996 11.3C20.3996 10.1969 20.1823 9.10459 19.7602 8.08545C19.3381 7.06632 18.7193 6.14031 17.9393 5.3603C17.1593 4.58028 16.2333 3.96155 15.2142 3.53941C14.195 3.11727 13.1027 2.89999 11.9996 2.89999C10.8965 2.89999 9.8042 3.11727 8.78507 3.53941C7.76593 3.96155 6.83992 4.58028 6.05991 5.3603C5.2799 6.14031 4.66116 7.06632 4.23902 8.08545C3.81688 9.10459 3.59961 10.1969 3.59961 11.3C3.59961 15.4904 5.63721 18.4856 7.62561 20.4008C8.45811 21.2004 9.37233 21.9103 10.3532 22.5188C10.7331 22.7547 11.124 22.9725 11.5244 23.1716L11.5988 23.2064L11.6204 23.216L11.6276 23.2196ZM11.9996 14C12.7157 14 13.4024 13.7155 13.9088 13.2092C14.4151 12.7028 14.6996 12.0161 14.6996 11.3C14.6996 10.5839 14.4151 9.89715 13.9088 9.39081C13.4024 8.88446 12.7157 8.59999 11.9996 8.59999C11.2835 8.59999 10.5968 8.88446 10.0904 9.39081C9.58407 9.89715 9.29961 10.5839 9.29961 11.3C9.29961 12.0161 9.58407 12.7028 10.0904 13.2092C10.5968 13.7155 11.2835 14 11.9996 14Z" fill="url(#paint0_linear_1607_2858)" />
                                    <defs>
                                        <linearGradient id="paint0_linear_1607_2858" x1="11.9996" y1="2.89999" x2="11.9996" y2="23.3024" gradientUnits="userSpaceOnUse">
                                            <stop stop-color="#0E41C1" stop-opacity="0.870588" />
                                            <stop offset="1" stop-color="#0047FF" stop-opacity="0.870588" />
                                        </linearGradient>
                                    </defs>
                                </svg>
                            </span>
                            <span class="menu-title fw-600">Coverage</span>
                            <!--end:Menu link-->
                        </a>
                    </div>
                    <!--end:Menu item-->
                    <!--begin:Menu item-->

                    <div class="menu-item">
                        <a class="menu-link main" href="/settings.aspx">
                            <!--begin:Menu link-->
                            <span class="menu-icon">
                                <svg width="24" height="25" viewBox="0 0 24 25" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M14.2793 2.652C13.9093 2.5 13.4393 2.5 12.5003 2.5C11.5613 2.5 11.0913 2.5 10.7213 2.652C10.2288 2.85421 9.8367 3.24377 9.63132 3.735C9.53732 3.958 9.50132 4.219 9.48632 4.598C9.47965 4.8726 9.40305 5.14097 9.26376 5.37772C9.12448 5.61447 8.92711 5.81178 8.69032 5.951C8.44906 6.0851 8.17786 6.15615 7.90184 6.15754C7.62582 6.15894 7.35392 6.09065 7.11132 5.959C6.77332 5.781 6.52832 5.683 6.28632 5.651C5.75687 5.58148 5.22139 5.7238 4.79632 6.047C4.47832 6.289 4.24332 6.693 3.77432 7.5C3.30432 8.307 3.07032 8.71 3.01732 9.105C2.94732 9.631 3.09132 10.163 3.41732 10.584C3.56532 10.776 3.77432 10.937 4.09732 11.139C4.57432 11.436 4.88032 11.942 4.88032 12.5C4.88032 13.058 4.57432 13.564 4.09832 13.86C3.77432 14.063 3.56532 14.224 3.41632 14.416C3.2554 14.6239 3.13728 14.8617 3.0688 15.1156C3.00031 15.3694 2.98282 15.6343 3.01732 15.895C3.07032 16.289 3.30432 16.693 3.77432 17.5C4.24432 18.307 4.47832 18.71 4.79632 18.953C5.22032 19.276 5.75632 19.418 6.28632 19.349C6.52832 19.317 6.77332 19.219 7.11132 19.041C7.35404 18.9092 7.62613 18.8408 7.90234 18.8422C8.17855 18.8436 8.44994 18.9147 8.69132 19.049C9.17732 19.329 9.46532 19.844 9.48632 20.402C9.50132 20.782 9.53732 21.042 9.63132 21.265C9.83532 21.755 10.2273 22.145 10.7213 22.348C11.0913 22.5 11.5613 22.5 12.5003 22.5C13.4393 22.5 13.9093 22.5 14.2793 22.348C14.7719 22.1458 15.1639 21.7562 15.3693 21.265C15.4633 21.042 15.4993 20.782 15.5143 20.402C15.5343 19.844 15.8233 19.328 16.3103 19.049C16.5516 18.9149 16.8228 18.8439 17.0988 18.8425C17.3748 18.8411 17.6467 18.9093 17.8893 19.041C18.2273 19.219 18.4723 19.317 18.7143 19.349C19.2443 19.419 19.7803 19.276 20.2043 18.953C20.5223 18.711 20.7573 18.307 21.2263 17.5C21.6963 16.693 21.9303 16.29 21.9833 15.895C22.0177 15.6343 22 15.3693 21.9314 15.1155C21.8627 14.8616 21.7444 14.6239 21.5833 14.416C21.4353 14.224 21.2263 14.063 20.9033 13.861C20.4263 13.564 20.1203 13.058 20.1203 12.5C20.1203 11.942 20.4263 11.436 20.9023 11.14C21.2263 10.937 21.4353 10.776 21.5843 10.584C21.7452 10.3761 21.8633 10.1383 21.9318 9.88443C22.0003 9.63057 22.0178 9.36566 21.9833 9.105C21.9303 8.711 21.6963 8.307 21.2263 7.5C20.7563 6.693 20.5223 6.29 20.2043 6.047C19.7792 5.7238 19.2438 5.58148 18.7143 5.651C18.4723 5.683 18.2273 5.781 17.8893 5.959C17.6466 6.09083 17.3745 6.15922 17.0983 6.15782C16.8221 6.15642 16.5507 6.08528 16.3093 5.951C16.0727 5.81166 15.8755 5.61429 15.7364 5.37755C15.5973 5.14081 15.5209 4.87251 15.5143 4.598C15.4993 4.218 15.4633 3.958 15.3693 3.735C15.2677 3.49174 15.1191 3.27088 14.9321 3.08506C14.745 2.89923 14.5232 2.75208 14.2793 2.652ZM12.5003 15.5C14.1703 15.5 15.5233 14.157 15.5233 12.5C15.5233 10.843 14.1693 9.5 12.5003 9.5C10.8303 9.5 9.47732 10.843 9.47732 12.5C9.47732 14.157 10.8313 15.5 12.5003 15.5Z" fill="url(#paint0_linear_1607_2861)" />
                                    <defs>
                                        <linearGradient id="paint0_linear_1607_2861" x1="12.5003" y1="2.5" x2="12.5003" y2="22.5" gradientUnits="userSpaceOnUse">
                                            <stop stop-color="#0E41C1" stop-opacity="0.870588" />
                                            <stop offset="1" stop-color="#0047FF" stop-opacity="0.870588" />
                                        </linearGradient>
                                    </defs>
                                </svg>
                            </span>
                            <span class="menu-title fw-600">Settings</span>
                            <!--end:Menu link-->
                        </a>
                    </div>
                    <!--end:Menu item-->
                </div>
                <!--end::Menu-->
            </div>
            <!--end::Scroll wrapper-->
        </div>
        <!--end::Menu wrapper-->
    </div>
    <!--end::sidebar menu-->

</div>