import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:animate_do/animate_do.dart';

class SlideInfo {
  final String title;
  final String description;
  final String imageUrl;

  SlideInfo(
     this.title,
     this.description,
     this.imageUrl,
  );
}
final slides = <SlideInfo>[
  SlideInfo('Busca la comida', 'Busca la comida que más te guste', 'assets/images/1.png'),
  SlideInfo('Haz tu pedido', 'Haz tu pedido y espera a que llegue', 'assets/images/2.png'),
  SlideInfo('Disfruta', 'Disfruta de tu comida', 'assets/images/3.png'),
];

class AppTutorialScreen extends StatefulWidget {

  static const name = 'tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  
  late final PageController pageviewController = PageController();
  bool endReached = false;

  @override
  void initState() {
    super.initState();
    pageviewController.addListener((){
      
      final page = pageviewController.page ?? 0;
      if ( !endReached && page >= slides.length - 1.5) {
        setState(() {
          endReached = true;
        });
      }
    });
  }

  @override
  void dispose() {
    pageviewController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageviewController,
            physics: const BouncingScrollPhysics(),
            children: 
              slides.map(
                (slideData) => _Slide(
                  title: slideData.title,
                  description: slideData.description,
                  imageUrl: slideData.imageUrl,
                  )
                  ).toList(),
          ),
          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              onPressed: () => context.pop(),
               child: const Text('Salir')),
          ),
         
         
          endReached ?
            Positioned(
              bottom: 20,
              right: 20,
              child: FadeInRight(
                from: 15,
                delay: const Duration(seconds: 1),
                child: FilledButton(
                  onPressed: (){context.pop();}, 
                  child: Text('Comenzar')),
              ),
            ): const SizedBox(),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {

  final String title;
  final String description;
  final String imageUrl;

  const _Slide({
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {

    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final descriptionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            const SizedBox(height: 20),
            Text(title,style: titleStyle,),
            const SizedBox(height: 20),
            Text(description , style: descriptionStyle,),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}