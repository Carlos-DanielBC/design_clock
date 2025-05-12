import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

export 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// Extension method to get the [AppLocalizations]
/// instance from a [BuildContext]
extension AppLocalizationsX on BuildContext {
  /// Returns the [AppLocalizations] instance
  AppLocalizations get l10n => AppLocalizations.of(this);
}
