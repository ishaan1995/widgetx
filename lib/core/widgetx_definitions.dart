/// Config to enable disable widgetx extensions
/// TODO: yet to be implemented & used.
class WidgetXConfig {
  bool enabled;
  bool defaultMarginEnabled;
  bool defaultPaddingEnabled;
  bool registerWidgetEnabled;

  WidgetXConfig({
    this.enabled = true,
    this.defaultMarginEnabled = true,
    this.defaultPaddingEnabled = true,
    this.registerWidgetEnabled = true,
  });
}
