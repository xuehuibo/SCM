define(['jquery','backbone'], function ($,Backbone) {
    var signinView = Backbone.View.extend({
        events: {
            "click .btn": function () {
                console.info("登录");
            }
        },
    });
    return signinView;
});