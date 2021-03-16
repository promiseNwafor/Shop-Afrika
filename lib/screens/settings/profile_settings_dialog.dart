import 'package:flutter/material.dart';

class ProfileSettingsDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return SimpleDialog(
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                titlePadding:
                    EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                title: Row(
                  children: <Widget>[
                    Icon(Icons.verified_user_outlined),
                    SizedBox(width: 10),
                    Text(
                      'Profile Settings',
                      // ignore: deprecated_member_use
                      style: Theme.of(context).textTheme.body2,
                    )
                  ],
                ),
                children: <Widget>[
                  Form(
                    child: Column(
                      children: <Widget>[
                        new TextFormField(
                          style: TextStyle(color: Theme.of(context).hintColor),
                          keyboardType: TextInputType.text,
                          decoration: getInputDecoration(
                              context: context,
                              hintText: 'John Doe',
                              labelText: 'Name'),
                          initialValue: '',
                          validator: (input) => input.trim().length < 1
                              ? 'Input valid name'
                              : null,
                        ),
                        FormField<String>(
                          builder: (FormFieldState<String> state) {
                            return DropdownButtonFormField<String>(
                              decoration: getInputDecoration(
                                  context: context,
                                  hintText: 'Female',
                                  labelText: 'Gender'),
                              onChanged: (input) {},
                              items: [
                                new DropdownMenuItem(
                                    value: 'Male', child: Text('Male')),
                                new DropdownMenuItem(
                                    value: 'Female', child: Text('Female')),
                              ],
                            );
                          },
                        ),
                        new TextFormField(
                          style: TextStyle(color: Theme.of(context).hintColor),
                          keyboardType: TextInputType.text,
                          decoration: getInputDecoration(
                              context: context,
                              hintText: 'johndo street Sokoto',
                              labelText: 'Address'),
                          initialValue: '',
                          validator: (input) => input.trim().length < 1
                              ? 'Input valid name'
                              : null,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: <Widget>[
                      MaterialButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Cancel'),
                      ),
                      MaterialButton(
                        onPressed: null,
                        child: Text(
                          'Save',
                          style:
                              TextStyle(color: Theme.of(context).accentColor),
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.end,
                  ),
                  SizedBox(height: 10),
                ],
              );
            });
      },
      child: Text(
        "Edit",
        style: TextStyle(fontSize: 14.0, color: Colors.red),
      ),
    );
  }

  InputDecoration getInputDecoration(
      {BuildContext context, String hintText, String labelText}) {
    return new InputDecoration(
      hintText: hintText,
      labelText: labelText,
      hintStyle: TextStyle(color: Theme.of(context).focusColor),
      enabledBorder: UnderlineInputBorder(
          borderSide:
              BorderSide(color: Theme.of(context).hintColor.withOpacity(0.2))),
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).hintColor)),
      labelStyle: TextStyle(color: Theme.of(context).hintColor),
    );
  }
}
