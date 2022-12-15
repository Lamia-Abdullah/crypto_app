import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../style.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const moonIcon =CupertinoIcons.moon_stars;
    return Scaffold(
      appBar: AppBar(
        title: Text(
                  "Crypto Market",
                  style: textStyle(24, Colors.white, FontWeight.bold),
                ),
        backgroundColor:Color.fromARGB(255, 36, 35, 37),
        elevation: 0,
        actions: [
          const SizedBox(width:20),
          IconButton(
          icon:const Icon(moonIcon,color:Colors.grey,
          ),
          onPressed: () {},
    ),
    ],),
      backgroundColor: Color.fromARGB(255, 52, 39, 91),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10 ),
        child: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(
                //   "Crypto Market",
                //   style: textStyle(24, Colors.white, FontWeight.bold),
                // ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[700],
                                    borderRadius: BorderRadius.circular(18),
                                    border: Border.all(
                                    color: Colors.white,
                                    width: 0.5),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey[800]!,
                                          offset: const Offset(1, 1),
                                          blurRadius: 5),
                                    ],
                                  ),
                                  child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Image.network(
                                          'https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579')),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height:10),
                                    Text(
                                      "Bitcoin",
                                      style: textStyle(
                                          16, Colors.white, FontWeight.w600),
                                    ),
                                    Text(
                                      "10 %",
                                      style: textStyle(
                                          16, Colors.grey, FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const SizedBox(height:10),
                                Text(
                                  "\$ 300",
                                  style: textStyle(
                                      16, Colors.white, FontWeight.w600),
                                ),
                                Text(
                                  "btc",
                                  style: textStyle(
                                      16, Colors.grey, FontWeight.w600),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )
              ],
            )),
      ),
    );
    
  }
}
