﻿define(['jquery','backbone','/Areas/Retailer/Scripts/Sign/TokenModel.js'], function ($,backbone,TokenModel) {
    var signinView = backbone.View.extend({
        events: {
            "click .btn": "signIn"
        },
        signIn: function() {
            var token = new TokenModel({
                SignId: $("#signId").val(),
                Password: $("#pwd").val()
            });
            token.save(null,{
                success: function (model, rst) {
                    if (rst.Status == 1) {
                        console.info("ok");
                        location.href = "/Retailer";
                    }
                },
                error: function(model,rst) {
                    alert("登录失败");
                }
            });
        }
    });
    return signinView;
});