define(['jquery', 'backbone'], function() {
    var UserGroupModel = Backbone.Model.extend({
        defaults: {
            'Id': null,
            'GroupCode': null,
            'GroupName': null,
            'GroupType': null,
            'Status': 0,
            'Remark': null
        },
        urlRoot: '/api/Retailer/UserGroupApi'
    });
    return UserGroupModel;
});