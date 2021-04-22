import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height*0.4,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.15,
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            "Transaction History",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black, // background
                          onPrimary: Colors.yellow, // foreground
                        ),
                        onPressed: () { },
                        child: Center(child: Text('Email Transaction')),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.height*0.5,
                          ),
                      SizedBox(height: 10),
                      Text("OTHERS",
                        style: Theme.of(context)
                            .textTheme
                            .title
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        padding: EdgeInsets.all(10),
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 17),
                              blurRadius: 23,
                              spreadRadius: -13,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        child: Row(
                          children: <Widget> [
                            Image.asset('assets/images/wallet_logo.png'),
                            SizedBox(width: 20),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Buy Gold",
                                    style: Theme.of(context).textTheme.subtitle1,
                                  ),
                                  Text("Buy Finafex Pay Gold based on gold rate"),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(10.0),
                              child: Icon(Icons.arrow_forward_ios),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
