import 'package:flutter/material.dart';

// import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    // Text Style for Card
    const cardTextStyle = TextStyle(
      fontFamily: "Montserrat Regular",
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: Color.fromRGBO(63, 63, 63, 1),
    );

    return Scaffold(
      body: Stack(
        children: [

          // Background Image on Header
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage('assets/images/top_header.png'),
              ),
            ),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [                      
                  
                  //Profile Section                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                  Container(
                    height: 64,
                    margin: const EdgeInsets.only(bottom: 20, top:20,),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          radius: 32,
                          backgroundImage: NetworkImage('https://i.pinimg.com/originals/78/07/03/78070395106fcd1c3e66e3b3810568bb.jpg'),
                        ),
                        const SizedBox(width: 16,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Jhon Doe', 
                              style: TextStyle(
                                fontFamily: 'Montserrat Regular',
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              '404040',
                              style: TextStyle(
                                fontFamily: 'Montserrat Regular',
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  
                  // Card List Section
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 25,
                      primary: false,
                      children: [

                        // Personal Data Card
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [

                              // Use from emmbed SVG URL
                              // SvgPicture.network(
                              //   "https://image.flaticon.com/icons/svg/1904/1904425.svg"
                              // ),
                              
                              // Use from icon image assets
                              Image(
                                image: AssetImage('assets/icons/student.png'),
                              ),
                              
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  'Personal Data', 
                                  style: cardTextStyle,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Course Schedule Card
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(
                                image: AssetImage('assets/icons/schedule.png'),
                              ),
                              
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  'Course Schedule', 
                                  style: cardTextStyle,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Study Result
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(
                                image: AssetImage('assets/icons/prize.png'),
                              ),
                              
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  'Study Result', 
                                  style: cardTextStyle,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Attendance Recap Card
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(
                                image: AssetImage('assets/icons/id.png'),
                              ),
                              
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  'Attendance Recap', 
                                  style: cardTextStyle,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Course Booking Card
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(
                                image: AssetImage('assets/icons/files.png'),
                              ),
                              
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  'Course Booking', 
                                  style: cardTextStyle,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Course Plan Card
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(
                                image: AssetImage('assets/icons/book.png'),
                              ),
                              
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  'Course Plan', 
                                  style: cardTextStyle,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}