$(document).ready(function () {
    // Affiliate Performance chart
    var element_1 = document.getElementById('affiliate_performance_chart');

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


    // Select element
    const target = document.getElementById('kt_clipboard_3');

    // Init clipboard -- for more info, please read the offical documentation: https://clipboardjs.com/
    clipboard = new ClipboardJS(target);

    // Success action handler
    clipboard.on('success', function (e) {
        const currentLabel = target.innerHTML;

        // Exit label update when already in progress
        if (target.innerHTML === 'Copied!') {
            return;
        }

        // Update button label
        target.innerHTML = 'Copied!';

        // Revert button label after 3 seconds
        setTimeout(function () {
            target.innerHTML = currentLabel;
        }, 3000)
    });

});