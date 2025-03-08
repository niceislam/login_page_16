import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AbroadCardWedget extends StatelessWidget {
  const AbroadCardWedget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 160,
      width: 270,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.yellow,
                Colors.green,
              ]),
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.edit_note,
              size: 80,
              color: Colors.white,
            ),
            Text(
              "BME registration",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Hello, Assalamualaikum Bro, Ramadan karim bro",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  overflow: TextOverflow.ellipsis, ),
            )
          ],
        ),
      ),
    );
  }
}

class ServiceCardWidget extends StatelessWidget {
  const ServiceCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 140,
        width: 120,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn-icons-png.flaticon.com/512/4199/4199482.png"))),
              ),
              Text(
                textAlign: TextAlign.center,
                "Download Cards and Certificates",
                maxLines: 3,
                style: TextStyle(fontSize: 14),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HelpCenterCard extends StatelessWidget {
  const HelpCenterCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 140,
        width: 120,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn-icons-png.flaticon.com/512/8434/8434467.png"))),
              ),
              Text(
                textAlign: TextAlign.center,
                "Verify",
                maxLines: 3,
                style: TextStyle(fontSize: 14),
              )
            ],
          ),
        ),
      ),
    );
  }
}
