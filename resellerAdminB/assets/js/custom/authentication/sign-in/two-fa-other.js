document.addEventListener("paste", function(e) {
    if (e.target.type === "text") {
        var data = e.clipboardData.getData('Text');
        data = data.split('');
        [].forEach.call(document.querySelectorAll("input[type=text]"), (node, index) => {
            node.value = data[index];
        });
    }
});

$('body').on('keyup', 'input.form-control', function() {
    var key = event.keyCode || event.charCode;
    var inputs = $('input.form-control');
    if (($(this).val().length === this.size) && key != 32) {
        inputs.eq(inputs.index(this) + 1).focus();
    }
    if (key == 8 || key == 46) {
        var indexNum = inputs.index(this);
        if (indexNum != 0) {
            inputs.eq(inputs.index(this) - 1).val('').focus();
        }
    }

});

$(function() {
$("#resend").on("click",function(e) {
e.preventDefault(); // cancel the link itself



document.getElementById("resend_frm").submit()
var preview = document.getElementById("proloadme");
preview.setAttribute("indicator", "on");

$('#kt_sing_in_two_steps_form').html('');
$('#proloadme').html('Please wait...');
$('#div_resend').html('');

});
});