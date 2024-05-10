import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUPScreen extends StatefulWidget {
  final VoidCallback show;
  const SignUPScreen({super.key, required this.show});

  @override
  State<SignUPScreen> createState() => _SignUPScreenState();
}

class _SignUPScreenState extends State<SignUPScreen> {
  FocusNode _focusNode1 = FocusNode();
  FocusNode _focusNode2 = FocusNode();
  FocusNode _focusNode4 = FocusNode();
  final email = TextEditingController(text: 'a.nodirrrd@gmail.com');
  final password = TextEditingController(text: '12345678');
  final name = TextEditingController(text: 'airezarrr');
  FocusNode _focusNode3 = FocusNode();
  final Confirmpassword = TextEditingController(text: '12345678');
  bool visibil = true;
  @override
  void initState() {
    super.initState();
    // _focusNode1.addListener(() {
    //   setState(() {});
    // });
    // _focusNode2.addListener(() {
    //   setState(() {});
    // });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    email.dispose();
    password.dispose();
    _focusNode1.dispose();
    _focusNode2.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Column(
          children: [
            logo(),
            textfild(),
            SizedBox(height: 15.h),
            textfild1(),
            SizedBox(height: 15.w),
            textfild2(),
            SizedBox(height: 15.w),
            textfild3(),
            SizedBox(height: 8.h),
            have(),
            SizedBox(height: 20.h),
            signIN(),
            SizedBox(height: 15.h),
            or(),
            SizedBox(height: 15.h),
            WithGoogle(),
            SizedBox(height: 10.h),
            WithApple(),
          ],
        ),
      ),
    );
  }

  Row or() {
    return Row(
      children: [
        Expanded(
            child: Divider(
          thickness: 1.5.w,
          endIndent: 4,
          indent: 20,
        )),
        Text(
          "OR",
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 14,
          ),
        ),
        Expanded(
            child: Divider(
          thickness: 1.5.w,
          endIndent: 20,
          indent: 4,
        ))
      ],
    );
  }

  Padding signIN() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 50.h,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Text(
            'Sign In',
            style: TextStyle(
              color: Colors.white,
              fontSize: 23.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Padding WithGoogle() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 50.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: ListTile(
          leading: Padding(
            padding: EdgeInsets.only(bottom: 5.h),
            child: Image.asset(
              'images/google.png',
              height: 30.h,
            ),
          ),
          title: Padding(
            padding: EdgeInsets.only(bottom: 5.h),
            child: Text(
              'Continue with Google',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          trailing: Padding(
            padding: EdgeInsets.only(bottom: 5.h),
            child: const Icon(
              Icons.arrow_right,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  Padding WithApple() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 50.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: ListTile(
          leading: Padding(
              padding: EdgeInsets.only(bottom: 5.h),
              child: const Icon(
                Icons.apple,
                color: Colors.black,
              )),
          title: Padding(
            padding: EdgeInsets.only(bottom: 5.h),
            child: Text(
              'Continue with Apple',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400),
            ),
          ),
          trailing: Padding(
            padding: EdgeInsets.only(bottom: 5.h),
            child: const Icon(
              Icons.arrow_right,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  Padding have() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "Already have an account?  ",
            style: TextStyle(color: Colors.grey[700], fontSize: 14.sp),
          ),
          GestureDetector(
            onTap: widget.show,
            child: Text(
              "Login",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Padding textfild() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: TextField(
          style: TextStyle(fontSize: 18.sp, color: Colors.black),
          controller: email,
          focusNode: _focusNode1,
          decoration: InputDecoration(
            hintText: 'Email',
            prefixIcon: Icon(
              Icons.email,
              color: _focusNode1.hasFocus ? Colors.black : Colors.grey[600],
            ),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(
                color: Color(0xffc5c5c5),
                width: 2.w,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(
                width: 2.w,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding textfild1() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: TextField(
          style: TextStyle(fontSize: 18.sp, color: Colors.black),
          controller: name,
          focusNode: _focusNode4,
          decoration: InputDecoration(
            hintText: 'Name',
            prefixIcon: Icon(
              Icons.email,
              color: _focusNode4.hasFocus ? Colors.black : Colors.grey[600],
            ),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(
                color: Color(0xffc5c5c5),
                width: 2.w,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(
                width: 2.w,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding textfild2() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: TextField(
          style: TextStyle(fontSize: 18.sp, color: Colors.black),
          controller: password,
          focusNode: _focusNode2,
          obscureText: visibil,
          obscuringCharacter: '*',
          decoration: InputDecoration(
            suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    visibil = !visibil;
                  });
                },
                child: Icon(
                  visibil ? Icons.visibility_off : Icons.visibility,
                  color: _focusNode2.hasFocus ? Colors.black : Colors.grey[600],
                )),
            hintText: 'Password',
            prefixIcon: Icon(
              Icons.key,
              color: _focusNode2.hasFocus ? Colors.black : Colors.grey[600],
            ),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(
                color: const Color(0xffc5c5c5),
                width: 2.w,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(
                width: 2.w,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding textfild3() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: TextField(
          style: TextStyle(fontSize: 18.sp, color: Colors.black),
          controller: Confirmpassword,
          focusNode: _focusNode3,
          obscureText: visibil,
          obscuringCharacter: '*',
          decoration: InputDecoration(
            hintText: 'Confirmpassword',
            prefixIcon: Icon(
              Icons.key,
              color: _focusNode2.hasFocus ? Colors.black : Colors.grey[600],
            ),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(
                color: const Color(0xffc5c5c5),
                width: 2.w,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(
                width: 2.w,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding logo() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 90.w),
      child: Image.asset('images/nikee.png'),
    );
  }
}

Future<void> _dialogBuilder(BuildContext context, String message) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          'Error',
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w900),
        ),
        content: Text(message, style: TextStyle(fontSize: 17.sp)),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
