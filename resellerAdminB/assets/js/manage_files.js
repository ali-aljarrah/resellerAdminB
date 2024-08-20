// Delete file event
$('.delete-file').click(function (e) {
    Swal.fire({
        title: 'Are you sure this file?',
        text: "You won't be able to revert this!",
        icon: 'error',
        showCancelButton: true,
        confirmButtonColor: '#d33',
        cancelButtonColor: '#3085d6',
        confirmButtonText: 'Delete'
    }).then((result) => {
        if (result.isConfirmed) {
            Swal.fire(
                'Deleted!',
                'Your file has been deleted.',
                'success'
            )
        }
    })
});
// Checking the file if it's valid after uploading
$("#attach1").change(function () {
    var fileExtension = ['txt', 'csv', 'xls', 'xlsx'];
    if ($.inArray($(this).val().split('.').pop().toLowerCase(), fileExtension) == -1) {
        toastr.error("File format invalid");
        $("#attach1").val("");
    }
});
// Upload event button
function uploadFile(id) {
    var el = document.getElementById(id);
    el.disabled = true;

    var uploaded_file = document.getElementById("attach1");
    var filePath = uploaded_file.value;

    var fileExtension = ['txt', 'csv', 'xls', 'xlsx'];

    var fileExt = filePath.split('.').pop().toLowerCase();

    if (fileExtension.indexOf(fileExt) === -1) {
        toastr.error("File format invalid");
        uploaded_file.value = "";
        el.disabled = false;
        return false;
    }

    el.disabled = false;
    __doPostBack(id, '');

}