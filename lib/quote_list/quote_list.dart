import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: 'Oscar wild',
        text:
            'To live is the rarest thing in the world. Most people exist, that is all.'),
    Quote(
        author: 'Emily Dickinson',
        text: 'That it will never come again is what makes life so sweet.'),
    Quote(
        author: 'George Eliot',
        text: 'It is never too late to be what you might have been.'),
    Quote(
        author: 'Ralph Waldo Emerson',
        text:
            'To be yourself in a world that is constantly trying to make you something else is the greatest accomplishment.')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Quotes'),
          centerTitle: true,
          backgroundColor: Colors.grey,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: quotes.map((quote) => Text('${quote.author} - ${quote.text}')).toList(),

            // quotes.map((quotes){
            //   return Text(quotes);
            // }).toList(),
          ),
        ));
  }
}
