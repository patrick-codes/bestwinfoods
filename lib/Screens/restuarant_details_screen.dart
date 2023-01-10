import 'package:flutter/material.dart';

class RestaurantDetails extends StatelessWidget {
  const RestaurantDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: AssetImage('assets/images/resimgs/food18.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Icon(
                    Icons.discount,
                    color: Colors.black,
                  ),
                  Text(
                    "-30% Off",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const Text(
                    "New release",
                    style: TextStyle(
                      fontFamily: 'Robot',
                      fontSize: 20,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Fiery Veg Pizza Medium \n" "Size + 500ml Coke",
                  style: TextStyle(
                      fontSize: 25,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto'),
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Text(
                      "GHC49.00",
                      style: TextStyle(
                        fontFamily: 'Lato',
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  "Mozzarella Cheese, Fiery Sauce Jalapeno, Mushroom, Red Onion, Peppadew",
                  style: TextStyle(
                    fontFamily: 'Lato',
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 15),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Crust options",
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Choose: One option",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                          ),
                        ),
                        Container(
                          color: Colors.yellow,
                          child: const Text(
                            "required",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      "Add for GHC49.00",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
