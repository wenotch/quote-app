import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList()
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List <String> quotes =[
    'Ndaboski is the way to go',
    'Sapa na Bastard, e no dey look face',
    'I no sabi which quote to use here'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote)=>Text(quote)).toList(),
      )
    );
  }
}
