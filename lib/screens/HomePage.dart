import 'dart:ui';

import 'package:flutter/material.dart';

import '../resources/color_manager.dart';
import '../resources/styles_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var list = [{'S.n.':"1",'Name':"Sinamagal tube well",'Address':"sinamagal",'Working Status':"Not Operating"},
      {'S.n.':"2",'Name':"Sinamagal tube well",'Address':"sinamagal",'Working Status':"Operating"},{'S.n.':"3",'Name':"Sinamagal tube well",'Address':"sinamagal",'Working Status':"Operating"},
      {'S.n.':"4",'Name':"Sinamagal tube well",'Address':"sinamagal",'Working Status':"Operating"}];
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30.0,
                          child: Container(
                            clipBehavior: Clip.antiAlias,
                            decoration:
                                const BoxDecoration(shape: BoxShape.circle),
                            child: Image.asset(
                              "assets/images/ic_profile.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Operator",
                              style: getRegularStyle(
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              "Sita Nepali",
                              style: getMediumStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                    customNotificationIcon()
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        'Table List',
                        style: getRegularStyle(color: Colors.black),
                      ),
                    ),
                    Table(
                        border: TableBorder(
                            top: BorderSide(color: Colors.black12, width: 0.5),
                            right: BorderSide(color: Colors.black12, width: 0.5),
                            bottom: BorderSide(color: Colors.black12, width: 0.5),
                            left: BorderSide(color: Colors.black12, width: 0.5)
                        ),
                        columnWidths: Map.from({
                          0: FixedColumnWidth(35.0),
                          1: FixedColumnWidth(130.0),
                          2: FixedColumnWidth(80.0),
                          3: FixedColumnWidth(120.0),
                        }),
                        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                        children: <TableRow>[
                          TableRow(
                            children:  [
                              Container( padding:EdgeInsets.symmetric(vertical: 2.0,),
                              child:Text("S.n.",style: getMiniBoldStyle(color: Colors.black),textAlign: TextAlign.center,),),
                              Text("Name",style: getMiniBoldStyle(color: Colors.black),textAlign: TextAlign.center,),Text("Address",style: getMiniBoldStyle(color: Colors.black),textAlign: TextAlign.center,),
                              Text("Working Status",style: getMiniBoldStyle(color: Colors.black),textAlign: TextAlign.center,),
                            ],
                          ),
                                for(var item in list )
                                  TableRow(children: [
                                  Container( padding:EdgeInsets.symmetric(horizontal: 10.0,vertical: 2.0,),child: Text(item["S.n."]!,style: getRegularStyle(color: Colors.black),textAlign: TextAlign.center,)),
                                  Text(item["Name"]!,style: getRegularStyle(color: Colors.black),textAlign: TextAlign.center,),
                                  Text(item["Address"]!,style: getRegularStyle(color: Colors.black,),textAlign: TextAlign.center,),
                                  if(item["Working Status"]=="Not Operating")
                                    MaterialButton(
                                      onPressed: () { },
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                      padding: const EdgeInsets.all(0.0),
                                      child: Ink(
                                        decoration: const BoxDecoration(
                                          gradient: RadialGradient(
                                            center: Alignment(2.0, 2.0),
                                            colors: <Color>[
                                              Colors.white,
                                              Colors.red,
                                            ],
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 5.0),
                                          constraints: const BoxConstraints(minWidth: 50.0, minHeight: 20.0), // min sizes for Material buttons
                                          child: Text(
                                            'Not Operating',
                                            style: getRegularStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    )
                                  else
                                    MaterialButton(
                                      onPressed: () { },
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                      padding: const EdgeInsets.all(0.0),
                                      child: Ink(
                                        decoration: const BoxDecoration(
                                          gradient: RadialGradient(
                                            center: Alignment(2.0, 2.0),
                                                    colors: <Color>[
                                                      Colors.white24,
                                                    Colors.white,
                                                    Colors.green,

                                                    ],
                                                    ),
                                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
                                          constraints: const BoxConstraints(minWidth: 50.0, minHeight: 20.0), // min sizes for Material buttons
                                          child: Text(
                                            'Operating',
                                            style: getRegularStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                ])]
                          ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Table(
                        border: TableBorder(
                            top: BorderSide(color: Colors.black12, width: 0.5),
                            right: BorderSide(color: Colors.black12, width: 0.5),
                            bottom: BorderSide(color: Colors.black12, width: 0.5),
                            left: BorderSide(color: Colors.black12, width: 0.5)
                        ),
                        columnWidths: Map.from({
                          0: FixedColumnWidth(35.0),
                          1: FixedColumnWidth(130.0),
                          2: FixedColumnWidth(80.0),
                          3: FixedColumnWidth(120.0),
                        }),
                        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                        children: <TableRow>[
                          for(var item in list )
                            TableRow(children: [
                              Text(item["S.n."]!,style: getRegularStyle(color: Colors.black),textAlign: TextAlign.center,),
                              Text(item["Name"]!,style: getRegularStyle(color: Colors.black),textAlign: TextAlign.center,),
                              Text(item["Address"]!,style: getRegularStyle(color: Colors.black,),textAlign: TextAlign.center,),
                              if(item["Working Status"]=="Not Operating")
                                MaterialButton(
                                  onPressed: () { },
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                  padding: const EdgeInsets.all(0.0),
                                  child: Ink(
                                    decoration: const BoxDecoration(
                                      gradient: RadialGradient(
                                        center: Alignment(2.0, 2.0),
                                        colors: <Color>[
                                          Colors.white,
                                          Colors.red,
                                        ],
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 5.0),
                                      constraints: const BoxConstraints(minWidth: 50.0, minHeight: 20.0), // min sizes for Material buttons
                                      child: Text(
                                        'Not Operating',
                                        style: getRegularStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                )
                              else
                                MaterialButton(
                                  onPressed: () { },
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                  padding: const EdgeInsets.all(0.0),
                                  child: Ink(
                                    decoration: const BoxDecoration(
                                      gradient: RadialGradient(
                                        center: Alignment(2.0, 2.0),
                                        colors: <Color>[
                                          Colors.white24,
                                          Colors.white,
                                          Colors.green,

                                        ],
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
                                      constraints: const BoxConstraints(minWidth: 50.0, minHeight: 18.0), // min sizes for Material buttons
                                      child: Text(
                                        'Operating',
                                        style: getRegularStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                )
                            ])]
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Table(
                        border: TableBorder(
                            top: BorderSide(color: Colors.black12, width: 0.5),
                            right: BorderSide(color: Colors.black12, width: 0.5),
                            bottom: BorderSide(color: Colors.black12, width: 0.5),
                            left: BorderSide(color: Colors.black12, width: 0.5)
                        ),
                        columnWidths: Map.from({
                          0: FixedColumnWidth(35.0),
                          1: FixedColumnWidth(130.0),
                          2: FixedColumnWidth(80.0),
                          3: FixedColumnWidth(120.0),
                        }),
                        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                        children: <TableRow>[
                          for(var item in list )
                            TableRow(children: [
                             Text(item["S.n."]!,style: getRegularStyle(color: Colors.black),textAlign: TextAlign.center,),
                              Text(item["Name"]!,style: getRegularStyle(color: Colors.black),textAlign: TextAlign.center,),
                              Text(item["Address"]!,style: getRegularStyle(color: Colors.black,),textAlign: TextAlign.center,),
                              if(item["Working Status"]=="Not Operating")
                                MaterialButton(
                                  onPressed: () { },
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                  padding: const EdgeInsets.all(0.0),
                                  child: Ink(
                                    decoration: const BoxDecoration(
                                      gradient: RadialGradient(
                                        center: Alignment(2.0, 2.0),
                                        colors: <Color>[
                                          Colors.white,
                                          Colors.red,
                                        ],
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 5.0),
                                      constraints: const BoxConstraints(minWidth: 50.0, minHeight: 18.0), // min sizes for Material buttons
                                      child: Text(
                                        'Not Operating',
                                        style: getRegularStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                )
                              else
                                MaterialButton(
                                  onPressed: () { },
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                  padding: const EdgeInsets.all(0.0),
                                  child: Ink(
                                    decoration: const BoxDecoration(
                                      gradient: RadialGradient(
                                        center: Alignment(2.0, 2.0),
                                        colors: <Color>[
                                          Colors.white24,
                                          Colors.white,
                                          Colors.green,

                                        ],
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
                                      constraints: const BoxConstraints(minWidth: 50.0, minHeight: 18.0), // min sizes for Material buttons
                                      child: Text(
                                        'Operating',
                                        style: getRegularStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                )
                            ])]
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0,),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    onPressed: () { },
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    padding: const EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                        gradient: RadialGradient(
                          center: Alignment(2.0, 2.0),
                          colors: <Color>[
                            ColorManager.white,
                            ColorManager.primaryOpacity70,
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
                        constraints: const BoxConstraints(minWidth: 50.0, minHeight: 10.0), // min sizes for Material buttons
                        child: Text(
                          'Explore Here',
                          style: getButtonRegularStyle(color: Colors.white54),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
Widget customNotificationIcon() {
  return SizedBox(
    width: 45,
    height: 45,
    child: Stack(
      children: [
        IconButton(
          icon: ImageIcon(
            AssetImage("assets/images/ic_notifications.png"),
            size: 30,
            color: ColorManager.primaryOpacity70,
          ),
          onPressed: () {},
        ),
        Container(
          width: 30,
          height: 30,
          alignment: Alignment.topRight,
          margin: EdgeInsets.only(left: 25.0),
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ColorManager.primaryOpacity70,
                border: Border.all(color: Colors.white, width: 1)),
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Center(
                child: Text(
                  "2",
                  style: getIconRegularStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
