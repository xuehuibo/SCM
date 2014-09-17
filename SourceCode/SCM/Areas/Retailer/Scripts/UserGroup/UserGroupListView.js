define(['/Retailer/UserGroup/LoadJs/UserGroupItemView',
    'HttpStatusHandle',
    'jquery', 'backbone'], function (UserGroupItemView, HttpStatusHandle) {
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
                success: function (collection, rst) {
                },
                error: function (collection, rst) {
                    var ok = HttpStatusHandle(rst.status,'/Retailer');
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