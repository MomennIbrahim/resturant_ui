import 'package:flutter/material.dart';
import '../../../../../core/utils/constace.dart';
import '../../../../../core/utils/styles.dart';

class ExploreRestaurantItem extends StatelessWidget {
  const ExploreRestaurantItem({super.key, required this.textOfButton});

  final String textOfButton;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height/9,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
          child: Row(
            children: [
              const Image(
                image: AssetImage('assets/images/Rectangle 387.png'),
                height: 64.0,
                width: 64.0,
              ),
              const SizedBox(
                width: 16.0,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ambrosia Hotel & Restaurant',
                      style:
                          Styles.style16.copyWith(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: kPrimaryColor,
                          size: 15.0,
                        ),
                        const SizedBox(
                          width: 6.0,
                        ),
                        Expanded(
                          child: Text(
                            'kazi Deiry, Taiger Pass Chittagong',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Styles.style10.copyWith(
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff6B7280)),
                          ),
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        SizedBox(
                            height: 28.0,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xff32B768),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    )),
                                onPressed: () {},
                                child: Text(
                                  textOfButton,
                                  style: Styles.style12.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                )))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
