// Table datatable
$('#pages-table').DataTable({
    dom: "<'d-flex mb-5 justify-content-between align-items-center flex-column flex-md-row'<''f><'mt-3 mt-md-0 mb-3 mb-md-0'>>" +
        "<'row'<'col-sm-12'tr>>" +
        "<'d-flex justify-content-between align-items-center flex-column flex-md-row'<''l><''i><''p>>",
});

// Hide/Show pages
function hideShowPageSubmit(id) {
    var el = document.getElementById(id)
    el.disabled = true;

    var userPage = document.getElementById("userPage");
    var choosePage = document.getElementById("choosePage");
    var action = document.getElementById("action");


    if (userPage.value.trim() == "") {
        toastr.error("Please select users group");
        el.disabled = false;
        return false;
    }

    if (choosePage.value.trim() == "") {
        toastr.error("Please select page");
        el.disabled = false;
        return false;
    }

    if (action.value.trim() == "") {
        toastr.error("Please select action to take");
        el.disabled = false;
        return false;
    }

   

    el.disabled = false;
    __doPostBack(id, '');
}

// Delete page
function confirmDelete(PageID) {
    Swal.fire({
        title: 'Are you sure you want to delete this page?',
        text: "You won't be able to revert this!",
        icon: 'error',
        showCancelButton: true,
        confirmButtonColor: '#d33',
        cancelButtonColor: '#3085d6',
        confirmButtonText: 'Delete'
    }).then((result) => {
        if (result.isConfirmed) {
            __doPostBack('DeletePage', PageID);
        }
    });
}