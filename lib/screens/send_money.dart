import 'package:flutter/material.dart';
import 'request_money.dart';
import 'package:last_design/widgets/text_bar.dart';

class SendMoney extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Send Money'),
        backgroundColor: Color(0xFF223A5A),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            //This Container will remains constant
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
              color: Color(0xFFFFB711),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Wrap(
                  spacing: 15,
                  runSpacing: 20.0,
                  children: <Widget>[
                    SearchBar(),
                    SelectAmounts(
                      amountNum: 10,
                      selectedNum: true,
                      press: () {},
                    ),
                    SelectAmounts(
                      amountNum: 20,
                      press: () {},
                    ),
                    SelectAmounts(
                      amountNum: 30,
                      press: () {},
                    ),
                    SelectAmounts(
                      amountNum: 50,
                      press: () {},
                    ),
                    SelectAmounts(
                      amountNum: 100,
                      press: () {},
                    ),
                    SelectAmounts(
                      amountNum: 200,
                      press: () {},
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 1.0,
                child: Text(
                  'OTHERS',
                  style: Theme.of(context)
                      .textTheme
                      .title
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                //This is Scrollable Container
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    PromoSection(
                      image: 'assets/images/wallet_logo.png',
                      promoTitle: 'Buy Gold',
                      promoDesc: 'Buy Malakat Pay Gold based on gold rate',
                    ),
                    PromoSection(
                      image: 'assets/images/superman.png',
                      promoTitle: 'Buy Superman Gold',
                      promoDesc:
                          'Buy Malakat Pay Superman Gold version based on gold rate',
                    ),
                    PromoSection(
                      image: 'assets/images/sitinurhaliza.png',
                      promoTitle: 'Buy Gift Card',
                      promoDesc: 'Buy Malakat Pay Gift Card based on gold rate',
                    ),
                    PromoSection(
                      image: 'assets/images/jett_icon.png',
                      promoTitle: 'Buy Valorant Points',
                      promoDesc: 'Buy Valorant Points via Finafex Pay',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SelectAmounts extends StatelessWidget {
  final int amountNum;
  final bool selectedNum;
  final Function press;

  const SelectAmounts(
      {Key key, this.amountNum, this.selectedNum = false, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Expanded(
        child: Container(
          width: constraint.maxWidth / 3 - 10,
          // padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: Colors.grey,
              )
            ],
            color: Colors.white,
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: press,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 40,
                      width: 30,
                      decoration: BoxDecoration(
                        color: selectedNum ? Color(0xFF223A5A) : Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: Color(0xFF223A5A)),
                      ),
                      child: Icon(
                        Icons.attach_money,
                        color: selectedNum ? Colors.white : Color(0xFF223A5A),
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
    });
  }
}
