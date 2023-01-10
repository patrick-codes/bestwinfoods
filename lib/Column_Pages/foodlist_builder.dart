import 'package:flutter/material.dart';
import '../Screens/restuarant_details_screen.dart';

class FoodListBuilder extends StatelessWidget {
  const FoodListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              height: 200.0,
              width: width, //color: Colors.blue,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  //Food destination = foods[index];
                  return Container(
                    margin: const EdgeInsets.all(0.0),
                    width: 200.0,
                    //color: Colors.red,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: <Widget>[
                        Positioned(
                          bottom: 10.0,
                          child: Container(
                            height: 120,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Padding(
                              padding: const EdgeInsets.all(08.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const <Widget>[
                                  Text(
                                    'Fried Rice',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1.0,
                                    ),
                                  ),
                                  Text(
                                    'GHC20.00',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 18.0,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1.0,
                                    ),
                                  ),
                                  Text(
                                    'meat, source, chips',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            //color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0.0, 2.0),
                                blurRadius: 6.0,
                              ),
                            ],
                          ),
                          child: GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const RestaurantDetails(),
                              ),
                            ),
                            child: Stack(
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(18.0),
                                  child: const Image(
                                    height: 120.0,
                                    width: 150.0,
                                    image: AssetImage(
                                        'assets/images/resimgs/food3.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  left: 10.0,
                                  bottom: 10.0,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      const Text(
                                        "Tava Restaurant",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Roboto',
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: const <Widget>[
                                          Icon(
                                            (Icons.place),
                                            color: Colors.white,
                                            size: 10.0,
                                          ),
                                          SizedBox(
                                            width: 5.0,
                                          ),
                                          Text(
                                            "Darkuman, Accra",
                                            style: TextStyle(
                                                fontFamily: 'Roboto',
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 8.0),
      ],
    );
  }
}
