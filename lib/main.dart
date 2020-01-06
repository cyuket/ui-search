import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Text(
                'Hi User,',
                style: TextStyle(fontSize: 20, color: Colors.blueGrey),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Search For Hostel',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF31616D)),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, right: 30),
                child: Material(
//                  elevation: 5.0,
                  color: Color(0xFFEEFAFA),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  child: TextField(
                    style: TextStyle(fontSize: 20),
//                    cursorColor: appTheme.primaryColor,
                    decoration: InputDecoration(
                        hintText: 'Eg,  ',
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 32.0, vertical: 22.0),
                        suffixIcon: Material(
                          color: Color(0xFFEEFAFA),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.search,
                              color: Colors.blueGrey,
                              size: 40,
                            ),
                          ),
                        ),
                        border: InputBorder.none),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  height: 43,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      LocationCard(
                        icon: Icons.location_on,
                        name: "Sanrab",
                      ),
                      LocationCard(
                        name: "Oke Ode",
                      ),
                      LocationCard(
                        name: "Illesumi",
                      ),
                      LocationCard(
                        name: "MFM",
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Most Available',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF31616D)),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 260,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: hostelCards,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Hostel Near you',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF31616D)),
                        ),
                        Text(
                          'Ultimate Hostel, Mark Illorin',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF31616D)),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      'On Map',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 100.0,
                    width: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      image: DecorationImage(
                        image: AssetImage("images/hostel1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Ultimate, Hostel',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF31616D),
                              fontSize: 15),
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              color: Color(0xFF31616D),
                            ),
                            SizedBox(width: 2),
                            Text('2.0km')
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              '31',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('/Year'),
                            SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                  color: Color(0xFF51CBC5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'One room available',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LocationCard extends StatelessWidget {
  final String name;
  final IconData icon;
  LocationCard({this.icon, this.name});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        width: 90,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFF4C6561),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            children: <Widget>[
              (icon != null) ? Icon(icon) : Container(),
              SizedBox(
                width: 5,
              ),
              Text(
                name,
                style: TextStyle(color: Color(0xFF31616D)),
              )
            ],
          ),
        ),
      ),
    );
  }
}

List<HostelCard> hostelCards = [
  HostelCard(
    cityName: 'Illorin',
    imagePath: 'images/hostel1.jpg',
    rate: '4.1',
    rooms: 12,
    hostelName: 'GreenLand Hostel',
  ),
  HostelCard(
    cityName: 'Illorin',
    imagePath: 'images/hostel2.jpg',
    rate: '4.1',
    rooms: 12,
    hostelName: 'GreenLand Hostel',
  ),
];

class HostelCard extends StatelessWidget {
  final String imagePath, cityName, hostelName, rate;
  final int rooms;
  HostelCard(
      {this.imagePath, this.cityName, this.hostelName, this.rate, this.rooms});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            child: Stack(
              children: <Widget>[
                Container(
                  height: 260.0,
                  width: 260.0,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 0,
                  bottom: 0,
                  width: 240.0,
                  height: 250.0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.2),
                    ),
                  ),
                ),
                Positioned(
                  left: 20.0,
                  bottom: 20.0,
                  right: 10.0,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                color: Colors.white,
                              ),
                              Text(
                                cityName,
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                width: 70,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                rate,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          Text(
                            hostelName,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Container(
                    height: 35,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.error_outline,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('$rooms Rented')
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 25,
                  left: 190,
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
