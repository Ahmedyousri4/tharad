import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tharad/core/comeponents/app_input.dart';
import 'package:tharad/view/home/auth/login_page.dart';
import 'package:tharad/view/home/auth/profile_page2.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(bottom: 50),
              child: Container(
                alignment: AlignmentDirectional.center,
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff5CC7A3), Color(0xff265355)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                        start: 20,
                        end: 20,
                        top: 80,
                      ),
                      child: Stack(
                        alignment: AlignmentDirectional.centerEnd,
                        children: [
                          Center(
                            child: Text(
                              "الملف الشخصي",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional.centerEnd,
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginPage(),
                                  ),
                                );
                              },
                              icon: Image.asset("assets/images/Frame 4048.png"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsetsDirectional.only(
                            start: 20,
                            end: 20,
                            top: 32,
                          ),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'اسم المستخدم',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff0D1D1E),
                                ),
                              ),
                              SizedBox(height: 12),
                              AppInput(),
                              SizedBox(height: 12),
                              Text(
                                'البريد الالكتروني',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff0D1D1E),
                                ),
                              ),
                              SizedBox(height: 12),
                              AppInput(),
                              SizedBox(height: 12),
                              Text(
                                'الصورة الشخصية',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff0D1D1E),
                                ),
                              ),
                              SizedBox(height: 12),
                              DottedBorder(
                                color: Color(0xff42867B),
                                strokeWidth: 2,
                                dashPattern: [6, 3],
                                borderType: BorderType.RRect,
                                radius: Radius.circular(12),
                                child: SizedBox(
                                  height: 90,
                                  width: 375,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/icons/camera.svg',
                                      ),
                                      RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text:
                                                  'JPEG , PNG : الملفات المسموح بيها \n',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff998C8C),
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' 5MB : الحد الاقصي ',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff998C8C),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 12),
                              Text(
                                'كلمة المرور القديمة',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff0D1D1E),
                                ),
                              ),
                              SizedBox(height: 12),
                              AppInput(),
                              SizedBox(height: 12),
                              Text(
                                'كلمة المرور الجديدة',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff0D1D1E),
                                ),
                              ),
                              SizedBox(height: 12),
                              AppInput(),
                              SizedBox(height: 12),
                              Text(
                                'تاكيد كلمة المرور الجديدة',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff0D1D1E),
                                ),
                              ),
                              SizedBox(height: 12),
                              AppInput(),
                              SizedBox(height: 54),
                              Container(
                                width: double.infinity,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xff5CC7A3),
                                      Color(0xff265355),
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                  ),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ProfilePage2(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'حفظ التغيرات',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 12),
                              TextButton(
                                onPressed: () {},
                                child: Center(
                                  child: Text(
                                    'تسجيل الخروج',
                                    style: TextStyle(
                                      color: Color(0xffFF1020),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
