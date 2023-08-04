import 'package:e_commerce_animate/modals/product_modal.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    ProductModal data =
        ModalRoute.of(context)!.settings.arguments as ProductModal;
    return Scaffold(
      appBar: AppBar(
        title: Text(data.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Hero(
              tag: data.id,
              child: SizedBox(
                height: 250,
                width: double.infinity,
                child: Image.network(
                  data.thumbnail,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              data.title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                const Text("Category :- ",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Text(
                  data.category,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Text("Brand :- ",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Text(
                  data.brand,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Text(
                  "Price :-",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Text(
                  "\$ ${data.price}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Text(
              data.description,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
