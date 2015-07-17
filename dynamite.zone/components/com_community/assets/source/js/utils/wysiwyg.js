(function( root, $, factory ) {

    joms.util || (joms.util = {});
    joms.util.wysiwyg = factory( root, $ );

    define([ 'utils/loadlib' ], function() {
        return joms.util.wysiwyg;
    });

})( window, joms.jQuery, function( window, $ ) {

function start() {
    var editor = $('textarea').filter('[data-wysiwyg=trumbowyg]');

    if ( !editor.length ) {
        return;
    }

    joms.util.loadLib( 'trumbowyg', function() {
        trumbowygTranslate();

        editor.each(function() {
            var btns, instance;

            btns = $( this ).data( 'btns' );
            btns = btns || 'viewHTML,|,bold,italic,underline,|,unorderedList,orderedList,|,link,insertImage';
            btns = btns.split(',');

            instance = $( this ).trumbowyg({
                btns: btns,
                fullscreenable: false,
                mobile: false,
                tablet: false
            }).data('trumbowyg');

            // Override modal button render.
            instance.buildModalBtn = trumbowygBuildModalBtn;

            // Override modal input.
            instance._openModalInsert = instance.openModalInsert;
            instance.openModalInsert = function( title, fields, cmd ) {
                var modBox = instance._openModalInsert( title, fields, cmd );

                modBox.find('label').each(function() {
                    var label = $( this ),
                        input = label.find('input'),
                        name = input.attr('name'),
                        html;

                    if ([ 'url', 'title', 'text', 'target', 'alt' ].indexOf( name ) >= 0 ) {
                        html  = '<div class="joms-form__group">';
                        html += '<span style="width:90px">' + label.find('.trumbowyg-input-infos').text() + '</span>';
                        html += '<input type="text" value="' + ( input.val() || '' ) + '" name="' + name + '" class="joms-input">';
                        html += '</div>';
                        label.replaceWith( $(html) );
                    }
                });

                return modBox;
            };
        });
    });
}

function trumbowygBuildModalBtn( name, modal ) {
    return $('<button/>', {
        'class': 'joms-button--full-small joms-button--' + ( name === 'submit' ? 'primary' : 'neutral' ),
        'type': name,
        'text': this.lang[name] || name
    }).appendTo( modal.find('form') );
}

function trumbowygTranslate() {
    $.extend( jQuery.trumbowyg.langs.en, window.joms_lang.wysiwyg || {});
}

// Exports.
return {
    start: start
};

});
