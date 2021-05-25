/*
 * @Description: file content
 * @Author: Mr.WJ
 * @Date: 2021-04-01 10:11:27
 * @LastEditors: Mr.WJ
 * @LastEditTime: 2021-04-01 10:11:51
 */
/*
 * @Description: file content
 * @Author: Mr.WJ
 * @Date: 2021-03-26 10:17:11
 * @LastEditors: Mr.WJ
 * @LastEditTime: 2021-03-30 14:22:19
 */

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';


// class CustomCard extends StatelessWidget {
//   CustomCard({@required this.index, @required 
//      this.onPress});

//   final index;
//   final Function onPress;

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Column(
//         children: <Widget>[
//           Text('Card $index'),
//           FlatButton(
//             child: const Text('Press'),
//             onPressed: this.onPress,
//           ),
//         ],
//       )
//     );
//   }
// }

class MyApp extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Startup Name Generator11',
       
      theme: new ThemeData.dark(),
      home: new RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords>{
  final _suggestions = <WordPair>[];

  final _saved = new Set<WordPair>();
  final _biggerFont = const TextStyle(fontSize: 18.0);


  Widget _buildSuggestions(){
    return new ListView.builder(
      padding: const EdgeInsets.all(12),
      itemBuilder: (context,i){
        if(i.isOdd){
          return new Divider();
        }
        final index = i ~/ 2;
        if(index >= _suggestions.length){
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      }
    );
  }

  Widget _buildRow(WordPair pair){
    final _alreadySaved = _saved.contains(pair);
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: new Icon(
        _alreadySaved ? Icons.favorite:Icons.favorite_border,
        color: _alreadySaved ? Colors.red:null,
      ),
      onTap: (){
        setState(() {
           if(_alreadySaved){
             _saved.remove(pair);
           }else{
             _saved.add(pair);
           }
        });
      },
    );
  }
  void _pushSaved(){
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context){
          final tiles = _saved.map((pair){
            return new ListTile(
              title: new Text(
                pair.asPascalCase,
                style: _biggerFont
              ),
            );
          });
          final divided = ListTile.divideTiles(
            context: context,
            tiles: tiles
          ).toList();
          
          return new Scaffold(
            appBar: new AppBar(
              title: new Text('Saved Suggestions1'),
            ),
            body: new ListView(children: divided),
          );
        }
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Startup Name Generator'),
        backgroundColor: Colors.red,
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved)
        ],
      ),
    body: _buildSuggestions(),      
    );
  }
}
