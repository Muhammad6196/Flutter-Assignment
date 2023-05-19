import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(255, 90, 177, 235)),
      debugShowCheckedModeBanner: false,
      home: const MyWidget(),
    );
  }
}

//Main Code//
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final List<String> quotes = [
      "Fashion is the armor to survive the reality of everyday life.",
      "Love is not finding someone to live with; it's finding someone you can't live without.",
      "Loneliness is the human condition. Cultivate it. The way it tunnels into you allows your soul room to grow.",
      "The biggest adventure you can take is to live the life of your dreams.",
      "A day without laughter is a day wasted.",
      "A true friend is someone who is always there during the ups and downs, the highs and lows, and the laughter and tears.",
      "A smile is happiness you'll find right under your nose.",
      "The world breaks everyone, and afterward, some are strong at the broken places."
    ];
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Quotes",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.italic,
              fontSize: 25),
        ),
      ),
      body: Padding(
          padding: EdgeInsets.all(24),
          child: Wrap(
            spacing: screenSize.width * 0.1,
            runSpacing: screenSize.width * 0.1,
            children: <Widget>[
              ElevatedButton(
                child: Text(
                  'Fashion',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            QuotePage(quotes[0], "Bill Cunningham", "Fashion")),
                  );
                },
                style: MyButtonStyles.elevatedButtonStyle,
              ),
              ElevatedButton(
                child: Text(
                  'Love',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            QuotePage(quotes[1], "Rafael Ortiz", "Love")),
                  );
                },
                style: MyButtonStyles.elevatedButtonStyle,
              ),
              ElevatedButton(
                child: Text(
                  'Loneliness',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            QuotePage(quotes[2], "Janet Fitch", "Loneliness")),
                  );
                },
                style: MyButtonStyles.elevatedButtonStyle,
              ),
              ElevatedButton(
                child: Text(
                  'Life',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            QuotePage(quotes[3], "Oprah Winfrey", "Life")),
                  );
                },
                style: MyButtonStyles.elevatedButtonStyle,
              ),
              ElevatedButton(
                child: Text(
                  'Funny',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            QuotePage(quotes[4], "Charlie Chaplin", "Funny")),
                  );
                },
                style: MyButtonStyles.elevatedButtonStyle,
              ),
              ElevatedButton(
                child: Text(
                  'Friendship',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            QuotePage(quotes[5], "Unknown", "FriendShip")),
                  );
                },
                style: MyButtonStyles.elevatedButtonStyle,
              ),
              ElevatedButton(
                child: Text(
                  'Smile',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            QuotePage(quotes[6], "Tom Wilson", "Smile")),
                  );
                },
                style: MyButtonStyles.elevatedButtonStyle,
              ),
              ElevatedButton(
                child: Text(
                  'Broken',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            QuotePage(quotes[7], "Ernest Hemingway", "Broken")),
                  );
                },
                style: MyButtonStyles.elevatedButtonStyle,
              ),
            ],
          )),
    );
  }
}

class MyButtonStyles {
  static final ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    primary: Colors.white,
    onPrimary: Colors.black,
    fixedSize: Size(150, 100),
    shadowColor: Color.fromARGB(255, 0, 0, 0),
    elevation: 20,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  );
}

class QuotePage extends StatelessWidget {
  final String quote;
  final String writer;
  final String page;

  QuotePage(this.quote, this.writer, this.page);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('${this.page} Quote'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Text(
          '${quote.toUpperCase()}\n\n${this.writer}',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
