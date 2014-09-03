define(['jquery','backbone'],function($, backbone) {
    var tokenModel = backbone.Model.extend({
        defaults: {
            "SignId": null,
            "Password": null,
            "TokenValue":null
        },
        urlRoot: "/api/Retailer/Token",
        idAttribute:"SignId"
    });
    return tokenModel;
})