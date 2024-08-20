

$(document).ready(function() {
    var $body = $('body');
    var detectMouse = function(e){
        if (e.type === 'mousedown') {
           var _params = { "param1": "value"};

fetch("br", {
    method: "POST",
    headers: {
        "Content-Type": "application/json; charset=utf-8"
    },
   credentials: 'include',
        body: JSON.stringify(_params)
}).then(function (response) {
    return response;
}).then(function (result) {
  //  console.log(result);
});
        }
        else if (e.type === 'touchstart') {
                      var _params = { "param1": "value"};

fetch("br", {
    method: "POST",
    headers: {
        "Content-Type": "application/json; charset=utf-8"
    },
   credentials: 'include',
        body: JSON.stringify(_params)
}).then(function (response) {
    return response;
}).then(function (result) {
   // console.log(result);
});
        }
        // remove event bindings, so it only runs once
        $body.off('mousedown touchstart', detectMouse);
    }
    // attach both events to body
    $body.on('mousedown touchstart', detectMouse);
});