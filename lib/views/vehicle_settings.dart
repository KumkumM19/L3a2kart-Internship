import 'package:flutter/material.dart';
import 'package:internship_test/constants/lists.dart';

import '../common/image_slider.dart';
import '../common/toggle_button.dart';
import '../constants/colors.dart';
import '../constants/images.dart';
import '../constants/styles.dart';

class Vehicle_Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          size: 25,
          color: black1,
        ),
        title: const Text(
          "Honda Activa 110cc",
          style: TextStyle(fontSize: 16, fontFamily: medium, color: black1),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ImageSlider(),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 10,top:10),
                        child: Text(
                          "Honda Activa 110cc",
                          style: TextStyle(
                              fontFamily: medium, color: black1, fontSize: 18),
                        ),
                      ),
                      Icon(
                        Icons.star,
                        color: blue1,
                      ),
                      Text(
                        "4.3",
                        style: TextStyle(
                            color: blue1, fontFamily: medium, fontSize: 14),
                      ),
                      Text(
                        " (44 rides)",
                        style: TextStyle(
                            fontSize: 14, fontFamily: regular, color: grey1),
                      )
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        "MH 12 KP 3431",
                        style: TextStyle(
                            fontFamily: regular, fontSize: 14, color: grey2),
                      ),
                      Image(
                        image: AssetImage(certify),
                        height: 20,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Container(
                      width: 115,
                      height: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 1)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text(
                            "Vehicle Preview",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: regular,
                                color: black1),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 1),
                            child: Icon(
                              Icons.remove_red_eye,
                              color: Colors.black,
                              size: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      ToggleButtonWidget(),
                      const Text(
                        "Accepting Rides",
                        style: TextStyle(
                            fontFamily: medium, fontSize: 14, color: black1),
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(0),
                    child: Divider(
                      color: grey4,
                      thickness: 0.7,
                    ),
                  ),
                  const Text(
                    "SETTINGS",
                    style: TextStyle(
                        fontSize: 13, fontFamily: regular, color: grey2),
                  ),
                  SizedBox(
                    height:MediaQuery.of(context).size.height*0.42,
                    child: ListView.separated(
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            leading: Image.asset(
                              listimg[index],
                              width: 20,
                              height: 20,
                            ),
                            title: Text(list[index],style: const TextStyle(fontFamily: regular,fontSize: 16,color: black1),),
                            trailing: const Icon(Icons.arrow_forward_ios,color: grey2,),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const Divider(
                            height: 1,
                            color: grey4,
                          );
                        },
                        itemCount: list.length),
                  ),
                  const Divider(
                    height: 1,
                  color: grey4,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text("Remove this vehicle",style: TextStyle(fontSize: 16,fontFamily: medium,color: red1),),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
