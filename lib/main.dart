import 'package:flutter/material.dart';
import 'package:raycipies/recipe_detail.dart';
import 'recipe.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Raycipe Calculator',
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.black,
      ),
      home: MyHomePage(title: 'Raycipe Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return RecipeDetail(recipe: Recipe.foodSamples[index]);
                  }));
                },
                child: buildRecipeCard(Recipe.foodSamples[index]));
          },
          itemCount: Recipe.foodSamples.length,
        ),
      ),
    );
  }
}

Widget buildRecipeCard(Recipe recipe) {
  return Card(
    elevation: 2.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Image(image: AssetImage(recipe.imageUrl)),
          SizedBox(height: 14.0),
          Text(
            recipe.label,
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'Lato'),
          ),
        ],
      ),
    ),
  );
}
