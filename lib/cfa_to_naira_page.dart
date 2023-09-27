import 'package:flutter/material.dart';

class CfaToNairaa extends StatefulWidget {
  const CfaToNairaa({super.key});
  @override
  State<CfaToNairaa> createState() => _CfaToNairaState();
}

class _CfaToNairaState extends State<CfaToNairaa> {
  double result = 0;
   final TextEditingController textEditingController = TextEditingController();
    void convert() {
      result = double.parse(textEditingController.text )* 0.65;
      setState(() {});
    }

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        borderSide: BorderSide(
          width: 2.5,
          color: Color.fromARGB(200, 250, 200, 150),
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignOutside,
        ));

    
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text("Naira to Cefa converter"),
        backgroundColor: const Color.fromARGB(200, 55, 70, 70),
      ),
      backgroundColor: const Color.fromARGB(200, 55, 70, 70),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Cefa ${result!=0? result.toStringAsFixed(3): result.toStringAsFixed(0)}',
              style: const TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 214, 36, 36),
              ),

              //   ),
              //   child TextField(
              //     style: TextStyle(

              //     ),
            ),
            // ignore: unnecessary_const
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: TextField(
                controller: textEditingController,
                style:
                    const TextStyle(color: Color.fromRGBO(189, 7, 189, 0.965)),
                decoration: const InputDecoration(
                    hintText: "Enter amount in naira",
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 20, 20, 20),
                    ),
                    prefixIcon: Icon(Icons.monetization_on_sharp),
                    prefixIconColor: Colors.grey,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: border,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(
                          width: 3.5,
                          color: Color.fromARGB(199, 150, 208, 250),
                          style: BorderStyle.solid,
                          strokeAlign: BorderSide.strokeAlignOutside),
                    )),
                keyboardType: const TextInputType.numberWithOptions(
                    decimal: true, signed: true),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 20),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    // onPressed: () {
                    //   setState(() {
                    //     result = double.parse(textEditingController.text) * 800;
                    //   });
                    //   // print(double.parse(textEditingController.text) * 800);
                    // },
                    onPressed: convert,
                    style: TextButton.styleFrom(
                        elevation: 20,
                        backgroundColor: (Colors.black),
                        foregroundColor: (Colors.white),
                        minimumSize: const Size(double.infinity, 50)),
                    // minimumSize: MaterialStatePropertyAll(Size(double.infinity, 50)),

                    child: const Text("Convert ")),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
