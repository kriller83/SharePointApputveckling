'use strict';

$(document).ready(function() {
    //$("OKButton").click(function() {
    //    alert($("#fnamn"));
    //});
    //$("CancelButton").click(function() {
    //    alert($("#fnamn"));
    //});

    //function alertUser() {
    //    var fnamn = $("#fnamn").val();
    //    var enamn = $("#enamn").val();
    //    var epost = $("#epost").val();
    //    var adress = $("adress").val();
    //    var postnr = $("#postnr").val();
    //    var ort = $("#ort").val();
    //    var tel = $("#tel").val();
    //    var start = $("#start");

    //}
    var okButton = document.getElementById('OKButton');
    var cancelButton = document.getElementById('CancelButton');

    okButton.addEventListener('click', function() {

        var firstname = document.getElementById('fnamn').value;
        var lastname = document.getElementById('enamn').value;
        var email = document.getElementById('epost').value;
        var adress = document.getElementById('adress').value;
        var postnumber = document.getElementById('postnr').value;
        var state = document.getElementById('ort').value;
        var phonenumber = document.getElementById('tel').value;
        var startdate = document.getElementById('start').value;

        alert("Förnamn:" + '\t\t' + firstname + '\n' +
            "Efternamn:" +  '\t' + lastname  + '\n' +
            "E-post:" + '\t\t' + email + '\n' +
            "Adress:" + '\t\t' + adress + '\n' +
            "Postnummer:" + '\t' + postnumber + '\n' +
            "Ort:" + '\t\t\t' + state + '\n' +
            "Telefonnr:" + '\t\t' + phonenumber + '\n' +
            "Startdatum:" + '\t' + startdate);
    });
    cancelButton.addEventListener('click', function() {
            document.getElementById("myForm").reset();
     

    });

});

