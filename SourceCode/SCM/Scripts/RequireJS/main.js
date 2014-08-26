require.config({
    paths: {
        "jquery": "/Scripts/jquery/jquery-1.11.1.min",
        "backbone": "/Scripts/Backbone/backbone-min",
        "underscore": "/Scripts/Underscore/underscore-min",
        'bootstrap': '/Scripts/Bootstrap/bootstrap.min'
    },
    shim: {
        'underscore': {
            exports:'_'
        },
        'backbone': {
            deps: ['underscore', 'jquery'],
            exports:'Backbone'
        },
        'bootstrap': {
            deps:['jquery','css!/Content/css/bootstrap.min.css']
        }
    }
});
require(['jquery', 'underscore','bootstrap' ,'backbone'],
    function($, _, b,Backbone) {
});
