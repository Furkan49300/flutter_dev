import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'dart:convert';

import '../bo/article.dart';
import '../bo/cart.dart';



class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<Article> articles = [];

  @override
  void initState() {
    super.initState();
    _fetchAndAddToCart();
  }

  Future<void> _fetchAndAddToCart() async {
    try {
      List<Article> fetchedArticles = await fetchListProducts();
      setState(() {
        articles = fetchedArticles;
      });
    } catch (e) {
      print(e);
    }
  }

  Future<List<Article>> fetchListProducts() async {
    String uri = "https://fakestoreapi.com/products";
    http.Response resListArt = await http.get(Uri.parse(uri));

    if (resListArt.statusCode == 200 && resListArt.body.isNotEmpty) {
      final resListMap = jsonDecode(resListArt.body) as List<dynamic>;

      return resListMap.map<Article>((map) =>
          Article.fromMap(map as Map<String, dynamic>)).toList();
    } else {
      throw Exception("Requête invalide");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              onPressed: () => {},
              icon: Icon(Icons.arrow_back),
            ),
            Text("Epsi Shop"),
          ],
        ),
      ),
      body: Column(
        children: [
          TitleSection(),
          ArticlesVIew(articles: articles),
          ButtonPay(),
        ],
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Votre panier total est de"),
        Text("1000€"),
      ],
    );
  }
}

class ButtonPay extends StatelessWidget {
  const ButtonPay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () => {context.go("/checkout")},
          child: Text("Proceder au paiement"),
        ),
      ],
    );
  }
}

class ArticlesVIew extends StatelessWidget {
  const ArticlesVIew({
    super.key,
    required this.articles,
  });

  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => ListTile(
          title: Text(articles[index].nom),
          subtitle: Text("${articles[index].prix}€"),
          leading: Image.network(
            articles[index].image,
            width: 80,
          ),
          trailing: TextButton(
            child: Text("SUPPRIMER"),
            onPressed: () {context.read<Cart>().remove(articles[index]);
              // Mettez ici le code pour supprimer l'article du panier.
            },
          ),
        ),
      ),
    );
  }
}
