

$(document).ready(function () {
    $('#hlr_report_table_processing').parent().addClass('position-relative');
    $.fn.dataTable.ext.errMode = 'none';
    $('#hlr_report_table').on('error.dt', function (e, settings, techNote, message) {
        console.log('An error has been reported by DataTables: ', message);
    }).DataTable();

    var reportdata = $('#hlr_report_table').DataTable({
        "initComplete": function (settings, json) {
            reportdata.columns.adjust().responsive.recalc();
            reportdata.columns.adjust().responsive.recalc();

        },

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
        "bServerSide": true,
        "searching": true,

        scrollCollapse: true,
        ajax: {
            url: '/secu_report/hlr_data.php',
            type: 'POST',
            "dataSrc": function (aaData) {
                if (aaData.sEcho != "1000000000") {
                    return ((aaData.aaData));
                } else {
                    Swal.fire({
                        text: "Time out please login again...",
                        icon: "error",
                        buttonsStyling: !1,
                        confirmButtonText: "Ok",
                        customClass: { confirmButton: "btn btn-primary" },
                    });

                }
            }
        },

    });

    $('#btn-reload').on('click', function () {
        reportdata.ajax.reload();
    });

});



