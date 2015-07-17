/**
 * Age gate for mature downloads.
 *
 * @copyright   2011, Blizzard Entertainment, Inc
 * @class       AgeGate
 * @requires    Core
 */
var AgeGate = Class.extend({

    /**
     * jQuery objects for specific elements.
     */
    downloadWrapper: null,
    ageGateWrapper: null,
    ageGateSubmit: null,

    infoMessage: null,
    warningMessage: null,
    dateSelect: null,
    yearSelect: null,
    monthSelect: null,
    daySelect: null,

    onBeforeInit: function() {},
    onSuccess: function() {},
    onFailure: function() {},

    /**
     * Default selectors for the elements. Can be override by options argument on init.
     */
    options: {
        downloadWrapper: '#download-options',
        ageGateWrapper: '#age-gate',
        ageGateSubmit: '#age-gate #age-submit',

        infoMessage: '#age-gate-info',
        warningMessage: '#age-gate-warning',
        dateSelect: '#age-gate-select',
        yearSelect: '#dob-year',
        monthSelect: '#dob-month',
        daySelect: '#dob-day',

        onBeforeInit: function() {},
        onSuccess: function() {},
        onFailure: function() {}
    },

    /**
     *  Let’s do this.
     */
    init: function(ageGateId, legalAge, options) {
        $.extend(true, this.options, options);

        this.ageGateId = ageGateId;
        this.legalAge = legalAge;

        this.downloadWrapper = this.options.downloadWrapper ? $(this.options.downloadWrapper) : null;
        this.ageGateWrapper = $(this.options.ageGateWrapper);
        this.ageGateSubmit = $(this.options.ageGateSubmit);

        this.infoMessage = $(this.options.infoMessage);
        this.warningMessage = $(this.options.warningMessage);
        this.dateSelect = $(this.options.dateSelect);
        this.yearSelect = $(this.options.yearSelect);
        this.monthSelect = $(this.options.monthSelect);
        this.daySelect = $(this.options.daySelect);

        this.submitEnabled = false;

        this.options.onBeforeInit();

        this.hideDownloads();
        this._validateAge();

        var currentCookieStatus = Cookie.read('ag.' + this.ageGateId);

        if (currentCookieStatus == 0) {
            this.showWarning();
        } else if (currentCookieStatus == 1) {
            this.showDownloads();
        }

        this.yearSelect.bind('change',
            $.proxy(this._validateAge, this)
        )

        this.monthSelect.bind('change',
            $.proxy(this._validateAge, this)
        )

        this.daySelect.bind('change',
            $.proxy(this._validateAge, this)
        )

        $(this.ageGateSubmit).bind('click',
            $.proxy(this._submitAge, this)
        );

        return this;

    },

    /**
     * Validate age based on event data.
     *
     * @param	e The event data.
     */
    _validateAge: function(e) {
        var year = $('#dob-year option:selected').val(),
            month = $('#dob-month option:selected').val(),
            day = $('#dob-day option:selected').val(),
            result = year !== '' && month !== '' && day !== '';
        result ? this.enableSubmit() : this.disableSubmit();
    },

    /**
     * Submit age based on event data.
     *
     * @param	e The event data.
     */
    _submitAge: function(e) {
        if(!this.submitEnabled) {
            return false;
        }
        var year = parseInt($('#dob-year option:selected').val(), 10),
            month = parseInt($('#dob-month option:selected').val(), 10),
            day = parseInt($('#dob-day option:selected').val(), 10),
            result = this.isLegalAge(year, month, day);
        result ? this.showDownloads() : this.showWarning();
        e.currentTarget.blur();
        e.preventDefault();
        return false;
    },

    /**
     * Show the age gate failure warning.
     */
    showWarning: function() {
        this.hideDownloads();
        this.blockUser();
        this.infoMessage.hide();
        this.warningMessage.show();
        this.dateSelect.hide();
    },

    /**
     * Show the download options.
     */
    showDownloads: function() {
        if(this.downloadWrapper) {
            this.downloadWrapper.show();
        }
        this.ageGateWrapper.hide();
        this.enableUser();
        this.options.onSuccess();
    },

    /**
     * Hide the download options.
     */
    hideDownloads: function() {
        if(this.downloadWrapper) {
            this.downloadWrapper.hide();
        }
        this.ageGateWrapper.show();
    },

    /**
     * Prevent the user from retrying the age gate for two hours.
     */
    blockUser: function() {
        Cookie.create('ag.' + this.ageGateId, 0, {
            expires: 2,
            path: '/account'
        });
        this.options.onFailure();
    },

    /**
     * If user pass the validation, won't validate again until browser session ends.
     */
    enableUser: function() {
        Cookie.create('ag.' + this.ageGateId, 1, {
            path: '/account'
        });
    },

    /**
     * Test to see if date occurred at least seventeen years ago.
     *
     * @param year yyyy
     * @param month MM
     * @param day dd
     */
    isLegalAge: function(year, month, day) {
        if (typeof year === 'number' && typeof month === 'number' && typeof day === 'number') {
            var date = new Date(year + this.legalAge, month - 1, day - 1);
            var today = new Date();
            today = new Date(today.getFullYear(), today.getMonth(), today.getDate());
            return today > date;
        }
        return false;
    },

    /**
     * Enable the submit button.
     */
    enableSubmit: function() {
        this.ageGateSubmit.removeClass('disabled').removeAttr('disabled');
        this.submitEnabled = true;
    } ,

    /**
     * Disable the submit button.
     */
    disableSubmit: function() {
        this.ageGateSubmit.addClass('disabled').attr('disabled','disabled');
        this.submitEnabled = false;
    }

});
