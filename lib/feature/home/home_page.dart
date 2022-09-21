import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thebig/feature/home/home_controller.dart';
import 'package:thebig/page/app_routes.dart';

class HomePage extends GetView<HomeController>{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Pengiriman',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black54,
        leading: IconButton(
          onPressed: () => SystemNavigator.pop(),
          icon: const Icon(CupertinoIcons.left_chevron),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: ()async{
          await Future.delayed(const Duration(seconds: 3));
        },
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                height: 50,
                width:Get.width,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1.5, color: Colors.blueAccent),
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 3, 20, 3),
                      width: 200,
                      height: 50,
                      child: const TextField(
                        maxLines: 1,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Cari Pengiriman',
                        ),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                          fixedSize: const Size(105, 50),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                          )
                        ),
                        child: Text(
                          'Pengiriman',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold
                          ),
                        )
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                  width: Get.width,
                  height: Get.height,
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index)=> Container(
                        height: 170,
                        width: Get.width,
                        margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                                child: Row(
                                  children: <Widget>[
                                    const Icon(
                                      CupertinoIcons.circle_fill,
                                      size: 10,
                                      color: Colors.blueAccent,
                                    ),
                                    Text(
                                      'Jakarta (JKT)',
                                      style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      '-',
                                      style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    const Spacer(),
                                    const Icon(
                                      CupertinoIcons.circle_fill,
                                      size: 10,
                                      color: Colors.yellow,
                                    ),
                                    Text(
                                      'Semarang (SMG)',
                                      style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(5, 10, 5, 0),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      'Status : ',
                                      style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                    Text(
                                      'Dalam perjalanan',
                                      style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500,
                                        color: Colors.lightBlueAccent
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(5, 10, 5, 0),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      'Tanggal pengiriman : ',
                                      style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                    Text(
                                      '12/09/2022',
                                      style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      'Jenis Truck : ',
                                      style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                    Text(
                                      '(Type -1)',
                                      style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500,
                                        color: Colors.grey.shade500
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ElevatedButton(
                                  onPressed: ()=> Get.toNamed(Routes.detail),
                                  style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      fixedSize: const Size(160, 25),
                                      backgroundColor: Colors.orange,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10)),
                                  ),
                                  child: Text(
                                    'Detail',
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.bold
                                    ),
                                  )
                              )
                            ],
                          ),
                        ),
                      )
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}