(function( root, $, factory ) {

    joms.popup || (joms.popup = {});
    joms.popup.photo || (joms.popup.photo = {});
    joms.popup.photo.upload = factory( root, $ );

    define([ 'utils/loadlib', 'utils/popup' ], function() {
        return joms.popup.photo.upload;
    });

})( window, joms.jQuery, function( window, $ ) {

var popup, elem, uploader, uploaderButton, uploaderPreview, albumid, groupid, files, newalbumid;

function render( _popup, _albumid, _groupid ) {
    var data;

    if ( elem ) elem.off();
    popup = _popup;
    albumid = _albumid || false;
    groupid = _groupid || false;

    data = [];
    data.push( albumid || '' );
    data.push( groupid || '' );

    joms.ajax({
        func: 'photos,ajaxUploadPhoto',
        data: data,
        callback: function( json ) {
            popup.items[0] = {
                type: 'inline',
                src: buildHtml( json )
            };

            popup.updateItemHTML();

            elem = popup.contentContainer;
            uploaderPreview = elem.find('.joms-gallery');

            files = [];

            elem.on( 'click', '.joms-js--btn-add', upload );
            elem.on( 'click', '.joms-js--btn-view', viewAlbum );

            // Init uploader upon render.
            uploadInit();
        }
    });
}

function upload() {
    uploadInit(function() {
        uploaderButton.click();
    });
}

function uploadInit( callback ) {
    if ( typeof callback !== 'function' ) {
        callback = function() {};
    }

    if ( uploader ) {
        callback();
        return;
    }

    joms.util.loadLib( 'plupload', function () {
        var container, button;

        container = $('<div id="joms-js--photoupload-uploader" aria-hidden="true" style="width:1px; height:1px; overflow:hidden">').appendTo( document.body );
        button    = $('<button id="joms-js--photoupload-uploader-button">').appendTo( container );
        uploader  = new window.plupload.Uploader({
            url: 'index.php?option=com_community&view=photos&task=multiUpload',
            filters: [{ title: 'Image files', extensions: 'jpg,jpeg,png,gif' }],
            container: 'joms-js--photoupload-uploader',
            browse_button: 'joms-js--photoupload-uploader-button',
            runtimes: 'html5,html4'
        });

        uploader.bind( 'FilesAdded', uploadAdded );
        uploader.bind( 'Error', uploadError );
        uploader.bind( 'UploadProgress', uploadProgress );
        uploader.bind( 'FileUploaded', uploadUploaded );
        uploader.bind( 'uploadComplete', uploadComplete );
        uploader.init();

        uploaderButton = container.find('input[type=file]');
        callback();
    });
}

function uploadAdded( up, files ) {
    var html = '',
        i;

    for ( i = 0; i < files.length; i++ ) {
        html += '<li class="joms-gallery__item joms-file--' + files[i].id + '">';
        html += '<div class="joms-gallery__thumbnail"><img src="' + joms.ASSETS_URL + 'photo_thumb.png"></div>';
        html += '<div class="joms-gallery__body">';
        html += '<a class="joms-gallery__title">' + files[i].name + '</a> <span>(' + Math.round( files[i].size / 1024 ) + ' KB)</span>';
        html += '<div class="joms-progressbar"><div class="joms-progressbar__progress" style="width:0%"></div></div>';
        html += '</div>';
        html += '</li>';
    }

    uploaderPreview.append( html );

    elem.find('.joms-js--btn-add').css({ visibility: 'visible' });
    elem.find('.joms-js--btn-view').hide();

    setTimeout(function() {
        uploadStartProxy();
    }, 1000);
}

function uploadStartProxy() {
    var album = elem.find('[name=album-name]');

    if ( !album.is(':visible') ) {
        albumid = elem.find('[name=album-id]').val();
        uploadStart();
        return;
    }

    if ( newalbumid ) {
        albumid = newalbumid;
        uploadStart();
        return;
    }

    joms.ajax({
        func: 'photos,ajaxCreateAlbum',
        data: [ album.val(), groupid || '' ],
        callback: function( json ) {
            if ( json.albumid ) {
                albumid = newalbumid = json.albumid;
                uploadStart();
            }
        }
    });
}

function uploadStart() {
    elem.find('.joms-js--btn-add').css({ visibility: 'hidden' });
    elem.find('.joms-js--btn-view').hide();
    uploader.settings.url = 'index.php?option=com_community&view=photos&task=multiUpload&albumid=' + albumid;
    uploader.refresh();
    uploader.start();
}

function uploadError() {
}

function uploadProgress( up, file ) {
    var percent, bar;
    percent = Math.min( 100, Math.floor( file.loaded / file.size * 100 ) );
    bar = elem.find( '.joms-file--' + file.id );
    bar = bar.find( '.joms-progressbar__progress' );
    bar.stop().animate({ width: percent + '%' });
}

function uploadUploaded( up, file, resp ) {
    var json = {},
        item;

    try {
        json = JSON.parse( resp.response );
    } catch (e) {}

    if ( json.error ) {
        uploader.stop();
        if ( json.canContinue ) {
            elem.find('.joms-js--btn-add').css({ visibility: 'visible' });
        } else {
            elem.find('.joms-js--btn-add').css({ visibility: 'hidden' });
        }

        item = elem.find( '.joms-file--' + file.id );
        if ( item.prevAll().length ) {
            elem.find('.joms-js--btn-view').show();
        }
        item.nextAll().andSelf().remove();
        window.alert( json.msg );
        return;
    }

    if ( json.info ) {
        files.push({ photoId: json.photoId });
        item = elem.find( '.joms-file--' + file.id );
        item = item.find('img');
        item.attr( 'src', json.info );
        elem.find('.joms-js--btn-add').html( elem.find('.joms-js--btn-add').data('lang-more') );
        elem.find('.joms-js--btn-view').show();
    }
}

function uploadComplete() {
    elem.find('.joms-js--btn-add').css({ visibility: 'visible' });
    elem.find('.joms-js--btn-view').show();

    joms.ajax({
        func: 'photos,ajaxUpdateCounter',
        data: [ albumid, JSON.stringify({ files: files }) ],
        callback: function() {}
    });
}

function viewAlbum() {
    joms.ajax({
        func: 'photos,ajaxGetAlbumURL',
        data: [ albumid, groupid ],
        callback: function( json ) {
            if ( json.url ) {
                window.location = json.url;
            }
        }
    });
}

function buildHtml( json ) {
    json || (json = {});

    return [
        '<div class="joms-popup joms-popup--whiteblock joms-popup--photoupload">',
        '<div class="joms-popup__title"><button class="mfp-close" type="button" title="Close (Esc)">×</button>', json.title, '</div>',
        json.html,
        '</div>'
    ].join('');
}

// Exports.
return function( albumid, groupid ) {
    joms.util.popup.prepare(function( mfp ) {
        render( mfp, albumid, groupid );
    });
};

});
