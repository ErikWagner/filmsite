// JavaScript Document
var pegd = {
    //function that gets called when user clicks on Menu Item
    switchMovie: function(selectedMovie) {
        pegd.switchMultiView(selectedMovie);
        //pegd.showMenu();
    },

    //save all loaded Movies in an Array
    loadedIDs: new Array('13'),

    //change visible view within Multiview
    switchMultiView: function(viewIndex) {
        //if view already exists, simply switch to it, otherwise load it
        if ((t=pegd.loadedIDs.indexOf(viewIndex))>-1) {
            tactile.page.getComponent("mvMovieDetails").showView(t);
        }
        
        // instantiate ContentLoader
        var loader = new tactile.ContentLoader();
        
        // Usually monitor errors
        loader.onerror.subscribe(function (e) {
            console.dir(e);
        });
        
        // loader callback method
        loader.onsuccess.subscribe(function (e) {
            try {
                //load our View
                var content = e.loader.getComponent("myMovieDetails_v_" + viewIndex);
                //append the view to the multiview
                tactile.page.getComponent("mvMovieDetails").append(content);
                //and register the ID within the Array
                pegd.loadedIDs.push(viewIndex); 
                //swipe to the last item
                tactile.page.getComponent("mvMovieDetails").showLast();
            } catch (exp) {
                console.dir(exp);
            }
            tactile.foundation.ImageScaler.run();
        });

        loader.load({
            url : "/loadMovie.do?id=" + viewIndex
        });  
    },
    
    init: function() {
        //remember 
        var ankers = document.getElementsByTagName("A");
        for (var i=0; i<ankers.length; i++) {
            ankers[i].removeAttribute("href");
        }
        tactile.foundation.ImageScaler.run();
    }
};

tactile.page.onready(pegd.init);





