import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:intl/intl.dart';
import 'package:weatherapp/controller/global_controller.dart';

class Header extends StatefulWidget {
  GlobalController globalController ;

  Header({super.key , required this.globalController});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  String city = "" ;
  String country = "" ;
  String dateTime = DateFormat("yMMMMd").format(DateTime.now()) ;

  @override
  void initState() {
    getAddress(widget.globalController.getLattitude().value , widget.globalController.getLongitude().value);
    super.initState();
  }
  void getAddress(lat, lon) async {
    List<Placemark> placemark = await placemarkFromCoordinates(lat, lon) ;
    Placemark place = placemark[0] ;
    print("Place" + place.toString()) ;
    setState(() {
      city = place.administrativeArea! ;
      country = place.country! ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20 , right: 20),
          alignment: Alignment.topLeft,
          child: Text(
            city,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 35
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20 , right: 20, bottom: 20),
          alignment: Alignment.topLeft,
          child: Text(
            dateTime,
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 14,
              height: 1.5
            ),
          ),
        )
      ],
    );
  }


}
