import 'package:flutter/material.dart';
import 'package:flutter_application_1/logic.dart';

class ConvertPage extends StatefulWidget {
  const ConvertPage({Key? key}) : super(key: key);

  @override
  _ConvertPageState createState() => _ConvertPageState();
}

class _ConvertPageState extends State<ConvertPage> {
  Deci2Binary obj = Deci2Binary();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Center(
            child: Text(
              'Decimal to binary Convertor',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 15, 8, 8),
              child: TextField(
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange, width: 2.0),
                  ),
                  label: Text(
                    'Enter Decimal Number',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                keyboardType: TextInputType.number,
                onChanged: (input1) {
                  setState(() {
                    int number1 = int.parse(input1);
                    obj.setNum(number1);
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      )),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      for(int s = 0; s < obj.binaryLength; s++)
                      Text(
                        obj.arr1[s],
                        style:
                            const TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                minWidth: MediaQuery.of(context).size.width * 0.25,
                height: MediaQuery.of(context).size.height * 0.1,
                color: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () {
                  setState(() {
                    obj.convert();
                  });
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Convert',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
