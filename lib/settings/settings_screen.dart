import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/providers/settings_providers.dart';
import 'package:untitled2/settings/language_bottom_sheet.dart';
import 'package:untitled2/settings/theme_bottom_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class SettingsTab extends StatelessWidget {
  const SettingsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet(context);
            },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: Theme.of(context).accentColor, width: 1)),
                child: Text(
                  provider.isDarkEnabled()
                      ? AppLocalizations.of(context)!.dark
                      : AppLocalizations.of(context)!.light,
                  style: Theme.of(context).textTheme.bodyText2,
                )),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet(context);
            },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: Theme.of(context).accentColor, width: 1)),
                child: Text(
                  provider.languageCode == 'en' ? 'English' : 'العربيه',
                  style: Theme.of(context).textTheme.bodyText2,
                )),
          ),
        ],
      ),
    );
  }

  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context, builder: (buildContext) => ThemeBottomSheet());
  }

  void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context, builder: (buildContext) => LanguageBottomSheet());
  }
}
