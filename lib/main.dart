import 'package:flutter/material.dart';
import 'package:quoteapp/quote.dart';
import 'package:quoteapp/quote_card.dart';


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

  List <Quote> quotes =[
    Quote('Ndaboski is the way to go', 'Danjuma'),
    Quote(   'Sapa na Bastard, e no dey look face', "Praise"),
    Quote(  'I no sabi which quote to use here', "Emmanuel")
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
        children: quotes.map((quote)=> QuoteCard(
            quote: quote,
            delete: (){
              setState(() {
                quotes.remove(quote);
              });
          }
        )).toList(),
      )
    );
  }
}
