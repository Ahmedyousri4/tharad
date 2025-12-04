import 'package:flutter/material.dart';
import 'package:tharad/core/comeponents/app_input.dart';
import 'package:tharad/view/home/auth/create_account.dart';
import 'package:tharad/view/home/auth/otp.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Padding(
            padding: const EdgeInsetsDirectional.only(
              top: 120,
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
                  SizedBox(height: 100),
                  Align(
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      'تسجيل دخول',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff0D1D1E),
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'البريد الإلكتروني',
                    style: TextStyle(
                      color: Color(0xff0D1D1E),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 12),
                  AppInput(),
                  SizedBox(height: 12),
                  Text(
                    'كلمة المرور',
                    style: TextStyle(
                      color: Color(0xff0D1D1E),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 12),
                  AppInput(suffixIcon: 'assets/icons/visibility_off.svg'),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (value) {}),
                      Text(
                        'تذكرني',
                        style: TextStyle(
                          color: Color(0xff0D1D1E),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'نسيت كلمة المرور؟',
                          style: TextStyle(
                            color: Color(0xff42867B),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Otp()),
                        );
                      },
                      child: Text(
                        'تسجيل الدخول',
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
                        'ليس لديك حساب؟',
                        style: TextStyle(
                          color: Color(0xff0D1D1E),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CreateAccount(),
                            ),
                          );
                        },
                        child: Text(
                          'انشاء حساب جديد',
                          style: TextStyle(
                            color: Color(0xff42867B),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
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
