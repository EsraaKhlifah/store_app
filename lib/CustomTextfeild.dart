// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class CustomTextField extends StatelessWidget {
//   CustomTextField({Key? key, this.hinttext}) : super(key: key);
//   String? hinttext;
//
//   @override
//   Widget build(BuildContext context) {
//     return  TextField(
//       decoration:
//
//       InputDecoration(
//         hintText: hinttext,
//           hintStyle: TextStyle(color: Colors.white),
//           enabledBorder: OutlineInputBorder(
//             borderSide: BorderSide(color: Colors.white),
//           ),
//           border:
//               OutlineInputBorder(borderSide: BorderSide(color: Colors.white))),
//     );
//   }
// }
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({this.hintText,this.inputType, this.onChanged, this.obscureText = false});
  Function(String)? onChanged;
  String? hintText;
  TextInputType?  inputType;
  bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText!,
      onChanged: onChanged,
      keyboardType: inputType,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}