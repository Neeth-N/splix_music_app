import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:splix/common/widgets/button/basic_app_button.dart';
import 'package:splix/core/configs/assets/app_images.dart';
import 'package:splix/core/configs/assets/app_vectors.dart';
import 'package:splix/core/configs/theme/app_colors.dart';
import 'package:splix/presentation/choose_mode/page/choose_mode.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 40,
            horizontal: 40,
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage(AppImages.introBG),fit: BoxFit.fill)
          ),
        ),

          Container(
            color: Colors.black.withOpacity(0.15),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 40,
            ),
            child: Column(
              children: [
                Align(alignment: Alignment.topCenter,child: SvgPicture.asset(AppVectors.logo)),
                const Spacer(),
                const Text('Enjoy Listening to Music',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),
                const SizedBox(height: 21,),
                const Text('Music is the silent whisper of the heart, a melody that dances through our dreams and paints our emotions in colors words can never capture.',style: TextStyle(fontWeight: FontWeight.w500,color: AppColors.grey,fontSize: 13),textAlign: TextAlign.center,),
                const SizedBox(height: 20,),
                BasicAppButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>const ChooseModePage()
                          )
                      );
                    },
                    title: 'Get Started'
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
