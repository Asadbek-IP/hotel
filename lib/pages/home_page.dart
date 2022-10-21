import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 280,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/nemnig.jpg"))),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  colors: [
                    Colors.black.withOpacity(.5),
                    Colors.black.withOpacity(.4)
                  ],
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Best Hotels Ever",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 30),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Search for hotels...",
                        hintStyle: const TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            gapPadding: 0,
                            borderSide: const BorderSide(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height:10,
          ),
     Expanded(
       child: SingleChildScrollView(
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                Container(
                padding: const EdgeInsets.all(12),
                child: const Text(
              "Best Hotels",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
                ),
              ),
              Container(
                height: 200,
                padding: const EdgeInsets.all(8.0),
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _cardItem("Hotel 1", "assets/images/nemnig.jpg"),
                _cardItem("Hotel 1", "assets/images/nemnig.jpg"),
               _cardItem("Hotel 1", "assets/images/nemnig.jpg"),
               
              ],
                ),
              ),
              const SizedBox(
                height:5,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text(
              "  Luxury Hotels",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
                ),
              ),
             Container(
            height: 200,
                padding: const EdgeInsets.all(8.0),
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                 _cardItem("Hotel 1", "assets/images/nemnig.jpg"),
                _cardItem("Hotel 1", "assets/images/nemnig.jpg"),
               _cardItem("Hotel 1", "assets/images/nemnig.jpg"),
              ],
                ),
              ),
              const SizedBox(
                height:5,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text(
              "  Resort Hotels",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
                ),
              ),
             Container(
              height: 200,
               padding: const EdgeInsets.all(8.0),
               child: ListView(
             scrollDirection: Axis.horizontal,
             children: [
                _cardItem("Hotel 1", "assets/images/nemnig.jpg"),
               _cardItem("Hotel 1", "assets/images/nemnig.jpg"),
              _cardItem("Hotel 1", "assets/images/nemnig.jpg"),
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

Widget _cardItem(String name, String img) {
  return Container(
    margin: const EdgeInsets.all(8),
    width: 180,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(img),
      ),
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          colors: [
            Colors.black.withOpacity(.8),
            Colors.black.withOpacity(.4),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name,style: const TextStyle(color: Colors.white,fontSize: 18),),
              IconButton(onPressed: (){}, icon: const Icon(Icons.favorite,color: Colors.red,))
            ],
          )),
      ),
    ),
  );
}
