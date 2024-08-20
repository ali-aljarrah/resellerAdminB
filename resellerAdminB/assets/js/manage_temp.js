$('#savetempbtn').click(function(e) {
    e.preventDefault();

    $(this).prop('disabled', true);

    var temp_name = $('#temp_name').val();
    var temp_msg = $('#temp_msg').val();

    if(temp_name.trim() == '') {
        toastr.error("Please enter template name");
        $(this).prop('disabled', false);
        return;
    }

    if(temp_msg.trim() == '') {
        toastr.error("Please enter template message body");
        $(this).prop('disabled', false);
        return;
    }

    toastr.success("Template saved Successfully!");

    $(this).prop('disabled', false);

});

$('.delete-temp').click(function(e) {
    Swal.fire({
        title: 'Are you sure this template?',
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
            'Your template has been deleted.',
            'success'
          )
        }
      })
});