var result = [
    {
        msisdn: "60148327590",
        msisdn_type: "MOBILE",
        state: "Valid",
        home_country: "Malaysia",
        network: "Celcom",
        mcc_mnc: "50213",
        ported: "False",
        roaming: "False",
        description: "Absent Subscriber",
        error: "27"
    }
]

$('#hlr_lookup_btn').click(function(e) {
    e.preventDefault();

    $(this).prop('disabled', true);

    var number = $('#number').val();

    if(!/^[+]*[(]{0,1}[0-9]{1,3}[)]{0,1}[-\s\./0-9]*$/g.test(number) || number.trim() == ''){
        toastr.error("Invalid number, Use International Format (e.g. 467XXX XXXXXX)");
        $(this).prop('disabled', false);
        return;
    } else {
        $('.hlr-block .loading').addClass('show');
        setTimeout(() => {
            $('#msisdn').empty();
            $('#msisdn').text(result[0].msisdn);
            $('#msisdn_type').empty();
            $('#msisdn_type').text(result[0].msisdn_type);
            $('#state').empty();
            $('#state').text(result[0].state);
            $('#home_country').empty();
            $('#home_country').text(result[0].home_country);
            $('#network').empty();
            $('#network').text(result[0].network);
            $('#mcc_mnc').empty();
            $('#mcc_mnc').text(result[0].mcc_mnc);
            $('#ported').empty();
            $('#ported').text(result[0].ported);
            $('#roaming').empty();
            $('#roaming').text(result[0].roaming);
            $('#description').empty();
            $('#description').text(result[0].description);
            $('#error').empty();
            $('#error').text(result[0].error);

            $('.hlr-block .loading').removeClass('show');
    
            $(this).prop('disabled', false);
            return;
        }, 5000);
    }
})