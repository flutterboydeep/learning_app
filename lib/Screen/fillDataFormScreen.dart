import 'package:flutter/material.dart';

class fillDataFormScreen extends StatefulWidget {
  State<StatefulWidget> createState() => _fillDataFormScreen();
}

class _fillDataFormScreen extends State<fillDataFormScreen> {
  bool eye = true;
  var icon = Icon(Icons.visibility_off);

  var namectrl = TextEditingController();
  var noctrl = TextEditingController();
  var passctrl = TextEditingController();

  final _addFormkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Member Screen"),
      ),
      body: Container(
        child: Form(
          key: _addFormkey,
          child: Padding(
            padding: EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 30),
            child: Container(
              child: ListView(
                children: [
                  TextFormField(
                    controller: namectrl,
                    decoration: InputDecoration(
                      hintText: "Enter your name",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            const BorderSide(width: 2, color: Colors.black),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          width: 1.5,
                          color: Color.fromARGB(255, 111, 111, 111),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: noctrl,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Enter your mobile number min 6 digit",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            const BorderSide(width: 2, color: Colors.black),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          width: 1.5,
                          color: Color.fromARGB(255, 111, 111, 111),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: passctrl,
                    obscureText: eye,
                    decoration: InputDecoration(
                      suffixIcon: eye
                          ? IconButton(
                              onPressed: () {
                                eye = false;
                                setState(() {});
                              },
                              icon: const Icon(Icons.visibility_off),
                            )
                          : IconButton(
                              onPressed: () {
                                eye = true;
                                setState(() {});
                              },
                              icon: const Icon(Icons.visibility)),
                      hintText: "Enter your Password",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            const BorderSide(width: 2, color: Colors.black),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          width: 1.5,
                          color: Color.fromARGB(255, 111, 111, 111),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: () {}, child: const Text("Submit")),
                      ElevatedButton(
                          onPressed: () {}, child: const Text("reset"))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
