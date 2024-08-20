$('#payment-report-table').DataTable({
    dom: "<'d-flex mb-5 justify-content-between align-items-center flex-column flex-md-row'<''f><'mt-3 mt-md-0 mb-3 mb-md-0'B>>" +
        "<'row'<'col-sm-12'tr>>" +
        "<'d-flex justify-content-between align-items-center flex-column flex-md-row'<''l><''i><''p>>",
    buttons: [
        'csv', 'excel', 'pdf'
    ],
});

var invoiceModal = new bootstrap.Modal(document.getElementById("invoice-modal"), {});

$('.print-invoice').click(function () {
    var htmlPath = $(this).attr('html-invoice');
    var invoiceModalBody = $('#invoice-body');
    var printThis = $('#printThis');
    var htmlInvoice;

    $.get(htmlPath, function (html_string) {
        htmlInvoice = html_string;
        console.log(html_string);
    }, 'html').then(function () {
        invoiceModalBody.html(htmlInvoice);
        printThis.html(htmlInvoice);
    });

    invoiceModal.show();
})

$('#print-btn').click(function () {
    printElement(document.getElementById("printThis"));
    window.print();
})

function printElement(elem) {
    var domClone = elem.cloneNode(true);

    var $printSection = document.getElementById("printSection");

    if (!$printSection) {
        var $printSection = document.createElement("div");
        $printSection.id = "printSection";
        document.body.appendChild($printSection);
    }

    $printSection.innerHTML = "";

    $printSection.appendChild(domClone);
}