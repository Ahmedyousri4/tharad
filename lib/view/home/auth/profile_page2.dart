import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tharad/core/comeponents/app_input.dart';
import 'package:tharad/view/home/auth/login_page.dart';

class ProfilePage2 extends StatelessWidget {
  const ProfilePage2({super.key});

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
                              Container(
                                height: 100,
                                width: 180,
                                padding: EdgeInsetsDirectional.only(
                                  start: 8,
                                  end: 8,
                                  top: 10,
                                  bottom: 10,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xffF4F7F6),
                                ),
                                child: Stack(
                                  children: [
                                    Center(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(6),
                                        child: Image.asset(
                                          'assets/images/profile_photo.jpg',
                                          fit: BoxFit.cover,
                                          width: double.infinity,
                                        ),
                                      ),
                                    ),

                                    Align(
                                      alignment: AlignmentDirectional.topEnd,
                                      child: Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            75,
                                          ),
                                          color: Color(0xff42867B),
                                        ),
                                        child: SvgPicture.asset(
                                          'assets/icons/camera2.svg',
                                          fit: BoxFit.scaleDown,
                                          height: 20,
                                          width: 20,
                                        ),
                                      ),
                                    ),
                                  ],
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
                              AppInput(
                                suffixIcon: 'assets/icons/visibility_off.svg',
                              ),
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
                              AppInput(
                                suffixIcon: 'assets/icons/visibility_off.svg',
                              ),
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
                              AppInput(
                                suffixIcon: 'assets/icons/visibility_off.svg',
                              ),
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
                              GestureDetector(
                                onTap: () {},
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
