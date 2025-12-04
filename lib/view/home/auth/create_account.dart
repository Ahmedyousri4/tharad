import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tharad/core/comeponents/app_input.dart';
import 'package:tharad/view/home/auth/login_page.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Padding(
            padding: const EdgeInsetsDirectional.only(
              top: 80,
              start: 20,
              end: 20,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 60,
                      width: 178,
                      child: Image.asset('assets/images/tharad_logo.png'),
                    ),
                  ),
                  SizedBox(height: 40),
                  Align(
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      'إنشاء حساب جديد',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff0D1D1E),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'الصورة الشخصية',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
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
                    child: Container(
                      height: 90,
                      width: 375,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/icons/camera.svg'),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'JPEG , PNG : الملفات المسموح بيها \n',
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
                    'اسم المستخدم',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff0D1D1E),
                    ),
                  ),
                  SizedBox(height: 12),
                  AppInput(),
                  SizedBox(height: 12),
                  Text(
                    'البريد الإلكتروني',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff0D1D1E),
                    ),
                  ),
                  SizedBox(height: 12),
                  AppInput(),
                  SizedBox(height: 12),
                  Text(
                    'كلمة المرور',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff0D1D1E),
                    ),
                  ),
                  SizedBox(height: 12),
                  AppInput(suffixIcon: 'assets/icons/visibility_off.svg'),
                  SizedBox(height: 12),
                  Text(
                    'تاكيد كلمة المرور',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff0D1D1E),
                    ),
                  ),
                  SizedBox(height: 12),
                  AppInput(suffixIcon: 'assets/icons/visibility_off.svg'),
                  SizedBox(height: 40),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(
                        colors: [Color(0xff5CC7A3), Color(0xff265355)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'انشاء حساب جديد',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'لديك حساب؟',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff0D1D1E),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ), 
                          );
                        },
                        child: Text(
                          'تسجيل دخول',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff42867B),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
