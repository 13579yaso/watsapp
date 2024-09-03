import 'package:flutter/material.dart';
class CustomStateFulTextField extends StatefulWidget {
  CustomStateFulTextField({Key? key, required this.label, this.controller, this.keyboard, this.define}) : super(key: key);
  final String label;
  final TextEditingController? controller;
  final TextInputType? keyboard;
  final String? Function(String?)? define;

  @override
  State<CustomStateFulTextField> createState() => _CustomStateFulTextFieldState();
}

class _CustomStateFulTextFieldState extends State<CustomStateFulTextField> {
  Color PurpilColor =Color(0xff0f6750);

  bool secure=true;

  bool isenable =false;

  bool show=false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8,right: 8),
      child: TextFormField(
       validator:widget.define,
        onTap: (){
          setState((){
            isenable=!isenable;
          });
        },
        cursorColor: PurpilColor,
        controller:widget.controller,
        obscureText: secure,
        keyboardType:widget.keyboard,
        decoration: InputDecoration(
          prefixIcon: Icon(
              Icons.lock_outline_sharp,
            color:isenable?PurpilColor:Colors.grey,
          ),
          suffixIcon: InkWell(
            onTap: (){
              setState((){
                secure=!secure;
                show=!show;
              });
            },
            child:
            Icon(
                secure
                    ?
                Icons.visibility_off_outlined
                    :
                Icons.visibility,
              color:show?PurpilColor:Colors.grey,
            ),
          ),
          labelText:widget.label,
          labelStyle: TextStyle(
            color: Colors.grey,
          ),
          floatingLabelStyle: TextStyle(
              color: PurpilColor,

          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              width: 2,
              color: Colors.grey,

            ),

          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              width: 2,
              color: Colors.grey,

            ),

          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
                width: 2,
                color: PurpilColor

            ),

          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
                width: 2,
                color: PurpilColor

            ),

          ),

        ),
      ),
    );
  }
}
