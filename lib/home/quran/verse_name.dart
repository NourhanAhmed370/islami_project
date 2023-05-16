import 'package:flutter/material.dart';

import '../../sura_details/sura_details.dart';

class VerseNameWidget extends StatelessWidget {
  String title;
  int index;

  VerseNameWidget(this.title, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetailsScreen.routeName,
            arguments: SuraDetailsScreenArgs(title, index));
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}