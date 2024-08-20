// Table datatable
$('#latest-table').DataTable({
    "paging": false,
    "bInfo": false
});

// Templates placeholders to test the modal
var templates = [
    {
        templateName: "Evacuation",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
    },
    {
        templateName: "First Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Second Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Third Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Third Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Third Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Third Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Third Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Third Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Third Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Third Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    }
];

// Modals initialize
var chooseTemplate = new bootstrap.Modal(document.getElementById("chooseTemplate"), {});
var saveTemplate = new bootstrap.Modal(document.getElementById("saveTemplate"), {});

// Updating the templates list in the modal and open it
$('#chooseTemplateBtn').click(function (e) {
    e.preventDefault();

    console.log('test');

    $('#templates-table tbody').empty();

    $.each(templates, function (i) {
        $('#templates-table tbody').append(`
            <tr class="fs-14 dark-color">
                <td>
                    <div class="form-check form-check-custom form-check-success form-check-solid">
                        <input class="form-check-input select-template" type="radio" value="`+ templates[i].templateText + `" name="selectTempalte"/>
                    </div>
                </td>
                <td class="fs-14 black-color-1">
                    `+ templates[i].templateName + `
                </td>
                <td>
                  <div class="p-2 black-color-1 fs-12 rounded bg-gray">  `+ templates[i].templateText + `</div>
                </td>
            </tr>
        `);

    });

    chooseTemplate.show();
});

// Submit choose template event
$('#chooseTemplateSubmitBtn').click(function (e) {
    e.preventDefault();

    $(this).prop('disabled', true);

    if ($('input[name="selectTempalte"]').is(':checked')) {
        var selectedValue = $('input[name="selectTempalte"]:checked').val();

        var oldText = $('#txtMessage').val();

        $('#txtMessage').val(oldText + selectedValue);

        $(this).prop('disabled', false);

        chooseTemplate.hide();
    } else {
        toastr.error("Please select a template!");

        $(this).prop('disabled', false);
    }
});

// Open save template modal
$('#btnSaveTemplate').click(function (e) {
    e.preventDefault();

    var txtMessage = $('#txtMessage').val();

    if (txtMessage.trim() == '') {

        toastr.error("Please enter message to save as a new template!");

        return;
    }

    saveTemplate.show();
});

// Submit save template event
function saveTemplateSubmit(id) {

    var el = document.getElementById(id);
    el.disabled = true;

    var templateName = document.getElementById("templateName").value;

    if (templateName.trim() == '') {
        toastr.error("Please enter template name!");

        el.disabled = false;

        return false;
    }

    el.disabled = false;

    __doPostBack(id, '');
}

// Submit send SMS event
function sendSubmit(id) {

    var el = document.getElementById("BtnSubmit");
    el.disabled = true;

    var txtSender = document.getElementById("txtSender").value;
    var txtNumber = document.getElementById("txtNumber").value;
    var e = document.getElementById("cmbMessageType");
    var cmbMessageType = e.value;
    var txtMessage = document.getElementById("txtMessage").value;

    if (txtSender.length > 18 || txtSender.trim() == '') {

        toastr.error("Sender Name can't be empty and must be less than 18 characters!");

        el.disabled = false;
        return false;
    }

    if (cmbMessageType == '') {

        toastr.error("Please select message type!");

        el.disabled = false;
        return false;
    }

    if (txtNumber.trim() == '') {

        toastr.error("Please enter mobile number!");

        el.disabled = false;
        return false;
    }

    if (txtMessage.trim() == '') {

        toastr.error("Please enter message to send!");

        el.disabled = false;
        return false;
    }

    el.disabled = false;
    __doPostBack(id, '');
}