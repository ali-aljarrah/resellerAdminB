<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sms-summary.aspx.cs" Inherits="resellerAdminB.sms_summary" %>



<%@ Register Src="~/Controls/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>
<%@ Register Src="~/Controls/FooterLinks.ascx" TagPrefix="uc1" TagName="FooterLinks" %>
<%@ Register Src="~/Controls/Head.ascx" TagPrefix="uc1" TagName="Head" %>
<%@ Register Src="~/Controls/Loader.ascx" TagPrefix="uc1" TagName="Loader" %>
<%@ Register Src="~/Controls/MenuTop.ascx" TagPrefix="uc1" TagName="MenuTop" %>
<%@ Register Src="~/Controls/SideBar.ascx" TagPrefix="uc1" TagName="SideBar" %>

<uc1:Head runat="server" id="Head" />
<title>Reseller Admin - Dashboard</title>
</head>
<!--end::Head-->
<!--begin::Body-->
<body id="kt_app_body" data-kt-app-layout="dark-sidebar" data-kt-app-header-fixed="true" data-kt-app-sidebar-enabled="true" data-kt-app-sidebar-fixed="true" data-kt-app-sidebar-hoverable="true" data-kt-app-sidebar-push-header="true" data-kt-app-sidebar-push-toolbar="true" data-kt-app-sidebar-push-footer="true" data-kt-app-toolbar-enabled="true" class="app-default">
    <uc1:Loader runat="server" id="Loader" />
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
            <uc1:MenuTop runat="server" id="MenuTop" parentPageText="Home" childPageText="Dashboard" />
            <!--end::Header-->
            <!--begin::Wrapper-->
            <div class="app-wrapper flex-column flex-row-fluid" id="kt_app_wrapper">
                <!--begin::Sidebar-->
                <uc1:SideBar runat="server" id="SideBar" />
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
									<div class="row gy-5 g-xl-10">
                                        <div class="col-md-12">
                                            <!--begin::Page title-->
                                            <div class="page-title gap-1 d-flex justify-content-between align-items-start">
                                                <div>
                                                   <!--begin::Title-->
                                                    <div class="d-flex justify-content-start align-items-center mb-1">
                                                        <h1 class="page-heading text-dark fw-bold m-0 me-3">SMS Summary</h1>
                                                    </div>
                                                    <p class="fs-14 gray pt-4">
                                                    View and track your SMS summary here. Monitor your status activity and destination activity to be well informed of your sent SMS.
                                                    </p>
                                                    <!--end::Title-->
                                                </div>
                                            </div>
                                            <!--end::Page title-->
                                        </div>
										<!--begin::Col-->
										<div class="col-sm-6 col-xl-4 mb-xl-10">
											<!--begin::Card widget 2-->
											<div class="card card-flush shadow-xs bg-blue h-lg-100">
												<!--begin::Body-->
												<div class="card-body">
													<!--begin::Section-->
													<div class="white-color fs-16 fw-500">
                                                    Sent Messages
													</div>
													<div class="d-flex flex-column mt-7">
														<div class="d-flex align-items-center">
															<!--begin::Number-->
															<span class="fw-semibold fs-3x white-color lh-1 ls-n2">500k</span>
															<!--end::Number-->
															<div class="ms-3">
																<!--begin::Badge-->
																<span class="badge badge-light-success fs-base rounded-circle me-1">
																	<i class="ki-outline ki-arrow-up fs-5 text-success ms-n1"></i>
																</span>
																<!--end::Badge-->
																<span class=" text-success">15%</span>
															</div>
														</div>
														<!--begin::Follower-->
														<div class="mt-5">
															<span class="fw-semibold fs-6  white-color">since last sent</span>
														</div>
														<!--end::Follower-->
													</div>
													<!--end::Section-->
												</div>
												<!--end::Body-->
											</div>
											<!--end::Card widget 2-->
										</div>
										<!--end::Col-->
										<!--begin::Col-->
										<div class="col-sm-6 col-xl-4 mb-xl-10">
											<!--begin::Card widget 2-->
											<div class="card card-flush shadow-xs h-lg-100">
												<!--begin::Body-->
												<div class="card-body">
													<!--begin::Section-->
													<div class="dark-color fs-16 fw-600">
													Failed Messages
													</div>
													<div class="d-flex flex-column mt-7">
														<div class="d-flex align-items-center">
															<!--begin::Number-->
															<span class="fw-semibold fs-3x text-gray-800 lh-1 ls-n2">100k</span>
															<!--end::Number-->
															<div class="ms-3">
																<!--begin::Badge-->
																<span class="badge badge-light-danger fs-base rounded-circle me-1">
																	<i class="ki-outline ki-arrow-down fs-5 text-danger ms-n1"></i>
																</span>
																<!--end::Badge-->
                                                                <span class="text-danger">15%</span>
															</div>
														</div>
														<!--begin::Follower-->
														<div class="mt-5">
															<span class="fw-semibold fs-6 gray">since last recharge</span>
														</div>
														<!--end::Follower-->
													</div>
													<!--end::Section-->
												</div>
												<!--end::Body-->
											</div>
											<!--end::Card widget 2-->
										</div>
										<!--end::Col-->
										<!--begin::Col-->
										<div class="col-sm-6 col-xl-4 mb-xl-10">
											<!--begin::Card widget 2-->
											<div class="card card-flush shadow-xs h-lg-100">
												<!--begin::Body-->
												<div class="card-body">
													<!--begin::Section-->
													<div class="dark-color fs-16 fw-600">
													Total Messages
													</div>
													<div class="d-flex flex-column mt-7">
														<div class="d-flex align-items-center">
															<!--begin::Number-->
															<span class="fw-semibold fs-3x text-gray-800 lh-1 ls-n2">600k</span>
															<!--end::Number-->
															<div class="ms-3">
																<!--begin::Badge-->
																<span class="badge badge-light-success fs-base rounded-circle me-1">
																	<i class="ki-outline ki-arrow-up fs-5 text-success ms-n1"></i>
																</span>
																<!--end::Badge-->
																<span class=" text-success">45%</span>
															</div>
														</div>
														<!--begin::Follower-->
														<div class="mt-5">
															<span class="fw-semibold fs-6 gray">since last sent</span>
														</div>
														<!--end::Follower-->
													</div>
													<!--end::Section-->
												</div>
												<!--end::Body-->
											</div>
											<!--end::Card widget 2-->
										</div>
										<!--end::Col-->
								</div>
									<!--end::Row-->
									<!--begin::Row-->
									<div class="row g-5 g-xl-10 mb-xl-10">
										<div class="col-md-12 mb-xl-10">
											<!--begin::Chart widget 38-->
											<div class="card card-flush border-0 shadow-xs h-100 mb-5 mb-xl-10">
												<!--begin::Header-->
												<div class="card-header pt-8">
													<!--begin::Title-->
													<h3 class="card-title align-items-start flex-column">
														<span class="card-label fw-bold dark-color">Status Activity</span>
													</h3>
													<!--end::Title-->
												</div>
												<!--end::Header-->
												<!--begin::Body-->
												<div class="card-body w-100 px-0 pt-3 pb-5">
													<div class="card-body">
														<div id="kt_docs_google_chart_column" style="height: 350px;"></div>
													</div>
												</div>
												<!--end: Card Body-->
											</div>
											<!--end::Chart widget 38-->
										</div>
									</div>
									<!--end::Row-->
									<!--begin::Row-->
									<div class="row g-5 g-xl-10 mb-xl-10">
										<!--begin::Col-->
										<div class="col-xl-12">
											<!--begin::Chart widget 38-->
											<div class="card card-flush border-0 shadow-xs h-100 mb-5 mb-xl-10">
												<!--begin::Header-->
												<div class="card-header pt-8">
													<!--begin::Title-->
													<h3 class="card-title align-items-start flex-column">
														<span class="card-label fw-bold dark-color">Destination Activity</span>
													</h3>
													<!--end::Title-->
												</div>
												<!--end::Header-->
												<!--begin::Body-->
												<div class="px-0 pt-3 pb-5">
													<!--begin::Chart-->
													<div id="kt_docs_google_chart_column_2" style="height: 350px;"></div>
													<!--end::Chart-->
												</div>
												<!--end: Card Body-->
											</div>
											<!--end::Chart widget 38-->
										</div>
										<!--end::Col-->
									</div>
									<!--end::Row-->
								</div>
								<!--end::Content container-->
						    <!--begin::Footer-->
							 <uc1:Footer runat="server" id="Footer" />
									<!--end::Footer-->
								</div>
								<!--end:::Main-->

							</div>
							<!--end::Wrapper-->
						</div>
						<!--end::Page-->

					</div>
					<!--end::App-->
					<uc1:FooterLinks runat="server" id="FooterLinks" />
            <script src="/assets/js/sms-summary.js"></script>
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
                            f: '18 pm'
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
                        ['Jun', 32.49, '#0e41c1'],
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
                            format: 'h:mm a',
                            viewWindow: {
                                min: [7, 30, 0],
                                max: [22, 30, 0]
                            },
                        },
                        colors: ['#6e4ff5', '#fe3995']
                    };



                    var chart = new google.visualization.ColumnChart(document.getElementById('kt_docs_google_chart_column'));
                    chart.draw(data, options);
                });
            </script>
			<script>

							// GOOGLE CHARTS INIT
                google.load('visualization', '2', {
					packages: ['corechart', 'bar', 'line']
				});

				google.setOnLoadCallback(function () {
					// COLUMN CHART
                    var data = new google.visualization.DataTable();
					data.addColumn('timeofday', 'Time of Day');
                    data.addColumn('number', 'Delivered');
                    data.addColumn('number', 'Undelivered');


					data.addRows([
                        [{
                            v: [7, 0, 0],
                            f: 'syria'
                        }, 4, 4.25],
						[{
							v: [8, 0, 0],
							f: '8 am'
						}, 8, 3.25],
						[{
							v: [9, 0, 0],
							f: '9 am'
						}, 7, 2.5],
						[{
							v: [10, 0, 0],
							f: '10 am'
						}, 3, 3.5],
						[{
							v: [11, 0, 0],
							f: '11 am'
						}, 4, .5],
						[{
							v: [12, 0, 0],
							f: '12 pm'
						}, 7, 2.25],
						[{
							v: [13, 0, 0],
							f: 'wrwrwrw'
						}, 6, 3],
						[{
							v: [14, 0, 0],
							f: '2 pm'
						}, 7, 4],
						[{
							v: [15, 0, 0],
							f: '3 pm'
						}, 3, 4.5],
						[{
							v: [16, 0, 0],
							f: '4 pm'
						}, 9, 7.5],
						[{
							v: [17, 0, 0],
							f: '5 pm'
						}, 10, 10],
					]);

                   

					var options = {
						focusTarget: 'category',
						hAxis: {
							format: 'h:mm a',
							viewWindow: {
								min: [7, 10, 0],
								max: [17, 10, 0]
							},
						},
                        colors: ['#245DF1', '#E6E8EC']
					};

                    var chart = new google.visualization.ColumnChart(document.getElementById('kt_docs_google_chart_column_2'));
					chart.draw(data, options);
				});
            </script>

	</body>
	<!--end::Body-->
</html>

