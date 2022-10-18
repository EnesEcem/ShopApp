import 'package:flutter/material.dart';
import 'package:shop_app/costants.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: outlineInputBorder,
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          prefixIcon: Image.asset("assets/icons/Search.png"),
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: dPadding,
              vertical: dPadding / 2,
            ),
            child: SizedBox(
              height: 45,
              width: 45,
              child: ElevatedButton(
                child: Image.asset("assets/icons/Filter.png"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(dBorderRadius),
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ),
      ),
    );
  }
}

var outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(dBorderRadius),
  borderSide: BorderSide.none,
);
