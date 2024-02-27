import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../util/theme/constants.dart';

class Category {
  final String name;
  final bool? active;
  Category(this.name, {this.active});
}

class CategoriesComponent extends StatelessWidget {
  const CategoriesComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Category> categories = [
      Category('All', active: true),
      Category('Serum'),
      Category('Serum'),
      Category('Serum'),
      Category('Serum'),
      Category('Serum'),
      Category('Serum'),
      Category('Serum'),
      Category('Serum'),
      Category('Serum'),
      Category('Serum'),
      Category('Serum'),
      Category('Serum'),
      Category('Serum'),
      Category('Serum'),
      Category('Serum'),
      Category('Serum'),
      Category('Serum'),
      Category('Serum'),
      Category('Serum'),
    ];
    return SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal, // Scroll horizontally
          child: Row(
            children: [
              // Loop through the list and create Text widgets dynamically
              for (var category in categories)
                Padding(
                  padding: const EdgeInsets.all(
                      1.0), // Add padding between categories
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: category.active == true
                          ? primaryColor
                          : Colors.transparent,
                      borderRadius:
                          BorderRadius.circular(15.0), // Add border radius here
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(18, 8, 18, 8),
                      child: Text(
                        category.name,
                        style: TextStyle(
                            color: category.active == true
                                ? onPrimaryColor
                                : textGrayColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                )
            ],
          ),
        ));
  }
}
