(function( root, $, factory ) {

    joms.popup || (joms.popup = {});
    joms.popup.app || (joms.popup.app = {});
    joms.popup.app.about = factory( root, $ );

    define([ 'utils/popup' ], function() {
        return joms.popup.app.about;
    });

})( window, joms.jQuery, function() {

var popup, elem, name;

function render( _popup, _name ) {
    if ( elem ) elem.off();
    popup = _popup;
    name = _name;

    joms.ajax({
        func: 'apps,ajaxShowAbout',
        data: [ name ],
        callback: function( json ) {
            popup.items[0] = {
                type: 'inline',
                src: buildHtml( json )
            };

            popup.updateItemHTML();
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
return function( name ) {
    joms.util.popup.prepare(function( mfp ) {
        render( mfp, name );
    });
};

});
