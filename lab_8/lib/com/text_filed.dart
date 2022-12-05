import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Fext_filed extends StatelessWidget {
 Fext_filed({super.key, required this.varname});
  final String varname;
  

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding: EdgeInsets.fromLTRB(16, 12, 0, 12),
                hintText: '$varname',
                hintStyle: TextStyle(
                    color: Color(0xff878484),
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
                filled: true,
                fillColor: Color.fromARGB(255, 126, 171, 166),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
