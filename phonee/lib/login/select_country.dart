import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SelectCountry extends StatefulWidget {
  const SelectCountry({Key? key}) : super(key: key);

  @override
  _SelectCountryState createState() => _SelectCountryState();
}

class _SelectCountryState extends State<SelectCountry> {
  List<dynamic>? dataRetrieved; // data decoded from the JSON file
  List<dynamic>? data; // data to display on the screen
  var _searchController = TextEditingController();
  var searchValue = "";

  @override
  void initState() {
    super.initState();
    _getData();
  }

  Future<void> _getData() async {
    // Load country data from JSON file
    final String response = await rootBundle.loadString('assets/CountryCodes.json');
    dataRetrieved = json.decode(response) as List<dynamic>;
    setState(() {
      data = dataRetrieved;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Select Country"),
        previousPageTitle: "Edit Number",
      ),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            sliver: SliverToBoxAdapter(
              child: CupertinoSearchTextField(
                controller: _searchController,
                onChanged: (value) {
                  setState(() {
                    searchValue = value;
                  });
                },
                placeholder: 'Search Country',
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                if (data != null) {
                  final filteredCountries = data!
                      .where((e) => e['name'].toString().toLowerCase().contains(searchValue.toLowerCase()))
                      .toList();
                  final country = filteredCountries[index];
                  return CupertinoListTile(
                    onTap: () {
                      Navigator.pop(
                        context,
                        {"name": country['name'], "code": country['dial_code']},
                      );
                    },
                    title: Text(country['name']),
                    trailing: Text(country['dial_code']),
                  );
                } else {
                  return Center(child: CupertinoActivityIndicator());
                }
              },
              childCount: data?.length ?? 0,
            ),
          ),
        ],
      ),
    );
  }
}
