define(['/Retailer/UserGroup/LoadJs/UserGroupModel', 'jquery', 'backbone'], function (UserGroupModel) {
    var UserGroupCollection = Backbone.Collection.extend({
        model: UserGroupModel,
        url:"/api/Retailer/UserGroupApi"
    });
    return UserGroupCollection;
});