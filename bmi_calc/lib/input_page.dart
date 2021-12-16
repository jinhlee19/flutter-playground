import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;
  // Todo # 9-8-1, 11-2
  int height = 180;
  int weight = 74;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        //Todo # 9-5
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  // TODO # 8-1 Remove GestureDetector
                  child: ReusableCard(
                    // TODO # 8-5 SetState
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    cardChild:
                        IconContent(icon: FontAwesomeIcons.mars, label: 'MALE'),
                    colour: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    cardChild: IconContent(
                        icon: FontAwesomeIcons.venus, label: 'FEMALE'),
                    colour: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColor,
              //Todo # 9-1,4 Column 생성, 텍스트 스타일, 7 정렬
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    //Todo # 9-7 정렬
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: <Widget>[
                      //Todo # 9-6, 8 Slider
                      Text(height.toString(), style: kNumberTextStyle),
                      // text widget은 string으로 데이터를 받기 때문에 toString()으로 컨버팅.
                      Text('cm', style: kLabelTextStyle),
                    ],
                  ),
                  SliderTheme(
                    // Todo # 10
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: 1,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      //기본값이 더 작아 보이지 않으므로 키우기
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                    ),
                    child: Slider(
                      // Todo # 9-8-2
                      value: height.toDouble(),
                      min: 50.0,
                      max: 220.0,
                      // activeColor: Colors.white, // overrides Theme ThumbColor
                      onChanged: (double newValue) {
                        setState(() {
                          //Todo # 9-9
                          height = newValue.round();
                        });
                      }, // Slider Widget은 double로 데이터를 받기 때문에 toString()으로 컨버팅.
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              //TODO 11-1
              children: [
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          '74',
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(),
                            SizedBox(width: 10),
                            FloatingActionButton(
                              backgroundColor: Color(0xFF4C4f5E),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              onPressed: null,
                            )
                          ],
                        ),
                      ],
                    ),
                    colour: kActiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4f5E),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: child,
      onPressed: () {},
    );
  }
}
