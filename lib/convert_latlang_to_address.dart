import 'package:flutter/material.dart';
import 'package:flutter_geocoder/geocoder.dart';

class ConvertLatlangToAddress extends StatefulWidget {
  const ConvertLatlangToAddress({super.key});

  @override
  State<ConvertLatlangToAddress> createState() =>
      _ConvertLatlangToAddressState();
}

class _ConvertLatlangToAddressState extends State<ConvertLatlangToAddress> {
  String address = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google map'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(address),
          GestureDetector(
            onTap: () async {
              final coordinates = new Coordinates(33.6991, 72.9744);
              var addresses = await Geocoder.local.findAddressesFromCoordinates(coordinates);
              var first = addresses.first;
              setState(() {
                address = '${first.featureName} ${first.addressLine}';
              });
            },
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text('Convert'),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
