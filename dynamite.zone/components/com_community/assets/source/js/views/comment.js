(function( root, $, factory ) {

    joms.view || (joms.view = {});
    joms.view.comment = factory( root, $ );

    define([ 'utils/video', 'functions/tagging' ], function() {
        return joms.view.comment;
    });

})( window, joms.jQuery, function( window, $ ) {

var container, uploader, uploaderButton, uploaderAttachment;

function initialize() {
    uninitialize();
    container = $( document.body );
    container.on( 'keydown.joms-comment', '.joms-comment__reply textarea', keydown );
    container.on( 'focus.joms-comment', '.joms-comment__reply textarea', focused );
    container.on( 'focus.joms-comment', '.joms-js--pm-message textarea', focused );
    container.on( 'click.joms-comment', '.joms-comment__reply .joms-js--btn-send', onSend );
    container.on( 'click.joms-comment', '.joms-js--inbox-reply .joms-js--btn-send', onSend );
    container.on( 'click.joms-comment', '.joms-comment__more', showAll );

    addAttachmentInit();
    initInputbox();
    initVideoPlayers();
}

function uninitialize() {
    if ( container ) {
        container.off( 'keydown.joms-comment', '.joms-comment__reply textarea' );
        container.off( 'focus.joms-comment', '.joms-comment__reply textarea' );
        container.off( 'focus.joms-comment', '.joms-js--pm-message textarea' );
        container.off( 'click.joms-comment', '.joms-comment__reply .joms-js--btn-send' );
        container.off( 'click.joms-comment', '.joms-js--inbox-reply .joms-js--btn-send' );
        container.off( 'click.joms-comment', '.joms-comment__more' );
    }
}

function initInputbox() {
    joms.fn.tagging.initInputbox();
}

function initVideoPlayers() {
    var initialized = '.joms-js--initialized',
        cssVideos = '.joms-js--video',
        videos = $('.joms-comment__body,.joms-js--inbox').find( cssVideos ).not( initialized ).addClass( initialized.substr(1) );

    if ( !videos.length ) {
        return;
    }

    joms.loadCSS( joms.ASSETS_URL + 'vendors/mediaelement/mediaelementplayer.min.css' );
    videos.on( 'click.joms-video', cssVideos + '-play', function() {
        var $el = $( this ).closest( cssVideos );
        joms.util.video.play( $el, $el.data() );
    });

    if ( joms.ios ) {
        setTimeout(function() {
            videos.find( cssVideos + '-play' ).click();
        }, 2000 );
    }
}

function keydown( e ) {
    var key = e.keyCode || e.charCode,
        textarea;

    if ( key !== 13 || e.shiftKey ) {
        return;
    }

    textarea = $( e.target );
    if ( textarea.data('noentersend') ) {
        return;
    }

    setTimeout(function() { send( e ); }, 100 );
    return false;
}

function focused( e ) {
    var textarea = $( e.target ),
        wrapper = textarea.closest('.joms-textarea__wrapper'),
        attachment = wrapper.find('.joms-textarea__attachment');

    if ( attachment.length ) {
        uploaderAttachment = attachment;
    }
}

function onSend( e ) {
    var el = $( e.currentTarget ),
        textarea = el.closest('.joms-comment__reply,.joms-js--inbox-reply').find('textarea');

    send({ currentTarget: textarea[0] });
}

function send( e ) {
    var el = $( e.currentTarget ),
        text = ( el.val() || ''),
        isEdit = +el.data('edit'),
        id, func, attachment;

    // Use tag value if available.
    if ( el[0].joms_hidden ) {
        text = el[0].joms_hidden.val() || text;
    }

    // Don't send empty message and no image.
    if ( text.replace( /^\s+|\s+$/g, '' ) === '' ) {
        attachment = el.siblings('.joms-textarea__attachment');
        if ( !attachment.length || !attachment.is(':visible') ) {
            return;
        }
    }

    id = +el.data('id');
    func = el.data('func') || '';

    if ( isEdit ) {
        editSave( el, id, func, text, function() {
            initVideoPlayers();
            reset( el );
        });
    } else {
        addSave( el, id, func, text, function() {
            el.val('');
            initVideoPlayers();
            reset( el );
        });
    }
}

function reset( el ) {
    el.css( 'height', '' );
    el.closest('.joms-comment__reply').find('.joms-textarea__attachment').hide();
    el = el[0];
    if ( el.joms_reset ) {
        el.joms_reset();
    }
    if ( el.joms_beautifier && el.joms_beautifier !== 'none' ) {
        el.joms_beautifier.html('');
    }
    if ( el.joms_hidden ) {
        el.joms_hidden.val( el.value );
    }
}

function addSave( el, id, func, text, callback ) {
    var isWall = func,
        isPhotoAlbum = false,
        isPhoto = false,
        isVideo = false,
        isDiscussion = false,
        isInbox = false,
        photo = false,
        data, ct, funcLower, $loading;

    if ( el.data('saving') ) {
        return;
    }

    el.data( 'saving', 1 );

    if ( isWall ) {
        funcLower = func.toLowerCase();
        if ( funcLower.indexOf('album') > -1 ) {
            isPhotoAlbum = true;
        } else if ( funcLower.indexOf('photo') > -1 ) {
            isPhoto = true;
        } else if ( funcLower.indexOf('video') > -1 ) {
            isVideo = true;
        } else if ( funcLower.indexOf('discussion') > -1 ) {
            isDiscussion = true;
        } else if ( funcLower.indexOf('inbox') > -1 ) {
            isInbox = true;
        }
    }

    ct = uploaderAttachment;
    if ( ct && ct.is(':visible') ) {
        photo = ct.find('.joms-textarea__attachment--thumbnail').find('img');
        photo = photo.data('photo_id');
    }

    photo = photo || '';

    if ( !isWall ) {
        func = 'system,ajaxStreamAddComment';
        data = [ id, text, photo ];
    } else if ( isVideo || isDiscussion ) {
        data = [ text, id, photo ];
    } else if ( isInbox ) {
        data = [ id, text, photo ];
    } else {
        data = [ text, id, '', photo ];
    }

    $loading = $( el ).siblings('.joms-textarea__loading');
    $loading.show();

    joms.ajax({
        func: func,
        data: data,
        callback: function( json ) {
            var $ct, counter;

            $loading.hide();

            if ( json.success ) {

                if ( isInbox ) {
                    _onInboxAdded( json.html );
                    el.removeData('saving');
                    return;
                }

                $ct = $( '.joms-js--comments-' + id );
                $ct.append( json.html || '' );

                counter = $('.joms-comment__counter--' + id);
                if ( counter.length ) {
                    counter.html( +counter.eq(0).text() + 1 );
                }
            }

            if ( typeof callback === 'function' ) {
                callback( json );
            }

            el.removeData('saving');

            if ( json.error ) {
                window.alert( json.error );
            }

        }
    });
}

function edit( commentId, elem, type ) {
    var isWall = type === 'wall',
        comment, reply, textarea;

    elem = $( elem );
    comment = elem.closest('.joms-comment__item');
    textarea = comment.children('.joms-comment__reply').find('textarea');

    if ( isWall ) {
        reply = comment.closest('.joms-comment').siblings('.joms-comment__reply');
    } else {
        reply = comment.closest('.joms-stream').children('.joms-comment__reply');
    }

    reply.hide();
    comment.children('.joms-comment__body,.joms-comment__actions').hide();
    comment.children('.joms-comment__reply').show();
    textarea.jomsTagging();
    textarea.off( 'reset.joms-tagging' );
    textarea.on( 'reset.joms-tagging', function() {
        comment.children('.joms-comment__reply').hide();
        comment.children('.joms-comment__body,.joms-comment__actions').show();
        reply.show();
    });
    textarea[0].focus();
}

function editSave( el, commentId, func, text, callback ) {
    var isWall = func,
        attachment, photo, data, $loading;

    if ( el.data('saving') ) {
        return;
    }

    el.data( 'saving', 1 );

    attachment = el.siblings('.joms-textarea__attachment');

    if ( attachment.is(':visible') ) {
        photo = attachment.find('.joms-textarea__attachment--thumbnail').find('img');
        photo = photo.data('photo_id') || '0';
    } else if ( attachment.data('no_thumb') ) {
        photo = '0';
    } else {
        photo = '-1';
    }

    if ( isWall ) {
        data = [ commentId, text, func, photo ];
        func = 'system,ajaxUpdateWall';
    } else {
        func = 'system,ajaxeditComment';
        data = [ commentId, text, photo ];
    }

    $loading = $( el ).siblings('.joms-textarea__loading');
    $loading.show();

    joms.ajax({
        func: func,
        data: data,
        callback: function( json ) {
            var $ct, $reply;

            $loading.hide();

            if ( json.success ) {
                $ct    = $( '.joms-js--comment-' + commentId );
                $reply = $( '.joms-js--newcomment-' + $ct.data('parent') );

                $ct.find('.joms-js--comment-editor').hide().find('textarea').val( json.originalComment || '' );
                $ct.find('.joms-js--comment-content').html( json.comment || '' );
                $ct.find('.joms-js--comment-body').show();
                $ct.find('.joms-js--comment-actions').show();
                $reply.show();

                // Update photo if available.
                if ( +photo > 0 ) {
                    // content = comment.children('.joms-comment__body');
                    // attachment = $('<div class=joms_comment__attachment><img src="' + photoSrc + '"></div>');
                    // content.children('.joms-comment__attachment').remove();
                    // content.append( attachment );
                }
            }

            if ( typeof callback === 'function' ) {
                callback( json );
            }

            try {
                el.blur();
            } catch(e) {}

            el.removeData('saving');
        }
    });
}

// function editCancel( textarea ) {


// }

function like( commentId ) {
    joms.ajax({
        func: 'system,ajaxStreamAddLike',
        data: [ commentId, 'comment' ],
        callback: function( json ) {
            var $ct, btn, info;

            if ( json.success ) {
                $ct = $( '.joms-js--comment-' + commentId );

                if ( $ct.length ) {
                    btn = $ct.find('.joms-comment__actions').find('.joms-button--liked');
                    btn.attr( 'onclick', 'joms.api.commentUnlike(\'' + commentId + '\');' );
                    btn.addClass('liked');
                    btn.find('span').html( btn.data('lang-unlike') );
                    btn.find('use').attr( 'xlink:href', window.location + '#joms-icon-thumbs-down' );

                    info = $ct.find('.joms-comment__actions [data-action=showlike]');
                    if ( !json.html ) {
                        info.remove();
                    } else if ( info.length ) {
                        info.replaceWith( json.html );
                    } else {
                        btn.after( json.html );
                    }
                }
            }
        }
    });
}

function unlike( commentId ) {
    joms.ajax({
        func: 'system,ajaxStreamUnlike',
        data: [ commentId, 'comment' ],
        callback: function( json ) {
            var $ct, btn, info;

            if ( json.success ) {
                $ct = $( '.joms-js--comment-' + commentId );

                if ( $ct.length ) {
                    btn = $ct.find('.joms-comment__actions').find('.joms-button--liked');
                    btn.attr( 'onclick', 'joms.api.commentLike(\'' + commentId + '\');' );
                    btn.removeClass('liked');
                    btn.find('span').html( btn.data('lang-like') );
                    btn.find('use').attr( 'xlink:href', window.location + '#joms-icon-thumbs-up' );

                    info = $ct.find('.joms-comment__actions [data-action=showlike]');
                    if ( !json.html ) {
                        info.remove();
                    } else if ( info.length ) {
                        info.replaceWith( json.html );
                    } else {
                        btn.after( json.html );
                    }
                }

            }
        }
    });
}

function showAll( e ) {
    var el = $( e.currentTarget ),
        comment = el.closest('.joms-js--comments'),
        type = comment.data('type') || '',
        id = +comment.data('id');

    if ( !id ) {
        return;
    }

    joms.ajax({
        func: 'system,ajaxStreamShowComments',
        data: [ id, type ],
        callback: function( json ) {
            var html;

            if ( json.success ) {
                html = $( $.trim( json.html ) );

                if ( type ) {
                    html = html.filter('.joms-js--comments').children();
                }

                $( '.joms-js--comments-' + id ).html( html );
            }
        }
    });
}

function remove( commentId, type ) {
    var isInbox = type === 'inbox',
        isWall = type === 'wall',
        func,
        data;

    if ( isInbox ) {
        func = 'inbox,ajaxRemoveMessage';
        data = [ commentId ];
    } else if ( isWall ) {
        func = window.joms_wall_remove_func;
        data = [ commentId ];
    } else {
        func = 'system,ajaxStreamRemoveComment';
        data = [ commentId ];
    }

    joms.ajax({
        func: func,
        data: data,
        callback: function( json ) {
            var $ct;

            if ( !json.success ) {
                window.alert( json.error || 'Undefined error.' );
                return;
            }

            if ( isInbox ) {
                _onInboxRemoved( commentId );
                return;
            }

            $ct = $( '.joms-js--comment-' + commentId );

            if ( $ct.length ) {
                $ct.fadeOut( 500, function () {
                    $ct.remove();

                    var counter = $( '.joms-comment__counter--' + json.parent_id );
                    if ( counter.length ) {
                        counter.html( +counter.eq(0).text() - 1 );
                    }

                });
            }

        }
    });
}

function removeTag( id, type ) {
    joms.ajax({
        func: 'activities,ajaxRemoveUserTag',
        data: [ id, type || 'comment' ],
        callback: function( json ) {
            var $comment, $cbutton, $ccontent, $ceditor, $textarea;

            if ( json.success ) {
                if ( type === 'inbox' ) {
                    $comment  = $( '.joms-js--inbox-item-' + id );
                    $cbutton  = $comment.find('.joms-button--remove-tag');
                    $ccontent = $comment.find('.joms-js--inbox-content');

                    $ccontent.html( json.data );
                    $cbutton.remove();
                } else {
                    $comment  = $( '.joms-js--comment-' + id );
                    $cbutton  = $comment.find('.joms-button--remove-tag');
                    $ccontent = $comment.find('.joms-js--comment-content');
                    $ceditor  = $comment.find('.joms-js--comment-editor');
                    $textarea = $ceditor.find('textarea');

                    $ccontent.html( json.data );
                    $textarea.val( json.unparsed );
                    $cbutton.remove();
                }
            }
        }
    });
}

function removePreview( id, type ) {
    var isInbox = type === 'inbox',
        isWall = type === 'wall',
        func, data;

    if ( isInbox ) {
        func = 'inbox,ajaxRemovePreview';
        data = [ id ];
    } else if ( isWall ) {
        func = 'system,ajaxRemoveWallPreview';
        data = [ id ];
    } else {
        func = 'system,ajaxRemoveCommentPreview';
        data = [ id ];
    }

    joms.ajax({
        func: func,
        data: data,
        callback: function( json ) {
            if ( !json.success ) {
                window.alert( json.error || 'Undefined error.' );
                return;
            }

            if ( isInbox ) {
                _onInboxUpdated( id, json.html );
                return;
            }

            $( '.joms-js--comment-' + id )
                .find('.joms-js--comment-preview').remove();
        }
    });
}

function removeThumbnail( id, type ) {
    var isInbox = type === 'inbox',
        isWall = type === 'wall',
        func, data;

    if ( isInbox ) {
        func = 'inbox,ajaxRemoveThumbnail';
        data = [ id ];
    } else if ( isWall ) {
        // @todo
    } else {
        // @todo
    }

    joms.ajax({
        func: func,
        data: data,
        callback: function( json ) {
            if ( !json.success ) {
                window.alert( json.error || 'Undefined error.' );
                return;
            }

            if ( isInbox ) {
                _onInboxUpdated( id, json.html );
                return;
            }

            if ( isWall ) {
                // @todo
                return;
            }

            // @todo stream
            return;
        }
    });
}

function addAttachment( elem ) {
    elem = $( elem );
    elem = elem.siblings('.joms-textarea__wrapper');

    if ( !elem.length ) {
        return;
    }

    addAttachmentInit( elem, function() {
        uploaderButton.click();
    });
}

function addAttachmentInit( elem, callback ) {
    if ( typeof callback !== 'function' ) {
        callback = function() {};
    }

    if ( uploader ) {
        uploaderAttachment = elem && elem.find('.joms-textarea__attachment');
        callback();
        return;
    }

    joms.util.loadLib( 'plupload', function () {
        setTimeout(function() {
            var container, button;

            container = $('<div id="joms-js--attachment-uploader" aria-hidden="true" style="width:1px; height:1px; overflow:hidden">').appendTo( document.body );
            button    = $('<button id="joms-js--attachment-uploader-button">').appendTo( container );
            uploader  = new window.plupload.Uploader({
                url: 'index.php?option=com_community&view=photos&task=ajaxPreviewComment',
                filters: [{ title: 'Image files', extensions: 'jpg,jpeg,png,gif' }],
                container: 'joms-js--attachment-uploader',
                browse_button: 'joms-js--attachment-uploader-button',
                runtimes: 'html5,html4'
            });

            uploader.bind( 'FilesAdded', addAttachmentAdded );
            uploader.bind( 'Error', addAttachmentError );
            uploader.bind( 'FileUploaded', addAttachmentUploaded );
            uploader.init();

            uploaderAttachment = elem && elem.find('.joms-textarea__attachment');
            uploaderButton = container.find('input[type=file]');
            callback();
        });
    });
}

function addAttachmentAdded( up ) {
    window.setTimeout(function() {
        var ct      = uploaderAttachment,
            loading = ct.find('.joms-textarea__attachment--loading'),
            thumb   = ct.find('.joms-textarea__attachment--thumbnail'),
            button  = ct.find('button');

        up.start();
        up.refresh();

        thumb.find('img').replaceWith('<img>');
        thumb.hide();
        button.hide();
        loading.show();
        ct.show();
    }, 0);
}

function addAttachmentError() {
    var ct = uploaderAttachment;
    ct.hide();
}

function addAttachmentUploaded( up, file, info ) {
    var json, ct, loading, thumb, button, img;

    try {
        json = JSON.parse( info.response );
    } catch ( e ) {}

    json || (json = {});

    if ( json.error ) {
        window.alert( json.error );
    }

    ct = uploaderAttachment;
    if ( !json.thumb_url || !json.photo_id ) {
        ct.hide();
        return;
    }

    loading = ct.find('.joms-textarea__attachment--loading'),
    thumb   = ct.find('.joms-textarea__attachment--thumbnail'),
    img     = thumb.find('img');
    button  = ct.find('button');

    img.attr( 'src', json.thumb_url );
    img.data( 'photo_id', json.photo_id );

    loading.hide();
    thumb.show();
    button.show();
    ct.show();
}

function removeAttachment( elem ) {
    elem = $( elem );
    elem = elem.closest('.joms-textarea__attachment');

    if ( elem ) {
        elem.find('.joms-textarea__attachment--thumbnail img').replaceWith('<img src="#" alt="attachment">');
        elem.hide();
    }
}

function cancel( id ) {
    var $ct, $reply, data;

    if ( id && id.nodeType ) {
        $ct = $( id ).closest('.joms-js--comment');
    } else {
        $ct = $( '.joms-js--comment-' + id );
    }

    if ( !$ct.length ) {
        return;
    }

    data = $ct.data();
    $reply = $( '.joms-js--newcomment-' + data.parent );

    $ct.find('.joms-js--comment-editor').hide();
    $ct.find('.joms-js--comment-body').show();
    $ct.find('.joms-js--comment-actions').show();
    $reply.show();
}

function toggleText( id ) {
    var $text = $( '.joms-js--comment-text-' + id ),
        $full = $( '.joms-js--comment-textfull-' + id ),
        $btn  = $( '.joms-js--comment-texttoggle-' + id );

    if ( $full.is(':visible') ) {
        $full.hide();
        $text.show();
        $btn.html( $btn.data('lang-more') );
    } else {
        $text.hide();
        $full.show();
        $btn.html( $btn.data('lang-less') );
    }
}

function _onInboxAdded( html ) {
    var ct, reply, textarea, tagging, attachment, loc, use, href;

    ct = $('.joms-js--inbox');
    reply = $('.joms-js--inbox-reply');
    textarea = reply.find('textarea');
    attachment = reply.find('.joms-textarea__attachment');

    html = $( $.trim( html ) );
    loc  = window.location.href.split('#')[0];
    use  = html.find('use');
    href = use.attr('xlink:href').split('#')[1];
    href = loc + '#' + href;

    use.attr( 'xlink:href', href );
    ct.append( html );

    if ( textarea.length ) {
        tagging = textarea.data('joms-tagging');
        tagging ? tagging.clear() : textarea.val('');
    }

    if ( attachment.length ) {
        attachment.hide();
    }

    initVideoPlayers();
}

function _onInboxUpdated( id, html ) {
    var item, loc, use, href;

    if ( !html ) {
        _onInboxRemoved( id );
        return;
    }

    item = $('.joms-js--inbox-item-' + id);

    html = $( $.trim( html ) );
    loc  = window.location.href.split('#')[0];
    use  = html.find('use');
    href = use.attr('xlink:href').split('#')[1];
    href = loc + '#' + href;

    use.attr( 'xlink:href', href );
    item.replaceWith( html );

    initVideoPlayers();
}

function _onInboxRemoved( id ) {
    var item;
    item = $('.joms-js--inbox-item-' + id);
    item.fadeOut( 500, function () {
        item.remove();
    });
}

// Exports.
return {
    start: initialize,
    stop: uninitialize,
    like: like,
    unlike: unlike,
    edit: edit,

    cancel: cancel,

    remove: remove,
    removeTag: removeTag,
    removePreview: removePreview,
    removeThumbnail: removeThumbnail,

    addAttachment: addAttachment,
    removeAttachment: removeAttachment,

    toggleText: toggleText,

    initInputbox: initInputbox,

};

});