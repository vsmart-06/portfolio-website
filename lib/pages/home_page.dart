import "package:flutter/material.dart";
import "package:personal_website/widgets/appbar.dart";
import "package:personal_website/widgets/drawer.dart";
import "package:personal_website/widgets/header.dart";
import "package:personal_website/widgets/footer.dart";
import "package:google_fonts/google_fonts.dart";
import "package:animated_text_kit/animated_text_kit.dart";

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? fontMain = GoogleFonts.montserrat().fontFamily;
  String? fontTitle = GoogleFonts.merriweather().fontFamily;
  String? fontQuote = GoogleFonts.greatVibes().fontFamily;
  List<double> padValues = [20, 20];
  Color cardColor = Color(0xFFF7F0F0);
  List<Color> theme = [
    Color(0xFFF7F0F0),
    Color(0xFF5FE3E7),
    Color(0xFF0DB9BF),
    Color(0xFF006494),
    Color(0xFF003554),
    Color(0xFF051923)
  ];
  bool animation = false;

  List<String> typerTexts = [
    'print("Hi guys!")',
    'System.out.println("Hi guys!");',
    'print("Hi guys!");',
    'cout << "Hi guys!" << endl;',
    'console.log("Hi guys!");'
  ];

  void hoverAnimation(var event, bool hover) {
    if (hover && !animation) {
      setState(() {
        padValues = [10, 30];
        cardColor = theme[1];
        animation = true;
      });
    } else if (!hover && animation) {
      setState(() {
        padValues = [20, 20];
        cardColor = theme[0];
        animation = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      return Scaffold(
          backgroundColor: theme[5],
          body: Container(
            height: MediaQuery.of(context).size.height,
            color: theme[5],
            child: SingleChildScrollView(
              child: Container(
                constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [
                      Header(),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 30, 0, 50),
                                      child: AnimatedTextKit(
                                          repeatForever: true,
                                          pause: Duration(seconds: 3),
                                          animatedTexts: typerTexts
                                              .map(
                                                  (e) => TypewriterAnimatedText(
                                                        e,
                                                        cursor: "|",
                                                        speed: Duration(
                                                            milliseconds: 100),
                                                        textStyle: TextStyle(
                                                            fontFamily: GoogleFonts
                                                                    .sourceCodePro()
                                                                .fontFamily,
                                                            fontSize: 40,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: theme[1]),
                                                      ))
                                              .toList())),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    child: Text(
                                        "My name is Srivishnu Vusirikala, and I am a sophomore studying Computer Science at the University of Illinois Urbana-Champaign. I enjoy solving challenging problems in fields such as mathematics and computer science. I am also an avid lover of chess and sports such as cricket, basketball, and hockey. Buckle your seatbelts, as you get ready to navigate this tapestry that is my life!",
                                        style: TextStyle(
                                            fontFamily:
                                                GoogleFonts.jost().fontFamily,
                                            fontSize: 25,
                                            color: theme[0])),
                                  )
                                ],
                              ),
                            ),
                            Card(
                              color: theme[3],
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  child: Image(
                                    image: NetworkImage(
                                        "https://i.imgur.com/nZuxMBB.jpeg"),
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ]),
                    Footer()
                  ],
                ),
              ),
            ),
          ));
    } else {
      return Scaffold(
          backgroundColor: theme[5],
          appBar: TopBar(),
          drawer: SideBar(),
          body: Container(
              height: double.infinity,
              width: MediaQuery.of(context).size.width,
              color: theme[5],
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                          child: AnimatedTextKit(
                              repeatForever: true,
                              pause: Duration(seconds: 3),
                              animatedTexts: typerTexts
                                  .map((e) => TypewriterAnimatedText(
                                        e,
                                        cursor: "|",
                                        speed: Duration(milliseconds: 100),
                                        textStyle: TextStyle(
                                            fontFamily:
                                                GoogleFonts.sourceCodePro()
                                                    .fontFamily,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                            color: theme[1]),
                                      ))
                                  .toList())),
                      Text(
                          "My name is Srivishnu Vusirikala, and I am a sophomore studying Computer Science at the University of Illinois Urbana-Champaign. I enjoy solving challenging problems in fields such as mathematics and computer science. I am also an avid lover of chess and sports such as cricket, basketball, and hockey. Buckle your seatbelts, as you get ready to navigate this tapestry that is my life!",
                          style: TextStyle(
                              fontFamily: GoogleFonts.jost().fontFamily,
                              fontSize: 25,
                              color: theme[0])),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Card(
                          color: theme[3],
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: Image(
                                image: NetworkImage(
                                    "https://i.imgur.com/nZuxMBB.jpeg"), //NetworkImage("https://i.imgur.com/nZuxMBB.jpeg"),
                                width: MediaQuery.of(context).size.width * 0.5,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )));
    }
  }
}
