define(['jquery', 'backbone'], function () {
    var tokenModel = Backbone.Model.extend({
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