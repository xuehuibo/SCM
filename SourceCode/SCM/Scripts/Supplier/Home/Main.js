﻿//Namespace
Namespace.register("SCM.Supplier.Main");
//NavbarUserPanelView
SCM.Supplier.Main.NavbaSupplierPanelView = Backbone.View.extend({
    tagName: "ul",
    className: "nav navbar-nav navbar-right",
    initialize:function(supplier) {
        this.model = supplier;
    },
    template: _.template($("#temp_NavbarSupplierPanelView").html()),
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
SCM.Supplier.Main.NavbarView = Backbone.View.extend({
    initialize: function () {
        this.render();
    },
    render: function () {
        this.$el.find("#infoPanel").html(new SCM.Supplier.Main.NavbaSupplierPanelView().render());
    }
});

SCM.Supplier.Main.MainPanel = Backbone.View.extend({
   loadPage: function(url) {
       
   } 
});
$(function () {
    $(".hasToolTip").tooltip();
    var navbarView = new SCM.Supplier.Main.NavbarView({
        el: "#navbar"
    });
    console.info(document.cookie);
})