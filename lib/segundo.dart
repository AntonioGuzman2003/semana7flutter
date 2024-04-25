import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu Restaurante',
      home: Scaffold(
        appBar: AppBar(title: Text("FAQ")),
        body: ListView.builder(
          itemCount: faqList.length,
          itemBuilder: (context, index) {
            return ListTile(
             leading: Image.network(
                faqList[index].imageURL,
                width: 45, 
                height: 45, 
             ),
              title: Text(faqList[index].title),
              subtitle: Text(faqList[index].description),
              onTap: () {
              },
            );
          },
        ),
      ),
    );
  }
}


class FAQItem {
  final String title;
  final String description;
  final String imageURL;


  FAQItem({required this.imageURL, required this.title, required this.description});
}


List<FAQItem> faqList = [
   FAQItem(
    imageURL: 'https://w7.pngwing.com/pngs/739/553/png-transparent-hamburger-veggie-burger-chicken-sandwich-fast-food-hamburger-burger-burger-sandwich-food-recipe-cheeseburger-thumbnail.png',
    title: "Hamburguesa",
    description: "s/8.99"
  ),
  FAQItem( imageURL: 'https://w7.pngwing.com/pngs/739/553/png-transparent-hamburger-veggie-burger-chicken-sandwich-fast-food-hamburger-burger-burger-sandwich-food-recipe-cheeseburger-thumbnail.png',title: "Pizza", description: "S/6.99"),
  FAQItem( imageURL: 'https://www.comedera.com/wp-content/uploads/2023/10/shutterstock_1087243763.jpg',title: "Ensalada Cesar", description: "S/4.99"),
   FAQItem( imageURL: 'https://www.budgetbytes.com/wp-content/uploads/2022/01/Shrimp-Alfredo-Pasta-bowl2-500x500.jpg',title: "Pasta Alfredo", description: "S/6.99"),
  FAQItem( imageURL: 'https://w7.pngwing.com/pngs/739/553/png-transparent-hamburger-veggie-burger-chicken-sandwich-fast-food-hamburger-burger-burger-sandwich-food-recipe-cheeseburger-thumbnail.png',title: "Sanwich de pollo", description: "S/6.99"),
  FAQItem( imageURL: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbx5885ZqkSFXH3nnyW1k_cfakAWJLkjly6r2sqPJx1w&s',title: "Sopa del dia", description: "S/6.99"),
];



