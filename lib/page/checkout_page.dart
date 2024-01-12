import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        title: Text("Finalisation de la commande"),

      ),
      body:
          Container(
            margin: EdgeInsets.all(15),
            child: Column(

              children: [
                Card(
                      elevation: 0,
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                    side: BorderSide(color: Theme.of(context).colorScheme.outline),
                    ),

                  child:
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),"Récapitulatif de votre commande"),
                            SizedBox(height:20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Sous-total"),
                                Text("129.36€"),
                              ],
                            ),
                            SizedBox(height:10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(style: TextStyle(color: Colors.green),"Vous economisez"),
                                Text(style: TextStyle(color: Colors.green),"-0.01€"),
                              ],
                            ),
                            SizedBox(height:10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("TVA"),
                                Text("23.89€"),
                              ],
                            ),
                            SizedBox(height:10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Sous-total"),
                                Text("153.25€"),
                              ],
                            )


                          ],
                        ),
                      ),
                    )

                    ),
                SizedBox(height:20),
                Row(
                  children: [Text(style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),"Adresse de livraison")],
                ),
                Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(color: Theme.of(context).colorScheme.outline),
                    ),

                    child:
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height:80,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),"Michel Le Poney"),
                            SizedBox(height:8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("8 rue des ouvertures de porte"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("93204 CORBEAUX"),
                              ],
                            ),


                          ],
                        ),
                      ),
                    )

                ),
                SizedBox(height:20),
                Row(
                  children: [Text(style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),"Méthode de paiement")],
                ),
                Container(
                  child:    Row(

                    children: [
                     Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    side: BorderSide(color: Theme.of(context).colorScheme.outline),
    ),child:
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconButton(onPressed: ()=>{}, iconSize:47,icon: FaIcon(FontAwesomeIcons.ccApplePay)),
    )),
                    Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: Theme.of(context).colorScheme.outline),
                      ),child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(onPressed: ()=>{}, iconSize:47,icon: FaIcon(FontAwesomeIcons.ccVisa)),
                      )),
                    Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: Theme.of(context).colorScheme.outline),
                      ),child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(onPressed: ()=>{}, iconSize:47,icon: FaIcon(FontAwesomeIcons.ccMastercard)),
                      )),
                    Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: Theme.of(context).colorScheme.outline),
                      ),child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(onPressed: ()=>{}, iconSize:47,icon: FaIcon(FontAwesomeIcons.ccPaypal)),
                      ))


                    ],
                  )
                ),
                Expanded(child: Container()),
                Text("En cliquant sur confirmer lachat , vous acceptez les conditionsde vente de epsi shop international. Besoin daide ? desole on peut rien faire . En poursuivant, vous acceptez les conditions dutilisation du fournisseur de paiement  coffeedis"),
              Row(
                children: [
                  Expanded(child: ElevatedButton(onPressed: ()=>{}, child: Text("Confirmer l'achat"),)),
                ],
              )],
            ),
          ),


    );
  }
}
