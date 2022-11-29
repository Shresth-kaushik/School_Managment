import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class StudentList extends StatefulWidget {
  const StudentList({Key? key}) : super(key: key);

  @override
  State<StudentList> createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {
  List _items = [];

// Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/files/studentlist.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["items"];
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Student's List",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            ElevatedButton(
              child: const Text('Load Data'),
              onPressed: readJson,
            ),

            // Display the data loaded from sample.json
            _items.isNotEmpty
                ? Expanded(
              child: ListView.builder(
                itemCount: _items.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Card(
                      margin: const EdgeInsets.all(10),
                      child: ListTile(
                        leading: Text(_items[index]["id"]),
                        title: Text(_items[index]["name"]),
                        subtitle: Container(
                          child: Text(_items[index]["description"],
                          ),
                        ),

                      ),
                    ),
                  );
                },
              ),
            )
                : Container()
          ],
        ),
      ),
    );
  }
}


/*
{
  "items": [
    {
      "index": 0,
      "name": "Wallace Bauer",
      "picture": "http://placehold.it/32x32",
      "gender": "male",
      "Roll_No": "<01"
    },
    {
      "index": 1,
      "name": "Aurelia May",
      "picture": "http://placehold.it/32x32",
      "gender": "female",
      "Roll_No": "02"
    },
    {
      "index": 2,
      "name": "Violet Edwards",
      "picture": "http://placehold.it/32x32",
      "gender": "female",
      "Roll_No": "03"
    },
    {
      "index": 3,
      "name": "Mason Christian",
      "picture": "http://placehold.it/32x32",
      "gender": "male",
      "Roll_No": "04"
    },
    {
      "index": 4,
      "name": "Kimberley Brennan",
      "picture": "http://placehold.it/32x32",
      "gender": "female",
      "Roll_No": "05"
    },
    {
      "index": 5,
      "name": "Roach Jackson",
      "picture": "http://placehold.it/32x32",
      "gender": "male",
      "Roll_No": "06"
    },
    {
      "index": 6,
      "name": "Marietta Leonard",
      "picture": "http://placehold.it/32x32",
      "gender": "female",
      "Roll_No": "07"
    },
    {
      "index": 7,
      "name": "Warren",
      "picture": "http://placehold.it/32x32",
      "gender": "male",
      "Roll_No": "<08"
    },
    {
      "index": 8,
      "name": "Roman ",
      "picture": "http://placehold.it/32x32",
      "gender": "female",
      "Roll_No": "09"
    },
    {
      "index": 9,
      "name": "Johnson Denial",
      "picture": "http://placehold.it/32x32",
      "gender": "female",
      "Roll_No": "10"
    },
    {
      "index": 10,
      "name": "Messi",
      "picture": "http://placehold.it/32x32",
      "gender": "male",
      "Roll_No": "11"
    }
  ]
}
 */