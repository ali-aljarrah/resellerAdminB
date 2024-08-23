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
                                <svg width="20" height="21" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M9.99984 1.54163C9.40984 1.54163 8.874 1.71079 8.2915 1.99329C7.72984 2.26663 7.07984 2.66996 6.269 3.17329L4.5465 4.24246C3.77984 4.71913 3.164 5.10079 2.69067 5.46329C2.19984 5.83829 1.82317 6.22163 1.55067 6.71913C1.279 7.21496 1.15734 7.74329 1.09817 8.36746C1.0415 8.97163 1.0415 9.71163 1.0415 10.6391V11.9833C1.0415 13.57 1.0415 14.8225 1.169 15.8016C1.299 16.8058 1.574 17.6166 2.194 18.2575C2.8165 18.9016 3.60817 19.19 4.58984 19.3258C5.53984 19.4583 6.75484 19.4583 8.28484 19.4583H11.7148C13.2448 19.4583 14.4598 19.4583 15.4098 19.3258C16.3907 19.19 17.1832 18.9016 17.8065 18.2575C18.4257 17.6166 18.7007 16.8058 18.8315 15.8016C18.9582 14.8225 18.9582 13.57 18.9582 11.9833V10.6391C18.9582 9.71163 18.9582 8.97246 18.9015 8.36746C18.8432 7.74246 18.7207 7.21496 18.449 6.71913C18.1765 6.22163 17.799 5.83913 17.309 5.46329C16.8357 5.09996 16.2207 4.71913 15.4532 4.24246L13.7307 3.17329C12.9198 2.66996 12.2698 2.26663 11.7073 1.99329C11.1265 1.70996 10.5907 1.54163 9.99984 1.54163Z" fill="url(#paint0_linear_1677_7940)"/>
                                    <path d="M8.95801 15.4999C8.95801 15.7651 9.06336 16.0194 9.2509 16.207C9.43844 16.3945 9.69279 16.4999 9.95801 16.4999C10.2232 16.4999 10.4776 16.3945 10.6651 16.207C10.8527 16.0194 10.958 15.7651 10.958 15.4999V11.4999C10.958 11.2347 10.8527 10.9803 10.6651 10.7928C10.4776 10.6052 10.2232 10.4999 9.95801 10.4999C9.69279 10.4999 9.43844 10.6052 9.2509 10.7928C9.06336 10.9803 8.95801 11.2347 8.95801 11.4999V15.4999Z" fill="white"/>
                                    <defs>
                                    <linearGradient id="paint0_linear_1677_7940" x1="9.99984" y1="1.54163" x2="9.99984" y2="19.4583" gradientUnits="userSpaceOnUse">
                                    <stop stop-color="#0E41C1" stop-opacity="0.870588"/>
                                    <stop offset="1" stop-color="#0047FF" stop-opacity="0.870588"/>
                                    </linearGradient>
                                    </defs>
                                </svg>
                            </span>
                            <span class="menu-title fw-600 black">Dashboards</span>
                            <!--end:Menu link-->
                        </a>
                    </div>
                    <!--begin:Menu item-->
                    <div class="menu-item">
                        <a class="menu-link main" href="/buy-credits.aspx">
                            <!--begin:Menu link-->
                            <span class="menu-icon">
                               <svg width="20" height="21" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M17.5833 7.16996C17.5374 7.16663 17.4866 7.16663 17.4333 7.16663H15.3291C13.6058 7.16663 12.1316 8.52329 12.1316 10.2916C12.1316 12.06 13.6066 13.4166 15.3291 13.4166H17.4333C17.4866 13.4166 17.5374 13.4166 17.5849 13.4133C17.9391 13.3919 18.2735 13.2425 18.5257 12.9929C18.7779 12.7433 18.9307 12.4106 18.9558 12.0566C18.9591 12.0066 18.9591 11.9525 18.9591 11.9025V8.68079C18.9591 8.63079 18.9591 8.57663 18.9558 8.52663C18.9307 8.17268 18.7779 7.8399 18.5257 7.59031C18.2735 7.34071 17.9391 7.19132 17.5849 7.16996H17.5833ZM15.1433 11.125C15.5866 11.125 15.9458 10.7516 15.9458 10.2916C15.9458 9.83163 15.5866 9.45829 15.1433 9.45829C14.6991 9.45829 14.3399 9.83163 14.3399 10.2916C14.3399 10.7516 14.6991 11.125 15.1433 11.125Z" fill="url(#paint0_linear_1677_7286)"/>
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M17.4316 14.6667C17.4604 14.6655 17.4891 14.6712 17.5153 14.6832C17.5415 14.6952 17.5646 14.7132 17.5825 14.7358C17.6004 14.7583 17.6128 14.7848 17.6186 14.8131C17.6244 14.8413 17.6234 14.8705 17.6158 14.8983C17.4491 15.4917 17.1833 15.9983 16.7575 16.4233C16.1333 17.0483 15.3425 17.3242 14.3658 17.4558C13.4158 17.5833 12.2033 17.5833 10.6716 17.5833H8.91163C7.37996 17.5833 6.16663 17.5833 5.21746 17.4558C4.24079 17.3242 3.44996 17.0475 2.82579 16.4242C2.20246 15.8 1.92579 15.0092 1.79413 14.0325C1.66663 13.0825 1.66663 11.87 1.66663 10.3383V10.245C1.66663 8.71333 1.66663 7.5 1.79413 6.55C1.92579 5.57333 2.20246 4.7825 2.82579 4.15833C3.44996 3.535 4.24079 3.25833 5.21746 3.12667C6.16746 3 7.37996 3 8.91163 3H10.6716C12.2033 3 13.4166 3 14.3658 3.1275C15.3425 3.25917 16.1333 3.53583 16.7575 4.15917C17.1833 4.58583 17.4491 5.09167 17.6158 5.685C17.6234 5.71281 17.6244 5.74202 17.6186 5.77027C17.6128 5.79851 17.6004 5.825 17.5825 5.84757C17.5646 5.87014 17.5415 5.88816 17.5153 5.90016C17.4891 5.91217 17.4604 5.91782 17.4316 5.91667H15.3283C12.9641 5.91667 10.8808 7.78333 10.8808 10.2917C10.8808 12.8 12.9641 14.6667 15.3283 14.6667H17.4316ZM4.79163 6.33333C4.62587 6.33333 4.46689 6.39918 4.34968 6.51639C4.23247 6.6336 4.16663 6.79257 4.16663 6.95833C4.16663 7.12409 4.23247 7.28306 4.34968 7.40027C4.46689 7.51749 4.62587 7.58333 4.79163 7.58333H8.12496C8.29072 7.58333 8.44969 7.51749 8.5669 7.40027C8.68411 7.28306 8.74996 7.12409 8.74996 6.95833C8.74996 6.79257 8.68411 6.6336 8.5669 6.51639C8.44969 6.39918 8.29072 6.33333 8.12496 6.33333H4.79163Z" fill="url(#paint1_linear_1677_7286)"/>
                                    <defs>
                                    <linearGradient id="paint0_linear_1677_7286" x1="15.5453" y1="7.16663" x2="15.5453" y2="13.4166" gradientUnits="userSpaceOnUse">
                                    <stop stop-color="#0E41C1" stop-opacity="0.870588"/>
                                    <stop offset="1" stop-color="#0047FF" stop-opacity="0.870588"/>
                                    </linearGradient>
                                    <linearGradient id="paint1_linear_1677_7286" x1="9.64447" y1="3" x2="9.64447" y2="17.5833" gradientUnits="userSpaceOnUse">
                                    <stop stop-color="#0E41C1" stop-opacity="0.870588"/>
                                    <stop offset="1" stop-color="#0047FF" stop-opacity="0.870588"/>
                                    </linearGradient>
                                    </defs>
                               </svg>
                            </span>
                            <span class="menu-title black">Buy Credits</span>
                        <!--end:Menu link-->
                       </a>
                    </div>
                    <!--end:Menu item-->
                    <!--begin:Menu item-->
                    <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                        <!--begin:Menu link-->
                        <span class="menu-link main">
                            <span class="menu-icon">
                               <svg width="20" height="21" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M11.3575 17.56L10.9058 18.3233C10.5033 19.0033 9.49746 19.0033 9.09413 18.3233L8.64246 17.56C8.29246 16.9683 8.11746 16.6716 7.83579 16.5083C7.55413 16.3441 7.19996 16.3383 6.49163 16.3258C5.44496 16.3083 4.78913 16.2441 4.23913 16.0158C3.7336 15.8064 3.27426 15.4995 2.88735 15.1126C2.50044 14.7257 2.19352 14.2663 1.98413 13.7608C1.66663 12.9958 1.66663 12.025 1.66663 10.0833V9.24996C1.66663 6.52246 1.66663 5.15829 2.28079 4.15663C2.62416 3.59596 3.09533 3.1245 3.65579 2.78079C4.65829 2.16663 6.02329 2.16663 8.74996 2.16663H11.25C13.9775 2.16663 15.3416 2.16663 16.3441 2.78079C16.9045 3.12426 17.3757 3.59543 17.7191 4.15579C18.3333 5.15829 18.3333 6.52329 18.3333 9.24996V10.0833C18.3333 12.025 18.3333 12.9958 18.0166 13.7608C17.8071 14.2664 17.5001 14.7258 17.113 15.1127C16.726 15.4996 16.2665 15.8065 15.7608 16.0158C15.2108 16.2441 14.555 16.3075 13.5083 16.3258C12.8 16.3383 12.4458 16.3441 12.1641 16.5083C11.8825 16.6716 11.7075 16.9675 11.3575 17.56ZM6.66663 10.2916C6.50087 10.2916 6.34189 10.3575 6.22468 10.4747C6.10747 10.5919 6.04163 10.7509 6.04163 10.9166C6.04163 11.0824 6.10747 11.2414 6.22468 11.3586C6.34189 11.4758 6.50087 11.5416 6.66663 11.5416H11.25C11.4157 11.5416 11.5747 11.4758 11.6919 11.3586C11.8091 11.2414 11.875 11.0824 11.875 10.9166C11.875 10.7509 11.8091 10.5919 11.6919 10.4747C11.5747 10.3575 11.4157 10.2916 11.25 10.2916H6.66663ZM6.04163 7.99996C6.04163 7.8342 6.10747 7.67523 6.22468 7.55802C6.34189 7.44081 6.50087 7.37496 6.66663 7.37496H13.3333C13.4991 7.37496 13.658 7.44081 13.7752 7.55802C13.8924 7.67523 13.9583 7.8342 13.9583 7.99996C13.9583 8.16572 13.8924 8.32469 13.7752 8.4419C13.658 8.55911 13.4991 8.62496 13.3333 8.62496H6.66663C6.50087 8.62496 6.34189 8.55911 6.22468 8.4419C6.10747 8.32469 6.04163 8.16572 6.04163 7.99996Z" fill="url(#paint0_linear_1677_7295)"/>
                                    <defs>
                                    <linearGradient id="paint0_linear_1677_7295" x1="9.99996" y1="2.16663" x2="9.99996" y2="18.8333" gradientUnits="userSpaceOnUse">
                                    <stop stop-color="#0E41C1" stop-opacity="0.870588"/>
                                    <stop offset="1" stop-color="#0047FF" stop-opacity="0.870588"/>
                                    </linearGradient>
                                    </defs>
                               </svg>
                            </span>
                            <span class="menu-title black">Send SMS</span>
                            <span class="menu-arrow"></span>
                        </span>
                        <!--end:Menu link-->
                        <!--begin:Menu sub-->
                        <div class="menu-sub menu-sub-accordion">
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="/single-sms.aspx">
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
                                <a class="menu-link" href="/sendbulk.aspx">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title black">Bulk SMS</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                             <!--begin:Menu item-->
                             <div class="menu-item">
                                 <!--begin:Menu link-->
                                 <a class="menu-link" href="/files-manager.aspx">
                                     <span class="menu-bullet">
                                         <span class="bullet bullet-dot"></span>
                                     </span>
                                     <span class="menu-title black"> Files Manager</span>
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
                        <a class="menu-link main" href="/admin-sms-log.aspx">
                            <!--begin:Menu link-->
                            <span class="menu-icon">
                                <svg width="18" height="17" viewBox="0 0 18 17" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M11.5 1.42661C12.5593 1.8025 13.5209 2.41106 14.3141 3.20755C15.1073 4.00404 15.7118 4.9682 16.0833 6.02911M8.16663 1.04578C6.90265 1.18708 5.69537 1.64746 4.65824 2.38365C3.62112 3.11984 2.78823 4.10766 2.23784 5.25425C1.68746 6.40084 1.43767 7.66856 1.51195 8.93823C1.58623 10.2079 1.98213 11.4378 2.66246 12.5124L1.49996 15.9999L4.98746 14.8374C6.06205 15.5178 7.29199 15.9137 8.56167 15.988C9.83135 16.0622 11.0991 15.8124 12.2457 15.2621C13.3922 14.7117 14.3801 13.8788 15.1162 12.8417C15.8524 11.8045 16.3128 10.5972 16.4541 9.33328" stroke="url(#paint0_linear_1677_7316)" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
                                    <path d="M8.99992 12.6666C7.89485 12.6666 6.83504 12.2276 6.05364 11.4462C5.27224 10.6648 4.83325 9.60499 4.83325 8.49992M6.49992 5.16659C7.3023 4.5648 8.29483 4.27264 9.29529 4.34374C10.2957 4.41484 11.237 4.84443 11.9462 5.55365C12.6554 6.26286 13.085 7.2041 13.1561 8.20455C13.2272 9.20501 12.935 10.1975 12.3333 10.9999" stroke="url(#paint1_linear_1677_7316)" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
                                    <path d="M8.99996 9.33329C9.4602 9.33329 9.83329 8.9602 9.83329 8.49996C9.83329 8.03972 9.4602 7.66663 8.99996 7.66663C8.53972 7.66663 8.16663 8.03972 8.16663 8.49996C8.16663 8.9602 8.53972 9.33329 8.99996 9.33329Z" stroke="url(#paint2_linear_1677_7316)" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
                                    <defs>
                                    <linearGradient id="paint0_linear_1677_7316" x1="8.97663" y1="1.04578" x2="8.97663" y2="16.0008" gradientUnits="userSpaceOnUse">
                                    <stop stop-color="#0E41C1" stop-opacity="0.870588"/>
                                    <stop offset="1" stop-color="#0047FF" stop-opacity="0.870588"/>
                                    </linearGradient>
                                    <linearGradient id="paint1_linear_1677_7316" x1="8.99992" y1="4.33325" x2="8.99992" y2="12.6666" gradientUnits="userSpaceOnUse">
                                    <stop stop-color="#0E41C1" stop-opacity="0.870588"/>
                                    <stop offset="1" stop-color="#0047FF" stop-opacity="0.870588"/>
                                    </linearGradient>
                                    <linearGradient id="paint2_linear_1677_7316" x1="8.99996" y1="7.66663" x2="8.99996" y2="9.33329" gradientUnits="userSpaceOnUse">
                                    <stop stop-color="#0E41C1" stop-opacity="0.870588"/>
                                    <stop offset="1" stop-color="#0047FF" stop-opacity="0.870588"/>
                                    </linearGradient>
                                    </defs>
                                </svg>
                            </span>
                            <span class="menu-title black">SMS Log</span>
                        <!--end:Menu link-->
                        </a>
                    </div>
                    <!--end:Menu item-->
                    <!--begin:Menu item-->
                    <div class="menu-item">
                        <a class="menu-link main" href="/admin-scheduled-log.aspx">
                            <!--begin:Menu link-->
                            <span class="menu-icon">
                               <svg width="20" height="21" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M4.16671 11.75C3.38337 11.75 2.65837 12.025 2.08337 12.4833C1.31671 13.0917 0.833374 14.0333 0.833374 15.0833C0.833374 16.925 2.32504 18.4167 4.16671 18.4167C5.00837 18.4167 5.77504 18.1 6.36671 17.5833C7.05837 16.975 7.50004 16.0833 7.50004 15.0833C7.50004 13.2417 6.00837 11.75 4.16671 11.75ZM5.00004 15.2917C5.00004 15.5083 4.88337 15.7167 4.70004 15.825L3.65837 16.45C3.55837 16.5167 3.44171 16.5417 3.33337 16.5417C3.12504 16.5417 2.91671 16.4333 2.80004 16.2417C2.62504 15.9417 2.71671 15.5583 3.01671 15.3833L3.75837 14.9417V14.0417C3.75837 13.7 4.04171 13.4167 4.38337 13.4167C4.72504 13.4167 5.00004 13.7 5.00004 14.0417V15.2917Z" fill="url(#paint0_linear_1677_7324)"/>
                                    <path d="M14.375 2.52502H6.45833C4.08333 2.52502 2.5 4.10836 2.5 6.48336V10.2C2.5 10.4917 2.8 10.7 3.08333 10.625C3.43333 10.5417 3.79167 10.5 4.16667 10.5C6.55 10.5 8.51667 12.4334 8.73333 14.775C8.75 15.0084 8.94167 15.1917 9.16667 15.1917H9.625L13.15 17.5417C13.6667 17.8917 14.375 17.5084 14.375 16.875V15.1917C15.5583 15.1917 16.55 14.7917 17.2417 14.1084C17.9333 13.4084 18.3333 12.4167 18.3333 11.2334V6.48336C18.3333 4.10836 16.75 2.52502 14.375 2.52502ZM13.1917 9.50836H7.64167C7.31667 9.50836 7.05 9.24169 7.05 8.91669C7.05 8.58336 7.31667 8.31669 7.64167 8.31669H13.1917C13.5167 8.31669 13.7833 8.58336 13.7833 8.91669C13.7833 9.24169 13.5167 9.50836 13.1917 9.50836Z" fill="url(#paint1_linear_1677_7324)"/>
                                    <defs>
                                    <linearGradient id="paint0_linear_1677_7324" x1="4.16671" y1="11.75" x2="4.16671" y2="18.4167" gradientUnits="userSpaceOnUse">
                                    <stop stop-color="#0E41C1" stop-opacity="0.870588"/>
                                    <stop offset="1" stop-color="#0047FF" stop-opacity="0.870588"/>
                                    </linearGradient>
                                    <linearGradient id="paint1_linear_1677_7324" x1="10.4167" y1="2.52502" x2="10.4167" y2="17.6745" gradientUnits="userSpaceOnUse">
                                    <stop stop-color="#0E41C1" stop-opacity="0.870588"/>
                                    <stop offset="1" stop-color="#0047FF" stop-opacity="0.870588"/>
                                    </linearGradient>
                                    </defs>
                               </svg>
                            </span>
                            <span class="menu-title black">SMS Scheduled Log</span>
                        </a>
                      </div>
                     <!--end:Menu link-->
                    <!--end:Menu item-->
                    <!--begin:Menu item-->
                    <%--                    <div data-kt-menu-trigger="{default: 'click', lg: 'hover'}" data-kt-menu-placement="right-start" class="menu-item menu-lg-down-accordion menu-sub-lg-down-indention">--%>
                    <!--begin:Menu link-->
                    <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                        <!--begin:Menu link-->
                        <span class="menu-link main">
                            <span class="menu-icon">
                                <svg width="20" height="21" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <g clip-path="url(#clip0_1677_7335)">
                                    <path d="M15.9767 9.56653C15.8009 9.56653 15.6381 9.59908 15.4884 9.66418C15.3387 9.72929 15.2085 9.81718 15.0978 9.92786C14.9871 10.0385 14.896 10.172 14.8243 10.3282C14.7527 10.4845 14.7202 10.6473 14.7267 10.8165C14.7267 10.9923 14.7592 11.1551 14.8243 11.3048C14.8894 11.4545 14.9773 11.5848 15.088 11.6954C15.1987 11.8061 15.3322 11.8973 15.4884 11.9689C15.6447 12.0405 15.8074 12.073 15.9767 12.0665H17.8517V17.0665H14.1017V17.6915C14.1017 18.0366 14.0366 18.3588 13.9064 18.6583C13.7762 18.9578 13.5971 19.2247 13.3693 19.4591C13.1414 19.6935 12.8777 19.8725 12.5782 19.9962C12.2788 20.1199 11.9532 20.185 11.6017 20.1915C11.2566 20.1915 10.9344 20.1264 10.6349 19.9962C10.3354 19.866 10.0685 19.687 9.83411 19.4591C9.59973 19.2312 9.42069 18.9676 9.297 18.6681C9.1733 18.3686 9.10819 18.0431 9.10168 17.6915V17.0665H5.35168V13.3165H4.72668C4.38163 13.3165 4.05937 13.2514 3.75989 13.1212C3.46041 12.991 3.19348 12.812 2.95911 12.5841C2.72473 12.3562 2.54569 12.0926 2.422 11.7931C2.2983 11.4936 2.23319 11.1681 2.22668 10.8165C2.22668 10.4715 2.29179 10.1492 2.422 9.84973C2.55221 9.55025 2.73124 9.28333 2.95911 9.04895C3.18697 8.81458 3.45064 8.63554 3.75012 8.51184C4.0496 8.38814 4.37512 8.32304 4.72668 8.31653H5.35168V4.56653H9.10168V3.94153C9.10168 3.59648 9.16679 3.27421 9.297 2.97473C9.4272 2.67525 9.60624 2.40833 9.83411 2.17395C10.062 1.93958 10.3256 1.76054 10.6251 1.63684C10.9246 1.51314 11.2501 1.44804 11.6017 1.44153C11.9467 1.44153 12.269 1.50663 12.5685 1.63684C12.868 1.76705 13.1349 1.94609 13.3693 2.17395C13.6036 2.40181 13.7827 2.66549 13.9064 2.96497C14.0301 3.26444 14.0952 3.58997 14.1017 3.94153V4.56653H17.8517V9.56653H15.9767Z" fill="url(#paint0_linear_1677_7335)"/>
                                    </g>
                                    <defs>
                                    <linearGradient id="paint0_linear_1677_7335" x1="10.0392" y1="1.44153" x2="10.0392" y2="20.1915" gradientUnits="userSpaceOnUse">
                                    <stop stop-color="#0E41C1" stop-opacity="0.870588"/>
                                    <stop offset="1" stop-color="#0047FF" stop-opacity="0.870588"/>
                                    </linearGradient>
                                    <clipPath id="clip0_1677_7335">
                                    <rect width="20" height="20" fill="white" transform="translate(0 0.5)"/>
                                    </clipPath>
                                    </defs>
                                </svg>
                            </span>
                            <span class="menu-title black">Reseller Features</span>
                            <span class="menu-arrow"></span>
                        </span>
                        <!--end:Menu link-->
                        <!--begin:Menu sub-->
                        <div class="menu-sub menu-sub-accordion">
                            <%--                        <div class="menu-sub menu-sub-lg-down-accordion menu-sub-lg-dropdown px-2 py-4 w-200px mh-75 overflow-auto">--%>
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="/coverage-price.aspx">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title black"> SMS Coverage & Pricing</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="/sms-summary.aspx">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title black"> SMS Summary</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="/affiliates.aspx">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title black">Affiliates</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="/api.aspx">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title black"> API Documentation</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                        </div>
                        <!--end:Menu sub-->
                    </div>
                    <!--end:Menu item-->
                    <!--begin:Menu link-->
                    <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                        <!--begin:Menu link-->
                        <span class="menu-link main">
                            <span class="menu-icon">
                                <svg width="20" height="21" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M3.4083 17.0917C3.86664 17.5417 4.46664 17.7917 5.09997 17.7917C5.7333 17.7917 6.3333 17.5417 6.7833 17.0917L11.375 12.5C12.9916 12.9167 14.7333 12.4667 15.9166 11.2833C17.1166 10.0917 17.575 8.34167 17.1333 6.71667C17.075 6.50001 16.9083 6.33334 16.6916 6.27501C16.4833 6.21667 16.25 6.27501 16.0916 6.43334L14.05 8.47501L12.4583 8.04167L12.025 6.45001L14.0666 4.40834C14.225 4.25001 14.2833 4.02501 14.225 3.80834C14.1666 3.59167 14 3.42501 13.7833 3.36667C12.9823 3.15046 12.1385 3.14908 11.3368 3.36267C10.5351 3.57626 9.80387 3.99728 9.21664 4.58334C8.0333 5.76667 7.5833 7.50834 7.99997 9.12501L3.4083 13.7167C3.18632 13.9381 3.0102 14.2011 2.89003 14.4907C2.76986 14.7802 2.70801 15.0907 2.70801 15.4042C2.70801 15.7177 2.76986 16.0281 2.89003 16.3177C3.0102 16.6073 3.18632 16.8703 3.4083 17.0917Z" fill="url(#paint0_linear_1677_7360)"/>
                                    <defs>
                                    <linearGradient id="paint0_linear_1677_7360" x1="10.0031" y1="3.20349" x2="10.0031" y2="17.7917" gradientUnits="userSpaceOnUse">
                                    <stop stop-color="#0E41C1" stop-opacity="0.870588"/>
                                    <stop offset="1" stop-color="#0047FF" stop-opacity="0.870588"/>
                                    </linearGradient>
                                    </defs>
                               </svg>
                            </span>
                            <span class="menu-title black">Reseller Admin</span>
                            <span class="menu-arrow"></span>
                        </span>
                        <!--end:Menu link-->
                        <!--begin:Menu sub-->
                        <div class="menu-sub menu-sub-accordion">
                            <%--                        <div class="menu-sub menu-sub-lg-down-accordion menu-sub-lg-dropdown px-2 py-4 w-200px mh-75 overflow-auto">--%>
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="/user-list.aspx">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title black">Users List</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="/send-email.aspx">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title black">Send Email</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                             <!--begin:Menu item-->
                             <div class="menu-item">
                                 <!--begin:Menu link-->
                                 <a class="menu-link" href="/transactions-log.aspx">
                                     <span class="menu-bullet">
                                         <span class="bullet bullet-dot"></span>
                                     </span>
                                     <span class="menu-title black">Transactions Log</span>
                                 </a>
                                 <!--end:Menu link-->
                             </div>
                             <!--end:Menu item-->
                             <!--begin:Menu item-->
                             <div class="menu-item">
                                 <!--begin:Menu link-->
                                 <a class="menu-link" href="/credits-log.aspx">
                                     <span class="menu-bullet">
                                         <span class="bullet bullet-dot"></span>
                                     </span>
                                     <span class="menu-title black">Credits Log</span>
                                 </a>
                                 <!--end:Menu link-->
                             </div>
                             <!--end:Menu item-->
                             <!--begin:Menu item-->
                                 <div class="menu-item">
                                     <!--begin:Menu link-->
                                     <a class="menu-link" href="/sms-log.aspx">
                                         <span class="menu-bullet">
                                             <span class="bullet bullet-dot"></span>
                                         </span>
                                         <span class="menu-title black">SMS Log</span>
                                     </a>
                                     <!--end:Menu link-->
                                 </div>
                                 <!--end:Menu item-->
                             <!--begin:Menu item-->
                                 <div class="menu-item">
                                     <!--begin:Menu link-->
                                     <a class="menu-link" href="/sms-log.aspx">
                                         <span class="menu-bullet">
                                             <span class="bullet bullet-dot"></span>
                                         </span>
                                         <span class="menu-title black">SMS Scheduled Log</span>
                                     </a>
                                     <!--end:Menu link-->
                                 </div>
                                 <!--end:Menu item-->
                             <!--begin:Menu item-->
                                 <div class="menu-item">
                                     <!--begin:Menu link-->
                                     <a class="menu-link" href="/general-settings.aspx">
                                         <span class="menu-bullet">
                                             <span class="bullet bullet-dot"></span>
                                         </span>
                                         <span class="menu-title black">General Settings</span>
                                     </a>
                                     <!--end:Menu link-->
                                 </div>
                                 <!--end:Menu item-->
                             <!--begin:Menu item-->
                        </div>
                        <!--end:Menu sub-->
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
