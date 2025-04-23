//
// import 'package:audioplayers/audioplayers.dart';
// import 'package:cplatform/Lap/Lap5/ItemLap.dart';
// import 'package:cplatform/Lap/Lap5/ItemModal.dart';
// import 'package:flutter/material.dart';
// // Vao main sua home: Lap5()
//
// class Lap5 extends StatefulWidget {
//   const Lap5({super.key});
//
//   @override
//   State<Lap5> createState() => _Lap5State();
// }
//
// class _Lap5State extends State<Lap5> {
//   final player = AudioPlayer();
//
//   List<ItemModal> list = [
//     ItemModal(noteIndex: 1, color: Colors.red),
//     ItemModal(noteIndex: 2, color: Colors.orange),
//     ItemModal(noteIndex: 3, color: Colors.yellow),
//     ItemModal(noteIndex: 4, color: Colors.green),
//     ItemModal(noteIndex: 5, color: Colors.cyan),
//     ItemModal(noteIndex: 6, color: Colors.blue),
//     ItemModal(noteIndex: 7, color: Colors.purple),
//
//   ] ;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Column(
//           children: list.map((e) => ItemLap5(audioPlayer: player, noteIndex: e.noteIndex, color: e.color)).toList(),
//         ),
//       )
//     );
//   }
//
//
//
// }
