define(['jquery','backbone'], function ($,backbone) {
    var signinView = backbone.View.extend({
        events: {
            "click .btn": "signIn"
        },
        signIn: function() {
            
        }
    });
    return signinView;
});