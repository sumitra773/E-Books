import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ebooks_app/app_colors.dart' as AppColors;

class DetailAudioPage extends StatefulWidget {
  const DetailAudioPage({super.key});

  @override
  State<DetailAudioPage> createState() => _DetailAudioPageState();
}

class _DetailAudioPageState extends State<DetailAudioPage> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.audioBluishBackground,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            height: screenHeight / 3,
            child: Container(
              color: AppColors.audioBlueBackground,
            ),
          ),
          Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: AppBar(
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back_ios, color:Colors.white,),
                  onPressed: () {},
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.search, color:Colors.white),
                    onPressed: () {},
                  ),
                ],
                backgroundColor: Colors.transparent,
                elevation: 0.0,
              )),
          Positioned(
              top: screenHeight * 0.2,
              right: 0,
              left: 0,
              height: screenHeight * 0.36,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(height: screenHeight*0.1,),
                    const Text("The wather cure",style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 30, fontFamily: "Avenir"),),
                    const Text("Marthin hytt",style: TextStyle(fontSize: 20),),
                  ],
                ),
              )),
          Positioned(
              top: screenHeight*0.12,
              left: (screenWidth-150)/2,
              right: (screenWidth-150)/2,
              height: screenHeight*0.16,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white,width: 2),
                  color: AppColors.audioGreyBackground,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(20),
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white,width: 5),
                      image: const DecorationImage(
                        image: AssetImage("img/pic-1.png"),
                        fit: BoxFit.cover
                      )

                    ),
                  ),
                ),

          )
          )
        ],
      ),
    );
  }
}
