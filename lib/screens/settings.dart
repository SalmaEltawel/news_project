import 'package:flutter/material.dart';
import 'package:news/screens/language_bottom_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:news/shared/network/provider/my_provider.dart';
import 'package:provider/provider.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  static const String routeName = "setting";

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          image:
              DecorationImage(image: AssetImage("assets/images/pattern.png"))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          centerTitle: true,
          shape: const OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30)),
              borderSide: BorderSide(color: Colors.transparent)),
          backgroundColor: Colors.green,
          title: Text(AppLocalizations.of(context)!.settings,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  color: Colors.white)),
        ),
        body: Column(children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              children: [
                Text(AppLocalizations.of(context)!.language,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            width: 350,
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.green),
                borderRadius: BorderRadius.all(Radius.zero),
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        child: LanguageBottomSheet(),
                      );
                    },
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(provider.language=="en"?AppLocalizations.of(context)!.english:AppLocalizations.of(context)!.arabic,
                        style: TextStyle(color: Colors.green)),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.green,
                    )
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
