// disable new-tab garbage
user_pref("browser.newtabpage.activity-stream.showSponsoredTopSites", false);
user_pref("browser.newtabpage.activity-stream.feeds.section.topstories", false);
user_pref("browser.newtabpage.activity-stream.showSponsored", false);
user_pref("browser.newtabpage.activity-stream.default.sites", "");

// enable container tabs
user_pref("privacy.userContext.enabled", true);

// disable firefox sync and view
user_pref("identity.fxaccounts.enabled", false);
user_pref("browser.tabs.firefox-view", false);
user_pref("browser.tabs.firefox-view-next", false);
user_pref("browser.tabs.firefox-view-newIcon", false); // needed?
user_pref("browser.firefox-view.feature-tour", "{\"screen\":\"\",\"complete\":true}");

// disable password, credit card, and address management
user_pref("signon.rememberSignons", false);
user_pref("extensions.formautofill.addresses.enabled", false);
user_pref("extensions.formautofill.creditCards.enabled", false);

// do not allow embedded tweets, Instagram, Reddit, and Tiktok posts
user_pref("urlclassifier.trackingSkipURLs", "");
user_pref("urlclassifier.features.socialtracking.skipURLs", "");

// HTTPS-only on all windows
user_pref("dom.security.https_only_mode", true);
user_pref("dom.security.https_only_mode_error_page_user_suggestions", true);

// enforce DNS-over-HTTPS (DoH)
user_pref("network.trr.mode", 2);
user_pref("network.trr.max-fails", 5);

// disable DRM by default
user_pref("media.eme.enabled", false);

// disable telemetry
user_pref("default-browser-agent.enabled", false);
