import 'dart:ui';

import 'package:container_and_sizedbox/Instagramfront%20ui/instagramui.dart';
import 'package:container_and_sizedbox/firebase/authnetication.dart';
import 'package:container_and_sizedbox/sbi%20debit%20card/colours.dart';
import 'package:container_and_sizedbox/widgets/ImagePicker_Widgets.dart';
import 'package:container_and_sizedbox/widgets/stackandpositioned.dart';
import 'package:container_and_sizedbox/sbi%20debit%20card/text.dart';
import 'package:container_and_sizedbox/widgets/RowAndColoum.dart';
import 'package:container_and_sizedbox/widgets/alertWidget.dart';
import 'package:container_and_sizedbox/widgets/animatedText.dart';
import 'package:container_and_sizedbox/widgets/bottomnavigationbar.dart';
import 'package:image_picker/image_picker.dart';
import 'package:container_and_sizedbox/widgets/bottomsheetwidget.dart';
import 'package:container_and_sizedbox/widgets/buttons.dart';
import 'package:container_and_sizedbox/widgets/container_and_sizedbox.dart';
import 'package:container_and_sizedbox/widgets/dismissible.dart';
import 'package:container_and_sizedbox/widgets/drawer.dart';
import 'package:container_and_sizedbox/widgets/dropdownlist.dart';
import 'package:container_and_sizedbox/widgets/formwidget.dart';
import 'package:container_and_sizedbox/widgets/imagewidgets.dart';
import 'package:container_and_sizedbox/widgets/list_gird.dart';
import 'package:container_and_sizedbox/widgets/snackbarwidget.dart';
import 'package:container_and_sizedbox/widgets/tabBar_Widgets.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'sbi debit card/content.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness:Brightness.dark,
        primaryColor: Appcolors.backgroundcolors

      ),

      home: InstagramUi(),
    );
  }
}
