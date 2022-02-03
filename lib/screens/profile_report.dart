import 'package:flutter/material.dart';
import 'package:test_code/components/alert_box.dart';
import 'package:test_code/components/button.dart';
import 'package:test_code/components/app_texts.dart';
import 'package:test_code/constants.dart';
import 'package:group_button/group_button.dart';
import 'package:get/get.dart';

class ProfileReport extends StatefulWidget {
  @override
  State<ProfileReport> createState() => _ProfileReportState();
}

class _ProfileReportState extends State<ProfileReport> {
  int? selectedReason;

  @override
  Widget build(context) => Scaffold(
    backgroundColor: Constants.bgColor,
    appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent
    ),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AppTexts.title('Report profile'),
          const SizedBox(height: 10.0,),
          AppTexts.paragraph("Trouble in paradise? We have you covered. Provide us with a brief description of the issue and we'll resolve it shortly."),
          const SizedBox(height: 20.0,),

          GroupButton(
            buttons: const [ 'Reason1', 'Reason2', 'Reason3', 'Reason4', 'Reason5', 'Other' ],
            isRadio: false,
            controller: GroupButtonController(),
            selectedShadow: const [],
            unselectedShadow: const [],
            unselectedColor: Colors.transparent,
            selectedColor: Constants.buttonColor,
            unselectedBorderColor: Colors.white.withOpacity(.1),
            selectedBorderColor: Constants.buttonColor,
            unselectedTextStyle: const TextStyle(
              fontSize: 21.0,
              color: Colors.white,
            ),
            selectedTextStyle: const TextStyle(
              fontSize: 21.0,
              color: Constants.bgColor,
            ),
            borderRadius: BorderRadius.circular(30),
            onSelected: (i, selected) {
              selectedReason = i;
            },
            onDisablePressed: (i) {},
          ),

          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              maxLines: 4,
              decoration: InputDecoration(
                // hintText: "Enter your text here",
                hintStyle: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Constants.borderColor),
                ),  
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Constants.borderColor),
                ),
              ),
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white
              ),
            ),
          ),

          AppTexts.paragraph("Provide any additional details (optional)"),
        ],
      ),
    ),
    
    persistentFooterButtons: [
      Button(
        text: 'Holas',
        onTouch: (){

          if(selectedReason == null){
            AlertBox.launch(context, 'You must select a reason to continue');
          } else {
            Get.toNamed('/end');
          }
        }
      ),
    ],
  );
}
