import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height / 35),
          Padding(
            padding: const EdgeInsets.only(top: 0.0, left: 30.0, right: 30.0),
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _registerForm(context),
                  SizedBox(height: 30),
                  Container(
                    height: 100.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 45.0,
                            width: 180.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xffe61d1d),
                                width: 2.5,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(2.0)),
                              color: const Color(0xffe61d1d),
                            ),
                            child: FlatButton(
                                child: Text(
                                  'SIGN UP',
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {}),
                          ),
                        ),
                        Text(
                          'By clicking "SIGN UP" you agree to our terms and conditions',
                          style:
                              TextStyle(fontSize: 10, color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _registerForm(BuildContext context) {
    return Form(
      // autovalidateMode: AutovalidateMode.always,
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.green,
                    width: 2.0,
                  ),
                ),
              ),
              child: TextFormField(
                validator: (input) =>
                    input.trim().length < 3 ? 'Input valid name' : null,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "NAME",
                  errorBorder: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey[600], fontSize: 10.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.green,
                    width: 2.0,
                  ),
                ),
              ),
              child: TextFormField(
                validator: (input) => !(input.contains('@')) ||
                        input.trim().length < 5 ||
                        input.isEmpty
                    ? 'Input valid email'
                    : null,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "EMAIL",
                  errorBorder: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey[600], fontSize: 10.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.green,
                    width: 2.0,
                  ),
                ),
              ),
              child: TextFormField(
                validator: (input) => input.contains(' ') || input.isEmpty
                    ? 'Password must not contain space'
                    : input.length < 5
                        ? 'Password too short'
                        : null,
                // obscureText: !_showPassword,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "PASSWORD",
                  errorBorder: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey[600], fontSize: 10.0),
                  // suffixIcon: IconButton(
                  //   onPressed: () {
                  //     // setState(() {
                  //     //   _showPassword = !_showPassword;
                  //     // });
                  //   },
                  //   color: Colors.grey.withOpacity(0.4),
                  // icon: Icon(!_showPassword
                  //     ? Icons.visibility_off
                  //     : Icons.visibility),
                  // ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.green,
                    width: 2.0,
                  ),
                ),
              ),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "CONFIRM PASSWORD",
                  errorBorder: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey[600], fontSize: 10.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.green,
                    width: 2.0,
                  ),
                ),
              ),
              child: TextFormField(
                validator: (input) =>
                    input.isEmpty ? 'Input your address' : null,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "ADDRESS",
                  errorBorder: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey[600], fontSize: 10.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.green,
                    width: 2.0,
                  ),
                ),
              ),
              child: FormField<String>(
                builder: (FormFieldState<String> state) {
                  return DropdownButtonFormField<String>(
                    decoration: _getInputDecoration(
                        context: context,
                        hintText: 'Lagos',
                        labelText: 'State'),
                    onChanged: (input) {},
                    // onSaved: (input) =>
                    //     settingProvider.setGender(input),
                    items: [
                      'Abia',
                      'Adamawa',
                      'Akwa Ibom',
                      'Anambra',
                      'Bauchi',
                      'Bayelsa',
                      'Benue',
                      'Borno',
                      'Cross River',
                      'Delta',
                      'Ebonyi',
                      'Edo',
                      'Enugu',
                      'Gombe',
                      'Imo',
                      'Jigawa',
                      'Kaduna',
                      'Kano',
                      'Kastina',
                      'Kebbi',
                      'Kogi',
                      'Kwara',
                      'Lagos',
                      'Nassarrawa',
                      'Niger',
                      'Ogun',
                      'Ondo',
                      'Oshun',
                      'Oyo',
                      'Plateau',
                      'Rivers',
                      'Sokoto',
                      'Tarraba',
                      'Yobe',
                      'Zamfara',
                      'FCT',
                    ]
                        .map((label) => DropdownMenuItem(
                              child: Text(label),
                              value: label,
                            ))
                        .toList(),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.green,
                    width: 2.0,
                  ),
                ),
              ),
              child: TextFormField(
                validator: (input) =>
                    input.trim().length < 10 ? 'Input valid number' : null,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "PHONE",
                  errorBorder: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey[600], fontSize: 10.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  InputDecoration _getInputDecoration(
      {BuildContext context, String hintText, String labelText}) {
    return new InputDecoration(
      hintText: hintText,
      labelText: labelText,
      // ignore: deprecated_member_use
      hintStyle: Theme.of(context).textTheme.body1.merge(
            TextStyle(color: Theme.of(context).focusColor),
          ),
      enabledBorder: UnderlineInputBorder(
          borderSide:
              BorderSide(color: Theme.of(context).hintColor.withOpacity(0.2))),
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).hintColor)),
      // ignore: deprecated_member_use
      hasFloatingPlaceholder: true,
      // ignore: deprecated_member_use
      labelStyle: Theme.of(context).textTheme.body1.merge(
            TextStyle(color: Theme.of(context).hintColor),
          ),
    );
  }
}
