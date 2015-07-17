/**
 * Toggle and set locale selection for downloads
 */
var LanguageSelection = Class.extend({
	/**
	 * Configuration
	 */
	config: {},

	/**
	 * CSS selectors
	 */
	activeLocaleQuery: '',
	changeLocaleQuery: '',
	containerQuery: '',
	downloadLinksQuery: '',
	regionLinksQuery: '',
	regionContainerQuery: '',
	localeLinksQuery: '',
	closeButtonsQuery: '',

	/**
	 * jQuery objects
	 */
	changeLocale: null,
	regionLinks: null,
	localeLinks: null,
	closeButtons: null,

	/**
	 * Initializes the LanguageSelection class
	 * 
	 * @param config	Configuration
	 */
	init: function(config) {
		config = typeof(config === 'undefined') ? {} : config;
		this.config = $.extend({
			activeLocaleQuery: '.active-language',
			changeLocaleQuery: '.change-language',
			containerQuery: '.region-selection',
			downloadLinksQuery: 'a.link',
			regionLinksQuery: '.regions a',
			regionContainerQuery: '.available-languages',
			localeLinksQuery: '.locale',
			closeButtonsQuery: '.close'
		}, config);

		this.setup();
	},
	
	/**
	 * Setup the LanguageSelection class
	 */
	setup: function() {
		var config = this.config;
		this.changeLocale = $(config.changeLocaleQuery);
		this.regionLinks = $(config.regionLinksQuery);
		this.localeLinks = $(config.localeLinksQuery);
		this.closeButtons = $(config.closeButtonsQuery);

		this.activeLocaleQuery = config.activeLocaleQuery;
		this.changeLocaleQuery = config.changeLocaleQuery;
		this.containerQuery = config.containerQuery;
		this.downloadLinksQuery = config.downloadLinksQuery;
		this.regionLinksQuery = config.regionLinksQuery;
		this.regionContainerQuery = config.regionContainerQuery;
		this.localeLinksQuery = config.localeLinksQuery;

		this.registerEvents();
	},

	/**
	 * Bind the events
	 */
	registerEvents: function() {
		this.changeLocale.on('click',
			$.proxy(this.openLocales, this) // open locale selection
		);
		this.regionLinks.on('click',
			$.proxy(this.chooseRegion, this) // change game region in locale selection
		);
		this.localeLinks.on('click',
			$.proxy(this.chooseLocale, this) // change locale
		);
		this.closeButtons.on('click',
			$.proxy(this.closeLocales, this) // close locale selection
		);
	},

	/**
	 * Returns an object with information relevant to the element that provided it.
	 * Doesn't remove magic numbers but at least manages them in one place.
	 * 
	 * @param  {[string]} relation	The game, type, locale (optional), and region (optional) separated by dashes
	 */
	getInfo: function(relation) {
		relation = relation.split('-');
		return {
			game: relation[0],
			type: relation[1],
			locale: relation[2] || '',
			region: relation[3] || ''
		};
	},

	/**
	 * Toggles download links' functionality and styling
	 * 
	 * @param links	jQuery-extended collection of links to update
	 * @param allow	Indicates if links should be active
	 */
	toggleDownloads: function(links, allow) {
		if (allow) {
			links.off('click', this.disableClick); // remove link disabling
			links.removeClass('disabled-download'); // remove inactive styling
		} else {
			links.on('click', this.disableClick); // disable link to client
			links.addClass('disabled-download'); // style as inactive
		}
	},

	/**
	 * Returns false to disable download. Setup as a separate function so it can
	 * specifically be unbound without having to re-bind other on-click handlers
	 * 
	 * @return	false
	 */
	disableClick: function() {
		return false;
	},

	/**
	 * Opens locale selection
	 *
	 * @param evt	Click event
	 */
	openLocales: function(evt) {
		var element = evt.target,
			row = $('#' + evt.target.rel),
			options = row.find(this.containerQuery),
			links = row.find(this.downloadLinksQuery);

		options.removeClass('hidden'); // Display locale options
		$(element).addClass('hidden'); // Hide locale change link
		this.toggleDownloads(links, false); // Disable downloads
	},

	/**
	 * Closes locale selection
	 * 
	 * @param evt	Click event
	 */
	closeLocales: function(evt) {
		var element = evt.target,
			info = this.getInfo(element.rel),
			row = $('#' + info.game + '-' + info.type),
			options = row.find(this.containerQuery),
			changeLink = row.find(this.changeLocaleQuery),
			links = row.find(this.downloadLinksQuery);

		options.addClass('hidden'); // Hide all locale options
		changeLink.removeClass('hidden'); // Display locale change link
		this.toggleDownloads(links, true); // Re-enable downloads
	},

	/**
	 * Changes game region for locale choices
	 * 
	 * @param evt	Click event
	 */
	chooseRegion: function(evt) {
		var element = evt.target,
			info = this.getInfo(element.rel),
			row = $('#' + info.game + '-' + info.type),
			regions = row.find(this.regionLinksQuery),
			regionLocales = row.find(this.regionContainerQuery),
			activeRegion = regionLocales.filter('.' + info.region),
			activeLocale = $(activeRegion.find('a')[0]);

		regions.removeClass('active'); // Remove active styling from regions
		$(element).addClass('active'); // Style selected region as active
		regionLocales.addClass('hidden'); // Hide all region locale groups
		activeRegion.removeClass('hidden'); // Display only active region locale group
		activeLocale.click(); // Select first locale in newly active group
	},

	/**
	 * Set chosen locale for client download
	 * 
	 * @param evt	Click event
	 */
	chooseLocale: function(evt) {
		var element = evt.target,
			info = this.getInfo(element.rel),
			row = $('#' + info.game + '-' + info.type),
			locales = row.find(this.localeLinksQuery),
			links = row.find(this.downloadLinksQuery),
			activeLinks = links.filter('.' + info.region + '.' + info.locale),
			localeDisplay = row.find(this.activeLocaleQuery);

		locales.removeClass('active'); // Remove active styling from locales
		$(element).addClass('active'); // Style selected locale as active
		links.addClass('hidden'); // Hide all downloads
		activeLinks.removeClass('hidden'); // Display only new locale's downloads
		localeDisplay.text($(element).text()); // Update text to reflect new locale
	}
});