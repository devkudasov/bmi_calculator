import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/bottom_button.dart';
import 'package:bmi_calculator/widgets/card_container.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Results',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: CardContainer(
              color: kActiveContainerColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Normal',
                    style: kResultTextStyle,
                  ),
                  Text(
                    '20',
                    style: kBmiTextStyle,
                  ),
                  Text(
                    'Your BMI results is quite low',
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            label: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
