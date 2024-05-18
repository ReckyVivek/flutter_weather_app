import 'package:flutter/material.dart';

class HourlyForecastWidget extends StatelessWidget {
  final IconData icon;
  final String time;
  final String temprature;
  const HourlyForecastWidget({
    super.key,
    required this.icon,
    required this.time,
    required this.temprature,
  });
  
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              time,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 8,
            ),
            Icon(
              icon,
              size: 32,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              temprature,
              style: const TextStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
