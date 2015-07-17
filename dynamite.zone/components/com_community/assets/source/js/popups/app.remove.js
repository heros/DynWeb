(function( root, $, factory ) {

    joms.popup || (joms.popup = {});
    joms.popup.app || (joms.popup.app = {});
    joms.popup.app.remove = factory( root, $ );

    define([ 'utils/popup' ], function() {
        return joms.popup.app.remove;
    });

})( window, joms.jQuery, function( window, $ ) {

var popup, elem, id;

function render( _popup, _id ) {
    if ( elem ) elem.off();
    popup = _popup;
    id = _id;

    joms.ajax({
        func: 'apps,ajaxRemove',
        data: [ id ],
        callback: function( json ) {
            popup.items[0] = {
                type: 'inline',
                src: buildHtml( json )
            };

            popup.updateItemHTML();

            // Remove application from the list.
            $( '#app-' + id ).remove();
        }
    });
}

function buildHtml( json ) {
    json || (json = {});

    return [
        '<div class="joms-popup joms-popup--whiteblock">',
        '<div class="joms-popup__title"><button class="mfp-close" type="button" title="Close (Esc)">×</button>', json.title, '</div>',
        '<div class="joms-popup__content joms-popup__content--single">', ( json.html || '' ), '</div>',
        '</div>'
    ].join('');
}

// Exports.
return function( id ) {
    joms.util.popup.prepare(function( mfp ) {
        render( mfp, id );
    });
};

});
