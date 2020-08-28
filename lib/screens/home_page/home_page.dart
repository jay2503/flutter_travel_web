import 'package:camping_travel/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: SingleChildScrollView(
      child: Expanded(
        child: Column(
          children: [
            Header(size: size),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(height: kDefaultPadding),
                  Image.asset("assets/images/explore.png"),
                  Text(
                    'Explore Destinations\n& Activities',
                    style: TextStyle(
                      fontFamily: 'Archivo',
                      fontSize: 40,
                      color: const Color(0xff3b3735),
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            // Flexible(
            //   child: GridView.count(
            //     crossAxisCount: 4,
            //     children: List.generate(
            //         20,
            //         (index) => Container(
            //               height: 100,
            //             )),
            //   ),
            // )
          ],
        ),
      ),
    ));
  }
}

class DestinationCard extends StatelessWidget {
  final int index;
  const DestinationCard({
    Key key,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      // child: Column(
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     Spacer(flex: 2),
      //     Image.asset("assets/images/explore.png"),
      //     Spacer(flex: 1),
      //     Text(
      //       'Camping & Day Use',
      //       style: TextStyle(
      //         fontSize: 18,
      //         color: const Color(0xff3b3735),
      //         fontWeight: FontWeight.w900,
      //       ),
      //       textAlign: TextAlign.center,
      //     ),
      //     Spacer(flex: 2)
      //   ],
      // ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: size.width * 0.5,
          child: Container(
            height: size.width * 0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(200.0),
                bottomLeft: Radius.circular(200.0),
              ),
              // color: Colors.amberAccent,
              image: DecorationImage(
                image: AssetImage('assets/images/BG.png'),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x0d000000),
                  offset: Offset(5, 10),
                  blurRadius: 30,
                ),
              ],
            ),
          ),
        ),
        CustomAppBar(),
        CenterContent()
      ],
    );
  }
}

class CenterContent extends StatelessWidget {
  const CenterContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 200,
      left: 400,
      child: Container(
        child: Container(
          width: 580,
          child: Column(
            children: [
              Text(
                "Find Yourself Outside.",
                style: TextStyle(color: Colors.white, fontSize: 81),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              Text(
                "Book unique camping experiences on over 300,000 campsites, cabins, RV parks, public parks and more.",
                style: TextStyle(color: Colors.white, fontSize: 18),
                textAlign: TextAlign.center,
              ),
              FlatButton(
                padding: EdgeInsets.symmetric(
                    vertical: kDefaultPadding / 2,
                    horizontal: kDefaultPadding / 2),
                onPressed: () {},
                child: Text("Discover"),
                color: Color(0xFFE76F51),
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          Image.asset("assets/images/logo.png"),
          SizedBox(width: kDefaultPadding / 4),
          MenuItem(title: "Home"),
          MenuItem(title: "Destination"),
          MenuItem(title: "Near Me"),
          MenuItem(title: "Events"),
          MenuItem(title: "Blog"),
          MenuItem(title: "Gallery"),
          MenuItem(title: "About"),
          MenuItem(title: "Contact Us"),
          Spacer(),
          MenuItem(title: "Sign up"),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding / 2, vertical: kDefaultPadding / 4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white)),
            child: MenuItem(title: "Sign in"),
          )
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;

  const MenuItem({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
        child: Text(
          title,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
