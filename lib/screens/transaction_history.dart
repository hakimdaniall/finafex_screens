import 'package:flutter/material.dart';

enum TransactionType { sent, received, pending }

class TransactionHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Transaction History'),
          backgroundColor: Color(0xFF223A5A),
          centerTitle: true,
        ),
        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height*0.4,
              decoration: BoxDecoration(
                color: Color(0xFF223A5A),
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
                          primary: Colors.transparent, // background
                          onPrimary: Colors.yellow, // foreground
                        ),
                        onPressed: () { },
                        child: Center(child: Text('Email Transaction')),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.height*0.5,
                          ),
                      SizedBox(height: 10),
                      Center(
                        child: Text("RECENT TRANSACTIONS",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          )
                        ),
                      ),
                      SizedBox(height: 25),
                      TransactionDetails(
                        receiptianImage: "assets/images/sitinurhaliza.png",
                        receptient:"Siti Nurhaliza",
                        transactionAmout:400,
                        transactionDate:"4 June 2020",
                        transactionType:TransactionType.sent,
                      ),
                      TransactionDetails(
                        receiptianImage: "assets/images/noh.png",
                        receptient:"Noh Salleh",
                        transactionAmout:150000,
                        transactionDate:"25 December 2020",
                        transactionType:TransactionType.received,
                      ),
                      TransactionDetails(
                        receiptianImage: "assets/images/mark.png",
                        receptient:"Mark Zuckerberg",
                        transactionAmout:1,
                        transactionDate:"21 October 2020",
                        transactionType:TransactionType.pending,
                      ),
                      TransactionDetails(
                        receiptianImage: "assets/images/ebitlew.png",
                        receptient:"Ebit Lew",
                        transactionAmout:21000,
                        transactionDate:"1 November 2020",
                        transactionType:TransactionType.sent,
                      ),
                      TransactionDetails(
                        receiptianImage: "assets/images/superman.png",
                        receptient:"Superman",
                        transactionAmout:100,
                        transactionDate:"19 September 2020",
                        transactionType:TransactionType.pending,
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

class TransactionDetails extends StatelessWidget {

  final String receiptianImage;
  final String receptient;
  final int transactionAmout;
  final String transactionDate;
  final TransactionType transactionType;

  const TransactionDetails({
    this.receiptianImage,
    this.receptient,
    this.transactionAmout,
    this.transactionDate,
    this.transactionType,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String transactionName;
    IconData transactionIconData;
    Color color;
    switch (transactionType) {
      case TransactionType.sent:
        transactionName = "Sent";
        transactionIconData = Icons.arrow_upward;
        color = Theme.of(context).primaryColor;
        break;
      case TransactionType.received:
        transactionName = "Received";
        transactionIconData = Icons.arrow_downward;
        color = Colors.green;
        break;
      case TransactionType.pending:
        transactionName = "Pending";
        transactionIconData = Icons.access_time;
        color = Colors.orange;
        break;}
        return Container(
          margin: EdgeInsets.all(9.0),
          padding: EdgeInsets.all(9.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
            boxShadow: [
            BoxShadow(
            blurRadius: 5.0,
            color: Colors.grey[350],
            offset: Offset(0, 3),
            ),
            ],
          ),
          child: Row(
            children: <Widget> [
              Flexible(
                flex: 1,
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Image.asset(receiptianImage)
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 15.0,
                        height: 15.0,
                        decoration: BoxDecoration(
                          color: color,
                          shape: BoxShape.circle,
                        ),
                        child: FittedBox(
                          child: Icon(
                            transactionIconData,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 5),
              Flexible(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          receptient,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$ $transactionAmout",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          " $transactionDate",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                        Text(
                          "$transactionName",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: color,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
  }
}
