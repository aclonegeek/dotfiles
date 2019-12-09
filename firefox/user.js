/*
 * STARTUP
 */
// Disable default browser check.
user_pref("browser.shell.checkDefaultBrowser", false);
// Disable warning in about:config.
user_pref("general.warnOnAboutConfig", false);

// Disable Activity Stream telemetry.
user_pref("browser.newtabpage.activity-stream.feeds.telemetry", false);
user_pref("browser.newtabpage.activity-stream.telemetry", false);
user_pref("browser.newtabpage.activity-stream.telemetry.ping.endpoint", "");
// Disable Activity Stream snippets.
user_pref("browser.newtabpage.activity-stream.feeds.snippets", false);
user_pref("browser.newtabpage.activity-stream.asrouter.providers.snippets", "");
// Disable Activity Stream Top Stories, Pocket and sponsored stuff.
user_pref("browser.newtabpage.activity-stream.feeds.section.topstories", false);
user_pref("browser.newtabpage.activity-stream.section.highlights.includePocket", false);
user_pref("browser.newtabpage.activity-stream.showSponsored", false);
user_pref("browser.newtabpage.activity-stream.feeds.discoverystreamfeed", false);

/*
 * ANIMATION
 */
user_pref("toolkit.cosmeticAnimations.enabled", false);
user_pref("full-screen-api.transition-duration.enter", "0 0");
user_pref("full-screen-api.transition-duration.leave", "0 0");
user_pref("full-screen-api.warning.timeout", 0);

/*
 * TELEMETRY
 */
// Disable telemetry.
user_pref("toolkit.telemetry.unified", false);
user_pref("toolkit.telemetry.server", "data:,");
user_pref("toolkit.telemetry.archive.enabled", false);
user_pref("toolkit.telemetry.newProfilePing.enabled", false);
user_pref("toolkit.telemetry.shutdownPingSender.enabled", false);
user_pref("toolkit.telemetry.updatePing.enabled", false);
user_pref("toolkit.telemetry.bhrPing.enabled", false);
user_pref("toolkit.telemetry.firstShutdownPing.enabled", false);
user_pref("toolkit.telemetry.hybridContent.enabled", false);

// Disable telemetry coverage.
user_pref("toolkit.telemetry.coverage.opt-out", true);
user_pref("toolkit.coverage.opt-out", true);
user_pref("toolkit.coverage.endpoint.base", "");

// Don't allow technical and interaction data to be sent.
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("datareporting.policy.dataSubmissionEnabled", false);
user_pref("app.shield.optoutstudies.enabled", false);
// Don't allow extension recommendations.
user_pref("browser.discovery.enabled", false);

// Disable crash reports.
user_pref("breakpad.reportURL", "");
user_pref("browser.tabs.crashReporting.sendReport", false);
user_pref("browser.crashReports.unsubmittedCheck.enabled", false);
user_pref("browser.crashReports.unsubmittedCheck.autoSubmit2", false);
user_pref("dom.ipc.plugins.flash.subprocess.crashreporter.enabled", false);
// Disable sending URL of the website where a plugin crashed.
user_pref("dom.ipc.plugins.reportCrashURL", false);

// Disable Shield telemetry system.
user_pref("app.normandy.enabled", false);
user_pref("app.normandy.api_url", "");

/*
 * SCREENSHOTS
 */
user_pref("extensions.screenshots.disabled", true);
user_pref("extensions.screenshots.upload-disabled", true);

/*
 * AUTOFILL
 */
user_pref("browser.formfill.enable", false);
user_pref("extensions.formautofill.addresses.enabled", false);
user_pref("extensions.formautofill.available", "off");
user_pref("extensions.formautofill.creditCards.enabled", false);
user_pref("extensions.formautofill.heuristics.enabled", false);

/*
 * NETWORK
 */
