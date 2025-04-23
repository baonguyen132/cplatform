// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';
//
// class ItemLap5 extends StatefulWidget {
//   AudioPlayer audioPlayer ;
//   int noteIndex ;
//   Color color ;
//   ItemLap5({super.key , required this.audioPlayer , required this.noteIndex , required this.color});
//
//   @override
//   State<ItemLap5> createState() => _ItemLap5State();
// }
//
// class _ItemLap5State extends State<ItemLap5> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: InkWell(
//         onTap: () {
//           playSound() ;
//         },
//         child: Container(
//           height: 30,
//           color: widget.color,
//         ),
//       ),
//     );
//   }
//
//   void playSound() async {
//     await widget.audioPlayer.play(AssetSource('note${widget.noteIndex}.wav'));
//   }
// }
