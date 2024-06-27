import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String _output = "0";
  String _input = "0";
  String _operation = "";
  double _num1 = 0;
  double _num2 = 0;
  bool _isNewInput = true;

  void _buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == "AC") {
        _output = "0";
        _input = "0";
        _num1 = 0;
        _num2 = 0;
        _operation = "";
        _isNewInput = true;
      } else if (buttonText == "+" || buttonText == "-" || buttonText == "×" || buttonText == "÷") {
        if (_operation.isNotEmpty) {
          _calculate();
        }
        _num1 = double.parse(_input);
        _operation = buttonText;
        _isNewInput = true;
      } else if (buttonText == ".") {
        if (!_input.contains(".")) {
          _input += buttonText;
        }
      } else if (buttonText == "=") {
        _calculate();
        _operation = "";
        _isNewInput = true;
      } else if (buttonText == "+/-") {
        if (_input.startsWith("-")) {
          _input = _input.substring(1);
        } else {
          _input = "-" + _input;
        }
      } else if (buttonText == "%") {
        _input = (double.parse(_input) / 100).toString();
      } else {
        if (_isNewInput) {
          _input = buttonText;
          _isNewInput = false;
        } else {
          _input += buttonText;
        }
      }

      if (_input.length > 1 && _input.startsWith("0") && !_input.startsWith("0.")) {
        _input = _input.substring(1);
      }

      _output = _input;
    });
  }

  void _calculate() {
    _num2 = double.parse(_input);
    switch (_operation) {
      case "+":
        _input = (_num1 + _num2).toString();
        break;
      case "-":
        _input = (_num1 - _num2).toString();
        break;
      case "×":
        _input = (_num1 * _num2).toString();
        break;
      case "÷":
        _input = (_num1 / _num2).toString();
        break;
      default:
        break;
    }
    _num1 = double.parse(_input);
    _isNewInput = true;
  }

  Widget buildButtonRow(List<String> buttons, Color buttonColor, Color textColor) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: buttons
            .map((text) => buildButton(text, buttonColor, textColor))
            .toList(),
      ),
    );
  }

  Widget buildButton(String text, Color buttonColor, Color textColor) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            foregroundColor: textColor,
            padding: const EdgeInsets.all(16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () => _buttonPressed(text),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              alignment: Alignment.bottomRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    _output,
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(16),
              color: Colors.white,
              child: Column(
                children: [
                  buildButtonRow(['AC', '+/-', '%', '÷'], Colors.orange.shade800, Colors.white),
                  buildButtonRow(['7', '8', '9', '×'], Colors.blue.shade800, Colors.white),
                  buildButtonRow(['4', '5', '6', '-'], Colors.blue.shade800, Colors.white),
                  buildButtonRow(['1', '2', '3', '+'], Colors.blue.shade800, Colors.white),
                  buildButtonRow(['0', '.', '=', ''], Colors.blue.shade800, Colors.white),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
