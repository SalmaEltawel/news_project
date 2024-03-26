import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:news/shared/network/provider/my_provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  LanguageBottomSheet({super.key});

  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.changeLanguage("en");
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.english,
                  style: TextStyle(
                       color:provider.language=="en"? Colors.green:Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w400),
                ),
                provider.language=="en"?  Icon(
                  Icons.done,
                  color: Colors.green,
                  size: 30,
                ):SizedBox(),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              provider.changeLanguage("ar");
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.arabic,
                    style: TextStyle(
                        color: provider.language=="en"? Colors.black:Colors.green,
                        fontSize: 30,
                        fontWeight: FontWeight.w400)),
                provider.language=="en"?  SizedBox():Icon(
                  Icons.done,
                  color: Colors.green,
                  size: 30,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
