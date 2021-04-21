import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:last_design/widgets/text_bar.dart';

class RequestMoney extends StatelessWidget {
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
                          height: MediaQuery.of(context).size.height*0.05,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFFFB711),
                            borderRadius: BorderRadius.circular(13.0),
                          ),

                          child: Center(
                            child: Text(
                              "Request Money",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text("No cost when requesting money from friends and "
                            "family online with Finafex, making it easier than "
                            "ever to get paid back.",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.height*0.5,
                            child: SearchBar(),
                        ),
                        Wrap(
                          spacing: 20,
                          runSpacing: 20.0,
                          children: <Widget>[
                            SelectAmount(
                              amountNum: 10,
                              selectedNum: true,
                              press: (){},
                            ),
                            SelectAmount(
                              amountNum: 20,
                              press: (){},
                            ),
                            SelectAmount(
                              amountNum: 30,
                              press: (){},
                            ),
                            SelectAmount(
                              amountNum: 50,
                              press: (){},
                            ),
                            SelectAmount(
                              amountNum: 100,
                              press: (){},
                            ),
                            SelectAmount(
                              amountNum: 200,
                              press: (){},
                            ),
                          ],
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

class SelectAmount extends StatelessWidget {
  final int amountNum;
  final bool selectedNum;
  final Function press;

  const SelectAmount({
    Key key,
    this.amountNum,
    this.selectedNum = false,
    this.press
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint){
        return ClipRRect(
          borderRadius: BorderRadius.circular(13.0),
          child: Container(
            width: constraint.maxWidth/2 - 10,
            // padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0,17),
                  blurRadius: 23,
                  spreadRadius: -13,
                  color: Colors.grey,
                )
              ] ,
              color: Colors.white,
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: press,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 42,
                        width: 43,
                        decoration: BoxDecoration(
                          color: selectedNum ? Colors.black : Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black),
                        ),
                        child: Icon(
                          Icons.attach_money,
                          color: selectedNum ? Colors.white : Colors.black,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "RM $amountNum",
                        style: Theme.of(context).textTheme.subtitle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}