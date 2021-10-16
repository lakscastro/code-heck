import 'package:flutter/material.dart';
import 'package:shinoa/theme.dart';

class Display extends StatefulWidget {
  const Display({Key? key}) : super(key: key);

  @override
  _DisplayState createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  static const _kButtonLabelPadding = 12.0;

  Widget _buildMenuButton() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: _kButtonLabelPadding),
          child: Icon(
            Icons.menu,
            color: kAccentLightColor,
          ),
        ),
        const Text(
          'MENU',
          style: TextStyle(
            color: kTextColor,
          ),
        ),
      ],
    );
  }

  Widget _buildBackspaceButton() {
    return Row(
      children: [
        const Text(
          'MENU',
          style: TextStyle(
            color: kTextColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: _kButtonLabelPadding),
          child: Icon(
            Icons.backspace_outlined,
            color: kAccentLightColor,
          ),
        ),
      ],
    );
  }

  Widget _buildTopButtons() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildMenuButton(),
        _buildBackspaceButton(),
      ],
    );
  }

  Widget _buildHistory() {
    return Expanded(
      child: ListView(
        shrinkWrap: true,
        children: const [
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              '88 x 4 + 1900 - 120 / 4',
              style: TextStyle(color: kTextColor),
            ),
          ),
        ],
      ),
    );
  }

  static final _kEqualTextStyle = TextStyle(
    color: kAccentLightColor,
    fontSize: 36,
  );

  static const _kResultTextStyle = TextStyle(
    color: kLightText,
    fontSize: 36,
  );

  Widget _buildResult() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '=',
          style: _kEqualTextStyle,
        ),
        const Text(
          '2.222',
          style: _kResultTextStyle,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildTopButtons(),
            _buildHistory(),
            _buildResult(),
          ],
        ),
      ),
    );
  }
}
