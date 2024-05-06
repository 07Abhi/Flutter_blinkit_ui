import 'package:flutter/material.dart';

import '../constant.dart';

class LocationSearchBarWidget extends StatelessWidget {
  LocationSearchBarWidget({super.key});

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      surfaceTintColor: Colors.white,
      elevation: 1.0,
      margin: EdgeInsets.zero,
      child: Container(
        height: 42.0,
        width: double.infinity,
        alignment: Alignment.center,
        padding: const EdgeInsets.only(top: 9.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: Colors.black12, width: 0.5),
        ),
        child: TextFormField(
          controller: _searchController,
          maxLines: 1,
          maxLength: 100,
          decoration: const InputDecoration(
            hintText: AppConstants.searchAreaSearchStreetName,
            counter: SizedBox.shrink(),
            hintStyle: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500, color: Colors.black87),
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search, color: Colors.black, size: 20.0),
          ),
        ),
      ),
    );
  }
}
