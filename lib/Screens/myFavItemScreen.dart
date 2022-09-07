// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../Providers/FavoriteProvider.dart';

// class MyFavItemScreen extends StatefulWidget {
//   const MyFavItemScreen({Key? key}) : super(key: key);

//   @override
//   State<MyFavItemScreen> createState() => _MyFavItemScreenState();
// }

// class _MyFavItemScreenState extends State<MyFavItemScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final favProvider = Provider.of<FavoriteItem>(context);
//     print("Build");
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Fav App"),
//         actions: [
//           InkWell(
//             onTap: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => const MyFavItemScreen()));
//             },
//             child: const Icon(Icons.favorite),
//           ),
//           const SizedBox(
//             width: 20,
//           )
//         ],
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: favProvider.selectValue.length,
//               itemBuilder: ((context, index) {
//                 return Consumer<FavoriteItem>(builder: (context, value, child) {
//                   return ListTile(
//                     onTap: () {
//                       if (value.selectValue.contains(index)) {
//                         value.RemoveItem(index);
//                       } else {
//                         value.AddItem(index);
//                       }
//                     },
//                     title: Text("Item $index"),
//                     trailing: Icon(value.selectValue.contains(index)
//                         ? Icons.favorite
//                         : Icons.favorite_border_outlined),
//                   );
//                 });
//               }),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
