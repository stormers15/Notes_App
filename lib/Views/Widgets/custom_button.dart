import 'package:flutter/material.dart';
import 'package:notes_app/constans.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.isloading = false});
  
  final void Function()? onTap;
  final bool isloading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: kprimarycolor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
            child: isloading
                ? const SizedBox(
                    height: 30,
                    width: 30,
                    child: CircularProgressIndicator(
                      color: Colors.black,
                    ),
                  )
                : const Text(
                    'Add',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  )),
      ),
    );
  }
}
