import 'package:flutter/material.dart';
import 'package:jr_notes/constants.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  bgImage,
                  fit: BoxFit.fill,
                ),
                Positioned(
                  top: 80,
                  left: 125,
                  right: 125,
                  child: Image.asset(logoImage),
                ),
                Positioned(
                  bottom: 200,
                  left: 50,
                  right: 50,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        text: "Get Started \n",
                        style: TextStyle(
                          color: Color(0xFF898989),
                          fontSize: 8,
                        ),
                        children: [
                          TextSpan(
                            text: "With \n",
                          ),
                          TextSpan(
                            text: "JR. ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffFE810F),
                            ),
                          ),
                          TextSpan(
                            text: "Notes",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff00C2FF),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 110,
                  left: 50,
                  right: 50,
                  child: _inkwell(
                    size,
                    onTap: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    buttonText: "Get Started",
                    containerColor: const Color(0xffFF7A00),
                    textColor: Colors.white,
                  ),
                ),
                Positioned(
                  bottom: 50,
                  left: 50,
                  right: 50,
                  child: _inkwell(size, onTap: () {
                    Navigator.pushNamed(context, '/login');
                  }, buttonText: "Login"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  InkWell _inkwell(Size size,
      {String? buttonText,
      Function()? onTap,
      Color? containerColor,
      Color? textColor}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        width: size.width - 20,
        clipBehavior: Clip.antiAlias,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xffFF7A00),
          ),
          borderRadius: BorderRadius.circular(10),
          color: containerColor,
        ),
        child: FittedBox(
          alignment: Alignment.center,
          child: Text(
            buttonText!,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
