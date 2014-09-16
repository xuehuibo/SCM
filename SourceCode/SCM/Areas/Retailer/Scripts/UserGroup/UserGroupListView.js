define(['/Areas/Retailer/Scripts/UserGroup/UserGroupItemView.js', 'jquery', 'backbone'], function (UserGroupItemView) {
    var UserGroupListView = Backbone.View.extend({
        initialize: function () {
            this.header = this.$("thead");
            this.body = this.$("tbody");
            this.foot = this.$("tfoot");
            this.listenTo(this.collection, 'add', this.addOne);
            this.listenTo(this.collection, 'reset', this.addAll);
            this.listenTo(this.collection, 'all', this.render);
            this.collection.fetch({
                data: {
                    page:1
                },
                success:function(collection, rst) {
                },
                error:function(collection, rst) {
                    switch (rst.status) {
                    case 400:
                        alert("系统异常");
                        break;
                    case 403:
                        alert("没有权限访问");
                        break;
                    case 404:
                        alert("无数据");
                        break;
                    default:
                        alert("未知错误");
                    }
                }
            });
        },
        addOne: function (model) {
            this.body.append(new UserGroupItemView({ model :model}).render());
        },
        addAll:function() {
            this.collection.each(this.addOne, this);
        },
        render:function() {
        }
    });
    return UserGroupListView;
});