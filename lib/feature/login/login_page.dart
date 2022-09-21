import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thebig/feature/login/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Masuk Akun',
          style: GoogleFonts.roboto(),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black54,
        leading: Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade200),
          child: IconButton(
            onPressed: () => SystemNavigator.pop(),
            icon: const Icon(CupertinoIcons.left_chevron),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Form(
                key: controller.formkeyLogin,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                      child: Text(
                        'Email/No.Handphone*',
                        style: GoogleFonts.roboto(fontSize: 16),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: controller.edtEmail,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.all(8),
                            hintText: 'Tulis Email/No.Handphone',
                            hintStyle: TextStyle(color: Colors.grey.shade500)),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Email is wrong';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                      child: Text(
                        'Kata Sandi*',
                        style: GoogleFonts.roboto(fontSize: 16),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: TextFormField(
                        obscureText: true,
                        controller: controller.edtPassword,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.all(8),
                            hintText: 'Isi kata sandi anda',
                            hintStyle: TextStyle(color: Colors.grey.shade500)),
                        validator: (value) {
                          if (value!.isEmpty || value.length < 6) {
                            return 'Password is wrong';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                  ],
                )),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.only(right: 20, top: 10),
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Lupa kata sandi?',
                    style: GoogleFonts.actor(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  )),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.only(right: 20, left: 20, top: 10),
              child: ElevatedButton(
                onPressed: () => controller.validator(),
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(Get.width, 50),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Text(
                  'Masuk',
                  style: GoogleFonts.actor(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
