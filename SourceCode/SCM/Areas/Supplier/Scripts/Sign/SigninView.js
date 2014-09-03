define(['jquery','backbone'],function($,backbone) {
    var signinView = backbone.View.extend({
        events: {
            "click .btn": function() {
                console.info("登录");
            }
        }
    });
    return signinView;
});