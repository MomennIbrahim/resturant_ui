import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/widgets/search_text_field.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key, required this.searchController});

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48.0),
      child: CustomSearchTextFormField(
          controller: searchController,
          keyBoardTyp: TextInputType.text,
          text: 'Search',
          icon: const Padding(
            padding: EdgeInsets.only(left: 27.0, right: 6.0),
            child: Icon(FontAwesomeIcons.magnifyingGlass, size: 16.0),
          ),
          validateText: '',
          obscure: false),
    );
  }
}
