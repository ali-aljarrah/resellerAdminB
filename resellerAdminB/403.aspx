<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="403.aspx.cs" Inherits="resellerAdminB._403" %>



<%@ Register Src="~/Controls/head.ascx" TagPrefix="uc1" TagName="head" %>
<%@ Register Src="~/Controls/loader.ascx" TagPrefix="uc1" TagName="loader" %>
<%@ Register Src="~/Controls/footerLinks.ascx" TagPrefix="uc1" TagName="footerLinks" %>

<uc1:head runat="server" ID="head" />
        <title>Reseller - 403</title>
	</head>
	<!--end::Head-->
	<!--begin::Body-->
    <body id="kt_app_body" data-kt-app-header-fixed="true" data-kt-app-header-fixed-mobile="true" data-kt-app-sidebar-enabled="true" data-kt-app-sidebar-fixed="true" data-kt-app-sidebar-push-header="true" data-kt-app-sidebar-push-toolbar="true" data-kt-app-sidebar-push-footer="true" data-kt-app-toolbar-enabled="true" class="app-default">
       <uc1:loader runat="server" id="loader" />
        <!--begin::Theme mode setup on page load-->
		<script>
            var defaultThemeMode = "light"; var themeMode; if ( document.documentElement ) { if ( document.documentElement.hasAttribute("data-bs-theme-mode")) { themeMode = document.documentElement.getAttribute("data-bs-theme-mode"); } else { if ( localStorage.getItem("data-bs-theme") !== null ) { themeMode = localStorage.getItem("data-bs-theme"); } else { themeMode = defaultThemeMode; } } if (themeMode === "system") { themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light"; } document.documentElement.setAttribute("data-bs-theme", themeMode); }
        </script>
        <div class="error-page-wrapper">
            <div>
                <div class="text-center">
                    <div class="text-center fw-600 mb-5 text-btn-grad">
                        <div class="fs-96 line-h-90">403</div>
                        <div class="fs-24">Page forbidden</div>
                    </div>
                    <div class="text-center fs-32 white-color fw-bold">
                    You’re not allowed in here
                    </div>
                    <div class="fs-16 text-white">
                    We apologize. You don’t have permission to access this page or resources.
                    </div>
                    <div class="d-flex justify-content-center align-items-center mt-8">
                        <div class="me-3">
                            <a class="btn-white" href="/index.aspx">Back to Dashboard</a>
                        </div>
                        <div>
                            <a class="btn-outline-white" href="/help.aspx">Get help</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        	<uc1:footerLinks runat="server" id="footerLinks" />
	</body>
	<!--end::Body-->
</html>
