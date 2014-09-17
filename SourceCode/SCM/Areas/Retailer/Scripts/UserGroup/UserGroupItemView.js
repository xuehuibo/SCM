define(['text!/Retailer/UserGroup/LoadTpl/UserGroupItemTpl', 'jquery', 'backbone'],
    function (tpl) {
    var UserGroupItemView = Backbone.View.extend({
        tagName: 'tr',
        template: _.template(tpl),
        iniatialize: function(model) {
            this.model = model;
            this.listenTo(this.model, 'change', this.render);
            this.listenTo(this.model, 'destroy', this.move);
        },
        render: function () {
            this.$el.html(this.template(this.model.toJSON()));
            return this.el;
        }
    });
    return UserGroupItemView;
});