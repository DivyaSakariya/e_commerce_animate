import 'package:e_commerce_animate/controller/productController.dart';
import 'package:e_commerce_animate/modals/product_modal.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("E-Commerce App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Consumer<ProductController>(
          builder: (context, provider, _) {
            return provider.allProducts.isNotEmpty
                ? GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 4,
                      mainAxisSpacing: 4,
                    ),
                    itemCount: provider.allProducts.length,
                    itemBuilder: (context, index) {
                      ProductModal data = provider.allProducts[index];
                      return Card(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed('detail_page', arguments: data);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Hero(
                                tag: data.id,
                                child: SizedBox(
                                  height: 120,
                                  width: double.infinity,
                                  child: Image.network(
                                    data.thumbnail,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Text(
                                data.title,
                                style: const TextStyle(fontSize: 16,),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  );
          },
        ),
      ),
    );
  }
}
