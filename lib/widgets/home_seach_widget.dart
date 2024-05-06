import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeSearchWidget extends StatelessWidget {
  const HomeSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _searchController = TextEditingController();
    return Container(
      height: 42.0,
      width: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.only(top: 9.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: Colors.black87),
          color: Colors.black87.withOpacity(0.1)),
      child: TextFormField(
        controller: _searchController,
        maxLines: 1,
        maxLength: 100,
        decoration: const InputDecoration(
          hintText: "Search",
          counter: SizedBox.shrink(),
          hintStyle: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500, color: Colors.black87),
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search, color: Colors.black, size: 20.0),
          suffixIcon: Icon(Icons.mic, color: Colors.black, size: 20.0),
        ),
      ),
    );
  }
}
