(function( root, factory ) {

    joms.popup || (joms.popup = {});
    joms.popup.photo || (joms.popup.photo = {});
    joms.popup.photo.zoom = factory( root );

    define([ 'utils/popup' ], function() {
        return joms.popup.photo.zoom;
    });

})( window, function() {

function render( popup, url ) {
    popup.items[0] = {
        type: 'inline',
        src: buildHtml( url )
    };

    popup.updateItemHTML();
}

function buildHtml( url ) {
    url = url || '';
    url = url.replace( 'thumb_', '' );
    return '<div class="joms-popup"><img src="' + url + '" style="min-width:100%;max-width:100%;"></div>';
}

// Exports.
return function( url ) {
    joms.util.popup.prepare(function( mfp ) {
        render( mfp, url );
    });
};

});
