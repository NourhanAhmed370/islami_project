import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled2/providers/settings_providers.dart';
class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({Key? key}) : super(key: key);

  ShardePref(theme)async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
              onTap: () {
                provider.enableLightMode();
                provider.swaptheme();
              },
              child: provider.isDarkEnabled()
                  ? getUnSelectedWidget(
                  AppLocalizations.of(context)!.light, context)
                  : getSelectedWidget(
                  AppLocalizations.of(context)!.light, context)),
          SizedBox(
            height: 12,
          ),
          InkWell(
              onTap: () {
                provider.enableDarkMode();
              },
              child: provider.isDarkEnabled()
                  ? getSelectedWidget(
                  AppLocalizations.of(context)!.dark, context)
                  : getUnSelectedWidget(
                  AppLocalizations.of(context)!.dark, context))
        ],
      ),
    );
  }

  Widget getSelectedWidget(String title, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyText2
              ?.copyWith(color: Theme.of(context).accentColor),
        ),
        Icon(
          Icons.check,
          color: Theme.of(context).accentColor,
        )
      ],
    );
  }

  Widget getUnSelectedWidget(String title, BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.bodyText2,
    );
  }
}