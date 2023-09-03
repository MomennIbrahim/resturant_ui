import 'package:flutter/material.dart';
import '../../../../../core/utils/constace.dart';
import '../../../../../core/utils/styles.dart';

class TodayNewArivableItem extends StatelessWidget {
  const TodayNewArivableItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150.0,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8.0),
                      topLeft: Radius.circular(8.0)),
                  child: Image(
                      image: AssetImage('assets/images/food1.png'))),
              const SizedBox(
                height: 13.0,
              ),
              Text(
                'Chicken Biryani',
                style:
                Styles.style16.copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: kPrimaryColor,
                      size: 15.0,
                    ),
                    Expanded(
                      child: Text(
                        'Ambrosia Hotel & Restaurant',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.style10.copyWith(
                            color: const Color(0xff6B7280),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
