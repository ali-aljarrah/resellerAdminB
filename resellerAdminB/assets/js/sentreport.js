var date = new Date();
var currentMonth = date.getMonth();
var currentDate = date.getDate();
var currentYear = date.getFullYear();
var yesteday = new Date(new Date().setDate(new Date().getDate() - 1));
var minDate = new Date(currentYear, currentMonth - 1, currentDate + 1);
var maxDate = new Date(currentYear, currentMonth, currentDate - 1);

$('#date_from').daterangepicker({
    locale: {
        format: 'YYYY-MM-DD',
        separator: " to "
    },
    singleDatePicker: true,
    showDropdowns: true,
    autoApply: true,
    startDate: yesteday,
    minDate: minDate,
    maxDate: maxDate,
});

$('#date_to').daterangepicker({
    locale: {
        format: 'YYYY-MM-DD',
        separator: " to "
    },
    singleDatePicker: true,
    showDropdowns: true,
    autoApply: true,
    startDate: yesteday,
    minDate: minDate,
    maxDate: maxDate,
});

$("#rest_form_btn").click(function () {
    var date = new Date();
    var currentMonth = date.getMonth();
    var currentDate = date.getDate();
    var currentYear = date.getFullYear();

    $('#date_from').daterangepicker({
        locale: {
            format: 'YYYY-MM-DD',
            separator: " to "

        },
        singleDatePicker: true,
        showDropdowns: true,
        autoApply: true,
        startDate: new Date("9/19/2023"),
        minDate: new Date(currentYear, currentMonth - 1, currentDate),
        maxDate: new Date("9/19/2023"),
    });

    $('#date_to').daterangepicker({
        locale: {
            format: 'YYYY-MM-DD',
            separator: " to "
        },
        singleDatePicker: true,
        showDropdowns: true,
        startDate: new Date("9/19/2023"),
        autoApply: true,
        minDate: new Date(currentYear, currentMonth - 1, currentDate),
        maxDate: new Date("9/19/2023"),
    });
});

$('#export').click(function (e) {
    e.preventDefault();

    var date_from = $('#date_from').val();
    var date_to = $('#date_to').val();

    $(this).prop('disabled', true);

    if (date_from == '') {

        toastr.error("Please enter start date!");

        $(this).prop('disabled', false);

        return;
    }

    if (date_to == '') {

        toastr.error("Please enter finish date!");

        $(this).prop('disabled', false);

        return;
    }

    toastr.success("Request received, Download link will be showing in the section down once ready, Note that exporting will take some time depending on the data size.");

    $(this).prop('disabled', false);
});

$(document).ready(function () {
    $('#sms_report_table_processing').parent().addClass('position-relative');
    $.fn.dataTable.ext.errMode = 'none';
    $('#sms_report_table').on('error.dt', function (e, settings, techNote, message) {
        console.log('An error has been reported by DataTables: ', message);
    }).DataTable();

    var reportdata = $('#sent-sms-report').DataTable({
        // "initComplete": function (settings, json) {

        //     //   $('#divtable').show();
        //     reportdata.columns.adjust().responsive.recalc();
        //     reportdata.columns.adjust().responsive.recalc();

        // },


        dom: "<'d-flex mb-5 justify-content-between align-items-center flex-column flex-md-row'<''f><'mt-3 mt-md-0 mb-3 mb-md-0'B>>" +
            "<'row'<'col-sm-12'tr>>" +
            "<'d-flex justify-content-between align-items-center flex-column flex-md-row'<''l><''i><''p>>",
        buttons: [
            'csv', 'excel', 'pdf'
        ],
        "bDestroy": true,
        "lengthChange": true,
        "aLengthMenu": [[25, 50, 100], [25, 50, 100]],
        "iDisplayLength": 25,

        "ordering": false,
        "processing": true,
        'language': {
            'loadingRecords': '&nbsp;',
            'processing': '<div class="spinner"></div>'
        },
        "bProcessing": false,
        "bServerSide": false,
        "searching": true,

        scrollCollapse: true,
        // ajax: {
        //     url: 'secu_report/data.php',
        //     type: 'POST',
        //     "dataSrc": function (aaData) {

        //         if (aaData.sEcho != "1000000000") {


        //             return ((aaData.aaData));
        //         } else {
        //             Swal.fire({
        //                 text: "Time out please login again...",
        //                 icon: "error",
        //                 buttonsStyling: !1,
        //                 confirmButtonText: "Ok",
        //                 customClass: { confirmButton: "btn btn-primary" },
        //             });

        //         }
        //     }
        // },

    });

    $('#btn-reload').on('click', function () {
        reportdata.ajax.reload();
    });
});