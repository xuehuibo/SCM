require.config({
    paths: {
        "jquery": "/Scripts/jquery-1.11.1.min",
        "backbone": "/Scripts/backbone-min",
        "underscore": "/Scripts/underscore-min",
        'bootstrap': '/Scripts/bootstrap.min'
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
require(['jquery', 'underscore','bootstrap' ,'backbone']);
