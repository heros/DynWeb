(function( root, $, factory ) {

    joms.util || (joms.util = {});
    joms.util.hovercard = factory( root, $ );

})( window, joms.jQuery, function( window, $ ) {

var card, timer, cache = {};

function initialize() {
    var imgs;

    // Only enable on desktop browser.
    if ( joms.mobile ) {
        return;
    }

    imgs = $('img[data-author]').not('[data-initialized]');
    imgs.each(function() {
        var img = $( this );
        img.off( 'mouseover.joms-hcard' ).on( 'mouseover.joms-hcard', onMouseOver );
        img.off( 'mouseout.joms-hcard' ).on( 'mouseout.joms-hcard', onMouseOut );
        img.attr( 'data-initialized', 1 );
    });
}

function onMouseOver( e ) {
    var img = $( e.target ),
        id = img.data('author');

    if ( !card ) {
        createCard();
    }

    clearTimeout( timer );

    if ( cache[id] ) {
        updateCard( cache[id], img );
        return;
    }

    joms.ajax({
        func: 'profile,ajaxFetchCard',
        data: [ id ],
        callback: function( json ) {
            if ( json.html ) {
                cache[id] = json.html;
                updateCard( json.html, img );
            }
        }
    });
}

function onMouseOut() {
    timer = setTimeout(function() {
        card && card.hide();
    }, 400 );
}

function createCard() {
    card = $('<div>Loading...</div>');
    card.css({ position: 'absolute' });
    card.appendTo( document.body );

    card.on( 'mouseover.joms-hcard', function() { clearTimeout( timer ); });
    card.on( 'mouseout.joms-hcard', onMouseOut );
}

function updateCard( html, img ) {
    var offset = img.offset(),
        height = img.height();

    card.html( html );
    card.css({ top: offset.top + height + 10, left: offset.left });
    card.show();
}

// Exports.
return {
    initialize: initialize
};

});
