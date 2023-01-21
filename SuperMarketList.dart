import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

void main() async {
  // Initialize Firebase
  final FirebaseApp app = await FirebaseApp.configure(
    name: 'Supermarket List',
    options: const FirebaseOptions(
      apiKey: 'YOUR_API_KEY',
      projectId: 'YOUR_PROJECT_ID',
    ),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Supermarket List',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _itemController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();
  List _items = [];

  @override
  void initState() {
    super.initState();
    _getItems();
  }

  _getItems() async {
    DataSnapshot snapshot = await FirebaseDatabase.instance.reference().child('items').once();
    setState(() {
      snapshot.value.forEach((key, value) {
        _items.add(value);
      });
    });
  }

  _addItem() {
    String item = _itemController.text;
    int quantity = int.parse(_quantityController.text);
    FirebaseDatabase.instance.reference().child('items').push().set({
      'name': item,
      'quantity': quantity,
    });
    _itemController.clear();
    _quantityController.clear();
  }

  _updateItem(int index, int quantity) {
    FirebaseDatabase.instance.reference().child('items').child(_items[index]['key']).update({
      'quantity': quantity,
    });
  }

  _deleteItem(int index) {
    FirebaseDatabase.instance.reference().child('items').child(_items[index]['key']).remove();
    setState(() {
      _items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Supermarket List'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: _itemController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Item',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: _quantityController,
              decoration: InputDec
            )
          )
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          VERSÃO SEM FIREBASE
          
          import 'package:flutter/material.dart';
void main() {
  runApp(SupermarketList());
}
class SupermarketList extends StatefulWidget {
  @override
  _SupermarketListState createState() => _SupermarketListState();
}

class _SupermarketListState extends State<SupermarketList> {
  final List<String> _items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Supermercado'),
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          final item = _items[index];
          return ListTile(
            title: Text(
              item,
              style: TextStyle(decoration: TextDecoration.lineThrough),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.check_box),
                  onPressed: () {
                    setState(() {
                      _items[index] = item;
                    });
                  },
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    setState(() {
                      _items.removeAt(index);
                    });
                  },
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Add Item'),
                content: TextField(
                  onSubmitted: (value) {
                    setState(() {
                      _items.add(value);
                    });
                    Navigator.of(context).pop();
                  },
                ),
                actions: <Widget>[
                  FlatButton(
                    child: Text('Add'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}

          
          
          
          
          
          
          
          
        