user_pref("network.prefetch-next", false);
user_pref("network.dns.disablePrefetch", true);
user_pref("network.dns.disablePrefetchFromHTTPS", true);
user_pref("network.predictor.enabled", false);
user_pref("network.predictor.enable-prefetch", false);
// Disable hovering over a link opening a connection to a linked server.
user_pref("network.http.speculative-parallel-limit", 0);
// Disable click tracking.
user_pref("browser.send_pings", false);
user_pref("browser.send_pings.require_same_host", true);

// Disable location bar domain guessing.
user_pref("browser.fixup.alternate.enabled", false);
// Disable location bar suggesting preloaded top websites.
user_pref("browser.urlbar.usepreloadedtopurls.enabled", false);
// Disable location bar making speculative connections.
user_pref("browser.urlbar.speculativeConnect.enabled", false);
// Disable suggesting an open page.
user_pref("browser.urlbar.suggest.openpage", false);

// Show the entire URL.
user_pref("browser.urlbar.trimURLs", false);

/*
 * PASSWORDS
 */
// Disable saving passwords.
user_pref("signon.rememberSignons", false);
// Disable auto-fill username and password form fields.
user_pref("signon.autofillForms", false);
// Disable formless login capture for Password Manager.
user_pref("signon.formlessCapture.enabled", false);

/*
 * SESSION
 */
// Disable resuming session from crash.
user_pref("browser.sessionstore.resume_from_crash", false);

/*
 * UI
 */
// Display a warning for broken security.
user_pref("security.ssl.treat_unsafe_negotiation_as_broken", true);
// Display insecure icon and "Not Secur"e text on HTTP sites.
user_pref("security.insecure_connection_icon.enabled", true);
user_pref("security.insecure_connection_text.enabled", true);
user_pref("security.insecure_connection_icon.pbmode.enabled", true);
user_pref("security.insecure_connection_text.pbmode.enabled", true);

// Disable about:addons Recommendations pane.
user_pref("extensions.getAddons.showPane", false);
// Disable recommendations in about:addons' Extensions and Themes panes.
user_pref("extensions.htmlaboutaddons.recommendations.enabled", false);

/*
 * PLUGINS
 */
// Disable Flash plugin.
user_pref("plugin.state.flash", 0);

/*
 * WINDOW
 */
// Prevent websites from disabling new window features.
user_pref("dom.disable_window_open_feature.close", true);
user_pref("dom.disable_window_open_feature.location", true);
user_pref("dom.disable_window_open_feature.menubar", true);
user_pref("dom.disable_window_open_feature.minimizable", true);
user_pref("dom.disable_window_open_feature.personalbar", true);
user_pref("dom.disable_window_open_feature.resizable", true);
user_pref("dom.disable_window_open_feature.status", true);
user_pref("dom.disable_window_open_feature.titlebar", true);
user_pref("dom.disable_window_open_feature.toolbar", true);

// Prevent scripts from moving and resizing open windows.
user_pref("dom.disable_window_move_resize", true);

// Open links targetting new windows in a new tab instead.
user_pref("browser.link.open_newwindow", 3);
user_pref("browser.link.open_newwindow.restriction", 0);

/*
 * WINDOWS (OS)
 */
// Disable Microsoft Famuily Safety cert.
user_pref("security.family_safety.mode", 0);

/*
 * MISC
 */
// Prevent accessibility services from accessing the browser.
user_pref("accessibility.force_disabled", 1);
// Disable sending additional analytics to web servers.
user_pref("beacon.enabled", false);
// Enable Do Not Track HTTP header.
user_pref("privacy.donottrackheader.enabled", true);
// Disable pocket.
user_pref("extensions.pocket.enabled", false);

// Backspace goes to previous page.
user_pref("browser.backspace_action", 0);
user_pref("browser.tabs.insertRelatedAfterCurrent", false);
user_pref("layout.word_select.eat_space_to_next_word", false);

// Disable favicons in shortcuts.
user_pref("browser.shell.shortcutFavicons", false);
// Disable favicons in web notifications.
user_pref("alerts.showFavicons", false);

// Disable Web Compatibility Reporter.
user_pref("extensions.webcompat-reporter.enabled", false);

// Disable picture in picture.
user_pref("media.videocontrols.picture-in-picture.enabled", false);
