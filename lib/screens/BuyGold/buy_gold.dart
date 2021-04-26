import 'package:flutter/material.dart';
import 'package:last_design/screens/BuyGold/payment_screen.dart';


class BuyGold extends StatefulWidget {
  @override
  _BuyGoldState createState() => _BuyGoldState();
}

class _BuyGoldState extends State<BuyGold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF223A5A),
        title: Text("Buy Gold"),
        centerTitle: true,
      ),
      body: Center(
        child: Builder(
          builder: (context) =>
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) {
                        return PaymentScreen();
                      },
                      ),
                      );
                    },
                    child: Card(
                      color: Colors.orangeAccent,
                      elevation: 15,
                      child: Container(
                        height: 250,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Card Payment",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.payment,
                                color: Colors.black,
                                size: 30,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
        ),
      ),
    );
  }
}