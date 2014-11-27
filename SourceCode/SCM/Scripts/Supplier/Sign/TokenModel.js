define(['jquery','backbone'],function($, backbone) {
    var tokenModel = backbone.Model.extend({
        defaults: {
            "SignId": null,
            "Password": null,
            "TokenValue":null
        },
        urlRoot: "/api/Supplier/Token",
        idAttribute:"SignId"
    });
    return tokenModel;
})