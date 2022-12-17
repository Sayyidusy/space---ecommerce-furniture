// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  late FToast fToast;
  final emailCOntroller = TextEditingController(text:'');
  final passwordController = TextEditingController(text:'');

  bool isShowPasswordError = false;
  bool isrememberMe        = false;
  bool isLoading           = false;



  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhitebgColor,
      body: ListView(
        // ignore: prefer_const_constructors
        padding: EdgeInsets.symmetric(
          horizontal: 25,
        ),
        children: [ 
          title(),
          emailInput(),
          passwordInput(),
          rememberCheckbox(),
          loginButton(),
          Center(
            child: Container(
              margin: EdgeInsets.only(
                top:24,
                ),
              child: Text(
                'OR',
                style: greyTextStyle.copyWith(
                fontSize:16,
                fontWeight: semiBold,
              ),
              ),
            ),
          ),
          loginWithGoogleButton(),
          registerButton(),
        
        ],
        ),
    );
  }

  Widget title(){
    return Container(
      margin: EdgeInsets.only(top: 84),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Masuk Dengan\nAkun Mu',
            style: blackAccentTextStyle.copyWith(
            fontSize: 24,
            fontWeight: bold,
          ),
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                width: 87,
                height: 4,
                margin: EdgeInsets.only(right: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: kBlackAccentColor,
                ),
              ),
              Container(
                width: 10,
                height: 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: kBlackAccentColor,
                ),
              ),
            ],
          ),
      ],
      ),
    );
  }

  Widget emailInput(){
    return Container(
      margin: EdgeInsets.only(
        top: 48
        ),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius:BorderRadius.circular(14),
        ),
        child: TextFormField(
          controller: emailCOntroller,
          decoration: InputDecoration.collapsed(
            hintText: 'Email',
            hintStyle: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
            ),
        ),
    );
  }

  Widget passwordInput(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 32,
            ),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius:BorderRadius.circular(14),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration.collapsed(
                      hintText: 'Password',
                      hintStyle: greyTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                      ),
                  ),
                ),
                Icon(Icons.visibility_outlined,
                color: kGreyColor,
                ),
              ],
            ),
        ),
        if(isShowPasswordError) 
        
        Container(
          margin: EdgeInsets.only(top:8),
          child: Text('Password salah',
          style: redTextStyle.copyWith(
            fontSize: 14,
            fontWeight: regular,
          ),
          ),
        ),
      ],
    );
  }

  Widget rememberCheckbox(){
    return Container(
      margin: EdgeInsets.only(
        top:32
        ),
        child: Row(
          children: [
           SizedBox(
            width: 20,
            height: 20,
             child: Checkbox(
              value: isrememberMe, 
              onChanged: (value){
                setState(() {
                  isrememberMe = value!;
                });
              },
             shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                4,
                ),
                ), 
             ),
           ), 
           SizedBox(
            width: 12,
           ),
           Text(
            'Remmember me',
           ),
        ],
        ),
    );
  }

  Widget loginButton(){

    return Container(
      height: 56,
      width: double.infinity,
      margin: EdgeInsets.only(top: 32),
      child: TextButton(
        onPressed: (){
          setState(() {
            isLoading = true;
          });

          Future.delayed(Duration(seconds: 2),(){
            setState(() {
              isLoading = false;
            if(passwordController.text != '123123'){
              setState(() {
                isShowPasswordError = true;
              });
              fToast.showToast(
              child: errorToast(),
              toastDuration: Duration(
                seconds: 2
                ),
                gravity: ToastGravity.TOP,
                );
            }else{
              Navigator.pushNamed(context, '/home');
            }
            });
          });

        },
        style: TextButton.styleFrom(
          backgroundColor: kBluebuttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14,
            ),
          ),
        ),
        child: isLoading ? CircularProgressIndicator(
          color: kWhiteColor,
          backgroundColor: kGreyColor,
        ) : Text(
          'Login',
          style: whiteTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }

   Widget loginWithGoogleButton(){

    return Container(
      height: 56,
      width: double.infinity,
      margin: EdgeInsets.only(
        top:21,
        ),
      child: TextButton(
        onPressed: (){},
        child: Text(
          'Login with Google',
          style: blackAccentTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }

  Widget registerButton(){
    
    return Container(
      height: 48,
      width: double.infinity,
     
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Belum punya akun?",
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
          ),
          SizedBox(
            width: 1,
            ),
          TextButton(
          onPressed: (){
            Navigator.pushNamed(context, '/register');
          },
           child: Text(
            'Register',
           style: blueTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
           ),
           ),
           ),
        ],
      ),
    );
  }

  Widget errorToast(){
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: kRedColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text('Password Salah',
      style: whiteTextStyle.copyWith(
        fontSize: 16,
        fontWeight: semiBold,
      ),
      ),
    );
  }
}