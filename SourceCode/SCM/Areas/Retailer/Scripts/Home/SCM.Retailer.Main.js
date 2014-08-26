//Namespace
Namespace.register("SCM.Retailer.Main");
//NavbarUserPanelView
SCM.Retailer.Main.NavbaSupplierPanelView = Backbone.View.extend({
    tagName: "ul",
    className: "nav navbar-nav navbar-right",
    initialize: function (supplier) {
        this.model = supplier;
    },
    template: _.template($("#temp_NavbarRetailerPanelView").html()),
    render: function () {
        this.$el.html(this.template());
        this.$el.find(".hasToolTip").tooltip();
        return this.el;
    },
    remove: function () {
        this.remove;
    }
});
//NavbarView
SCM.Retailer.Main.NavbarView = Backbone.View.extend({
    initialize: function () {
        this.render();
    },
    render: function () {
        this.$el.find("#infoPanel").html(new SCM.Retailer.Main.NavbaSupplierPanelView().render());
    }
});

SCM.Retailer.Main.MainPanel = Backbone.View.extend({
    loadPage: function (url) {

    }
});
$(function () {
    //App.init();
    var navbarView = new SCM.Retailer.Main.NavbarView({
        el: "#navbar"
    });
})