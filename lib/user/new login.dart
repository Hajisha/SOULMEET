import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../provider/loginprovider.dart';

class newlogin extends StatelessWidget {
  const newlogin({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [Container(
              height: height,
                width: width,
                child: Image.asset("assets/login imageee.png",)

            ),
              Consumer<LoginProvider>(
                  builder: (context,value,child) {
                    return TextField(
                      controller: value.Loginphnnumber,
                      keyboardType: TextInputType.number,
                      inputFormatters: [LengthLimitingTextInputFormatter(10)],
                      decoration: InputDecoration(
                        hintText: "phone number",
                        prefixIcon: Icon(Icons.phone),
                      ),
                    );
                  }
              ),
            ]
          ),
        ],
      ),

    );
  }
}
