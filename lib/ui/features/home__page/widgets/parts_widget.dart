// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:training_app/domain/entities/parts_models.dart';
// import 'package:training_app/domain/resources/app_colors.dart';
// import 'package:training_app/ui/features/parts/parts_page.dart';

// class PartsWidget extends StatelessWidget {
//   PartsWidget({
//     Key? key,
//   }) : super(key: key);

//   final List<String> titleParts = [
//     Parts.biceps,
//     Parts.legs,
//     Parts.back,
//     Parts.chest,
//     Parts.shoulder,
//     Parts.abs,
//   ];

//   final List<String> assetParts = [
//     Parts.bicepsImage,
//     Parts.legsImage,
//     Parts.backImage,
//     Parts.chestImage,
//     Parts.shoulderImage,
//     Parts.absImage,
//   ];

//   @override
//   Widget build(BuildContext context) {
//     final List<Widget> partsWidget = [
//       partCarouselSlider(
//         context,
//         i: 0,
//         partsWidget: PartsPage(
//           imagesAsset: [
//             Image.asset("assets/parts_image/back_image.png"),
//             Image.asset("assets/parts_image/chest_image.png"),
//             Image.asset("assets/parts_image/legs_image.png"),
//             Image.asset("assets/parts_image/biceps_image.png"),
//           ],
//           exercises: const [
//             'Barra Fixa',
//             'Halter Livre Martelo',
//             'Barra W pegada Inversa',
//           ],
//           partName: Parts.biceps,
//           setReps: const ['12/4', '12/4', '12/4'],
//         ),
//       ),
//       partCarouselSlider(
//         context,
//         i: 1,
//         partsWidget: PartsPage(
//           imagesAsset: [
//             Image.asset("assets/parts_image/back_image.png"),
//             Image.asset("assets/parts_image/chest_image.png"),
//             Image.asset("assets/parts_image/legs_image.png"),
//             Image.asset("assets/parts_image/biceps_image.png"),
//           ],
//           exercises: const [
//             'Agachamento caminhando com peso',
//             'Agachamento sumo',
//             'Panturrilha elevacao sem peso',
//           ],
//           partName: Parts.legs,
//           setReps: const ['15/3', '12/4', '26/4'],
//         ),
//       ),
//       partCarouselSlider(
//         context,
//         i: 2,
//         partsWidget: PartsPage(
//           imagesAsset: [
//             Image.asset("assets/exercises/back_1.jpeg", fit: BoxFit.fill),
//             Image.asset("assets/exercises/back_2.jpeg", fit: BoxFit.fill),
//             Image.asset("assets/exercises/back_3.jpeg", fit: BoxFit.fill),
//             Image.asset("assets/exercises/back_4.jpeg", fit: BoxFit.fill),
//           ],
//           exercises: const [
//             'Puxador Barra longa ou Barra fixa',
//             'Halter unilateral puxada',
//             'Triangulo no chao puxada',
//           ],
//           partName: Parts.back,
//           setReps: const ['12/4', '12/4', '12/4'],
//         ),
//       ),
//       partCarouselSlider(
//         context,
//         i: 3,
//         partsWidget: PartsPage(
//           imagesAsset: [
//             Image.asset("assets/parts_image/back_image.png"),
//             Image.asset("assets/parts_image/chest_image.png"),
//             Image.asset("assets/parts_image/legs_image.png"),
//             Image.asset("assets/parts_image/biceps_image.png"),
//           ],
//           exercises: const [
//             'Peito, halter lire reto',
//             'Crucifixo',
//             'Banco 45 Graus, halter livre inclinado',
//           ],
//           partName: Parts.chest,
//           setReps: const ['12/4', '12/4', '12/4'],
//         ),
//       ),
//       partCarouselSlider(
//         context,
//         i: 4,
//         partsWidget: PartsPage(
//           imagesAsset: [
//             Image.asset("assets/parts_image/back_image.png"),
//             Image.asset("assets/parts_image/chest_image.png"),
//             Image.asset("assets/parts_image/legs_image.png"),
//             Image.asset("assets/parts_image/biceps_image.png"),
//           ],
//           exercises: const [
//             'Elevacao lateral com halter',
//             'Elevacao frontal com halter',
//             'Elevacao parte de tras do ombro sentado',
//             'Elevacao trapezio livre',
//           ],
//           partName: Parts.shoulder,
//           setReps: const ['12/4', '12/4', '12/4', '10/3'],
//         ),
//       ),
//       partCarouselSlider(
//         context,
//         i: 5,
//         partsWidget: PartsPage(
//           imagesAsset: [
//             Image.asset("assets/parts_image/back_image.png"),
//             Image.asset("assets/parts_image/chest_image.png"),
//             Image.asset("assets/parts_image/legs_image.png"),
//             Image.asset("assets/parts_image/biceps_image.png"),
//           ],
//           exercises: const [
//             'Abdominais com peso',
//             'Abdominal elevacao',
//             'Abdominal reto + Abdominal militar joelho',
//           ],
//           partName: Parts.abs,
//           setReps: const ['20/3', '15/4', '15/4'],
//         ),
//       ),
//     ];
//     return Expanded(
//       child: SizedBox(
//         width: double.infinity,
//         child: Padding(
//           padding: EdgeInsets.only(
//               bottom: MediaQuery.of(context).size.height * 0.03),
//           child: CarouselSlider(
//             items: partsWidget,
//             options: CarouselOptions(
//               aspectRatio: 9 / 16,
//               viewportFraction: 0.4,
//               initialPage: 3, // voltar para o 0 dps de arrumar imagem Abs
//               enableInfiniteScroll: true,
//               enlargeCenterPage: true,
//               scrollDirection: Axis.horizontal,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//   // fix this and try to do json too

// //   Widget partCarouselSlider(BuildContext context,
// //       {required int i, required Widget partsWidget}) {
// //     return 
// //   }
// }
