$(document).ready(function () {

    // Destination Activity chart
    var element = document.getElementById("destination_activity_chart");

    var height = parseInt(KTUtil.css(element, 'height'));
    var labelColor = KTUtil.getCssVariableValue('--bs-gray-900');
    var borderColor = KTUtil.getCssVariableValue('--bs-border-dashed-color');

    var options = {
        series: [{
            name: 'Sent SMS',
            data: [54, 42, 75, 110, 23, 87, 50, 80, 10, 50, 70]
        }],
        chart: {
            fontFamily: 'inherit',
            type: 'bar',
            height: height,
            toolbar: {
                show: false
            }
        },
        plotOptions: {
            bar: {
                horizontal: false,
                columnWidth: ['15%'],
                borderRadius: 5,
                dataLabels: {
                    position: "top" // top, center, bottom
                },
                startingShape: 'flat'
            },
        },
        legend: {
            show: false
        },
        dataLabels: {
            enabled: true,
            offsetY: -28,
            style: {
                fontSize: '13px',
                colors: [labelColor]
            },
            formatter: function (val) {
                return val;// + "H";
            }
        },
        stroke: {
            show: true,
            width: 2,
            colors: ['transparent']
        },
        xaxis: {
            categories: ['England', 'Scotland', 'Japan', 'China', 'India', 'Brazil', 'Mongolia', 'Amsterdam', 'Korea', 'Germany', 'USA'],
            axisBorder: {
                show: false,
            },
            axisTicks: {
                show: false
            },
            labels: {
                style: {
                    colors: KTUtil.getCssVariableValue('--bs-gray-500'),
                    fontSize: '13px'
                }
            },
            crosshairs: {
                fill: {
                    gradient: {
                        opacityFrom: 0,
                        opacityTo: 0
                    }
                }
            }
        },
        yaxis: {
            labels: {
                style: {
                    colors: KTUtil.getCssVariableValue('--bs-gray-500'),
                    fontSize: '13px'
                },
                formatter: function (val) {
                    return val;
                }
            }
        },
        fill: {
            opacity: 1
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
                    return + val + 'M'
                }
            }
        },
        colors: [KTUtil.getCssVariableValue('--bs-primary'), KTUtil.getCssVariableValue('--bs-primary-light')],
        grid: {
            borderColor: borderColor,
            strokeDashArray: 4,
            yaxis: {
                lines: {
                    show: true
                }
            }
        }
    };

    var chart = new ApexCharts(element, options);
    chart.render();

    // Status  Activity chart
    var element_1 = document.getElementById('status_activity_chart');

    var height_1 = parseInt(KTUtil.css(element_1, 'height'));
    var labelColor_1 = KTUtil.getCssVariableValue('--kt-gray-500');
    var borderColor_1 = KTUtil.getCssVariableValue('--bs-border-dashed-color');
    var baseColor_1 = KTUtil.getCssVariableValue('--kt-info');
    var lightColor_1 = KTUtil.getCssVariableValue('--bs-primary');

    var options_1 = {
        series: [{
            name: 'Recent Activity ',
            data: [30, 40, 40, 50, 90, 70, 10, 5, 18, 5, 115, 10]
        }],
        chart: {
            fontFamily: 'inherit',
            type: 'area',
            height: height_1,
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
            colors: [baseColor_1]
        },
        xaxis: {
            categories: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
            axisBorder: {
                show: false,
            },
            axisTicks: {
                show: false
            },
            labels: {
                style: {
                    colors: labelColor_1,
                    fontSize: '12px'
                }
            },
            crosshairs: {
                position: 'front',
                stroke: {
                    color: baseColor_1,
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
                    colors: labelColor_1,
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
        colors: ['#7239ea6e', '#000'],
        grid: {
            borderColor: borderColor_1,
            strokeDashArray: 4,
            yaxis: {
                lines: {
                    show: true
                }
            }
        },
        markers: {
            strokeColor: baseColor_1,
            strokeWidth: 3
        }
    };

    var chart_1 = new ApexCharts(element_1, options_1);
    chart_1.render();

});