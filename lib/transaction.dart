import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:toast/toast.dart';
import 'package:flutter/cupertino.dart';

class Transaction extends StatefulWidget {
  @override
  _TransactionState createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {

  Razorpay razorpay;
  TextEditingController textEditingController = new TextEditingController();

  @override
  void initState() {
    super.initState();

    razorpay = new Razorpay();

    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlerPaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlerErrorFailure);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handlerExternalWallet);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    razorpay.clear();
  }

  void openCheckout(){
    var options = {
      "key" : "rzp_test_VquAirD97JZDly",
      "amount" : 10*100,
      "name" : "CIG App",
      "description" : "Payment for the Guide Books",
      "prefill" : {
        "contact" : "8169537162",
        "email" : "keshavsharma156@gmail.com"
      },
      "external" : {
        "wallets" : ["paytm"]
      }
    };

    try{
      razorpay.open(options);

    }catch(e){
      print(e.toString());
    }

  }

  void handlerPaymentSuccess(){
    print("Pament success");
    Toast.show("Pament success", context);
  }

  void handlerErrorFailure(){
    print("Pament error");
    Toast.show("Pament error", context);
  }

  void handlerExternalWallet(){
    print("External Wallet");
    Toast.show("External Wallet", context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Razor Pay Tutorial"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Text("rs: 10",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 12,),
            RaisedButton(
              color: Colors.blue,
              child: Text("pay Now", style: TextStyle(
                  color: Colors.white
              ),),
              onPressed: (){
                openCheckout();
              },
            )
          ],
        ),
      ),
    );
  }
}