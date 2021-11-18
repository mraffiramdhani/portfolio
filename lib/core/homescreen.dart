import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: GoogleFonts.heebo(fontWeight: FontWeight.w700),
      child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return Container(
          constraints: const BoxConstraints.expand(),
          color: const Color(0xFFFFFFFF),
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(minHeight: viewportConstraints.maxHeight),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 24.0, right: 48.0, left: 48.0, bottom: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Works',
                          style: TextStyle(
                              color: Color(0xFF000000), fontSize: 24.0),
                        ),
                        Text(
                          'Blog',
                          style: TextStyle(
                              color: Color(0xFF000000), fontSize: 24.0),
                        ),
                        Text(
                          'Contact',
                          style: TextStyle(
                              color: Color(0xFF000000), fontSize: 24.0),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          const Text(
                            'Hi, I am Raffi, Front-End Developer',
                            style: TextStyle(fontSize: 44.0),
                          ),
                          const Text(
                            'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
                            style: TextStyle(fontSize: 16.0),
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              child: const Text('Download Resume'))
                        ],
                      ),
                      const Image(
                        image: AssetImage('assets/images/avatar.jpg'),
                        width: 50.0,
                        height: 50.0,
                      )
                    ],
                  ),
                  Container(
                    color: const Color(0xFFEDF7FA),
                    width: viewportConstraints.maxWidth,
                    child: Text('Bruh Moment'),
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
