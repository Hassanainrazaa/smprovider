// // ignore: file_names
// //import 'dart:async';

// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:provider/provider.dart';
// import 'package:providers/Providers/AddItemProvider.dart';

// import '../Providers/FavoriteProvider.dart';

// class ToDoUi extends StatefulWidget {
//   const ToDoUi({Key? key}) : super(key: key);

//   @override
//   State<ToDoUi> createState() => _ToDoUiState();
// }

// class _ToDoUiState extends State<ToDoUi> {
//   //DateTime? t1 = DateTime.now();

//   //String actualDate = formatDate.format(now);
//   // @override
//   // void initState() {
//   //   // TODO: implement initState
//   //   super.initState();
//   //   setState(() {});
//   // }
//   @override
//   void initState() {
//     //DateTime? t1 = DateTime.now();
//     //final datetimeProvider = Provider.of<FavoriteItem>(context, listen: false);
//     // TODO: implement initState
//     super.initState();
//     print("Build");
//     final datetimeProvider = Provider.of<FavoriteItem>(context, listen: false);

//     Timer.periodic(const Duration(seconds: 1), (Timer t) {
//       print("init State");
//       DateTime t1 = DateTime.now();
//       final Datestr = DateFormat("hh:mm:ss").format(t1);
//       //formatedDate2 =
//       //convertDate = formatedDate
//       //datetimeProvider.setDateTime();
//       datetimeProvider.setTime(Datestr);
//       print(t1);
//       //print("Formated Date $formatedDate");
//     });
//     //datetimeProvider.setDateTime(now1);
//   }

//   @override
//   Widget build(BuildContext context) {
//     print("Build main");
//     final additemprovider = Provider.of<AddItemProvider>(context);
//     //final datetimeProvider = Provider.of<FavoriteItem>(context);
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: const Color.fromARGB(255, 1, 87, 155),
//         body: SingleChildScrollView(
//           child: Container(
//             margin: const EdgeInsets.only(top: 30),
//             //color: Colors.purple,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 const SizedBox(
//                     // height: 60,
//                     ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Consumer<FavoriteItem>(
//                       builder: (BuildContext context, value, child) {
//                         print("upadate the second");
//                         print(value.GetDateTime.toString());
//                         //print(t1);
//                         return Container(
//                           margin: const EdgeInsets.only(top: 40),
//                           //width: 500,
//                           height: 100,
//                           child: Text(
//                             value.GetDateTime.toString(),
//                             style: const TextStyle(
//                                 fontSize: 50,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         );
//                       },
//                     ),
//                   ],
//                 ),
//                 Container(
//                   height: 580.5,
//                   decoration: const BoxDecoration(
//                       color: Colors.black,
//                       borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(30),
//                           topRight: Radius.circular(30))),
//                   child: Consumer<AddItemProvider>(
//                     builder: (BuildContext context, todo, child) {
//                       return ListView.builder(
//                           itemCount: todo.TaskList.length,
//                           itemBuilder: ((context, index) {
//                             return ListTile(
//                               title: Text(
//                                 todo.TaskList[index].title,
//                                 style: const TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                               subtitle: Text(
//                                 todo.TaskList[index].detail,
//                                 style: const TextStyle(color: Colors.white),
//                               ),
//                               trailing: IconButton(
//                                   onPressed: () {
//                                     todo.removeItem(index);
//                                     // Provider.of<AddItemProvider>(context,
//                                     //         listen: false)
// //                                        .removeItem(index);
//                                   },
//                                   icon: const Icon(
//                                     Icons.check_circle,
//                                     color: Colors.greenAccent,
//                                   )),
//                             );
//                           }));
//                     },
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           backgroundColor: Colors.blue,
//           onPressed: () {
//             Provider.of<AddItemProvider>(context, listen: false)
//                 .addTasktoList();
//           },
//           child: const Icon(Icons.add),
//         ),
//       ),
//     );
//   }
// }
