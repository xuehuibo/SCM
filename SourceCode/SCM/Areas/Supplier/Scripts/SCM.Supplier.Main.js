//Namespace
Namespace.register("SCM.Supplier.Main");
//NavbarSigninView
SCM.Supplier.Main.NavbarSigninView = Backbone.View.extend({
    tagName: "form",
    className: "navbar-form navbar-right",
    attribute: {
        role:"form"
    },
    template: _.template($("#temp_NavbarSigninView").html()),
    render: function () {
        this.$el.html(this.template());
        this.$el.attr("role","form")
        return this.el;
    },
    remove: function () {
        this.remove;
    }
});
//NavbarUserPanelView
SCM.Supplier.Main.NavbarUserPanelView = Backbone.View.extend({
    tagName: "form",
    className: "navbar-form navbar-right",
    template: _.template($("#temp_NavbarUserPanelView").html()),
    render: function () {
        this.$el.html(this.template());
        return this.el;
    },
    remove: function () {
        this.remove;
    }
});
//NavbarView
SCM.Supplier.Main.NavbarView = Backbone.View.extend({
    initialize: function () {
        this.render();
    },
    render: function () {
        console.info(this.$el.find("#infoPanel"));
        this.$el.find("#infoPanel").html(new SCM.Supplier.Main.NavbarSigninView().render());
    }
});

$(function () {
    console.info($("#temp_NavbarSigninView").html());
    $(".hasToolTip").tooltip();
    var navbarView = new SCM.Supplier.Main.NavbarView({
        el: "#navbar"
    });
})