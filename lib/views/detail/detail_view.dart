import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../constants/colors.dart';
import '../../constants/enum.dart';
import '../../constants/text_style.dart';
import '../home/home_view.dart';
import '../list_item_popular/list_item_popular_view.dart';

class DetailView extends StatefulWidget {
  final dynamic data;
  const DetailView({super.key, required this.data});

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  Filter? _filter = Filter.nearest;
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  Language? _language = Language.english;
  Currency? _currency = Currency.usd;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _key,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          leading: GestureDetector(
            onTap: () => _key.currentState!.openDrawer(),
            child: const Icon(
              Icons.menu,
              size: 32,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  builder: (context) =>
                      StatefulBuilder(builder: (context, setState) {
                    return SizedBox(
                      height: height * 0.4,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: Container(
                                height: 5,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                "Filter",
                                style: CustomTextStyleBlack.title,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Divider(
                              thickness: 1,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            ListTile(
                              title: const Text(
                                "Nearest",
                                style: CustomTextStyleBlack.subtitle,
                              ),
                              leading: Radio<Filter>(
                                value: Filter.nearest,
                                groupValue: _filter,
                                onChanged: (Filter? value) {
                                  setState(() {
                                    _filter = value;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                "Lowest Price",
                                style: CustomTextStyleBlack.subtitle,
                              ),
                              leading: Radio<Filter>(
                                value: Filter.lowestPrice,
                                groupValue: _filter,
                                onChanged: (Filter? value) {
                                  setState(() {
                                    _filter = value;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                "Highest Price",
                                style: CustomTextStyleBlack.subtitle,
                              ),
                              leading: Radio<Filter>(
                                value: Filter.highestPrice,
                                groupValue: _filter,
                                onChanged: (Filter? value) {
                                  setState(() {
                                    _filter = value;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                "Rating",
                                style: CustomTextStyleBlack.subtitle,
                              ),
                              leading: Radio<Filter>(
                                value: Filter.rating,
                                groupValue: _filter,
                                onChanged: (Filter? value) {
                                  setState(() {
                                    _filter = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                );
              },
              icon: const Icon(
                Icons.filter_alt_outlined,
                size: 24,
              ),
            ),
            IconButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  builder: (context) =>
                      StatefulBuilder(builder: (context, setState) {
                    return SizedBox(
                      height: height * 0.4,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: Container(
                                height: 5,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                "Short By",
                                style: CustomTextStyleBlack.title,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Divider(
                              thickness: 1,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            ListTile(
                              title: const Text(
                                "Name",
                                style: CustomTextStyleBlack.subtitle,
                              ),
                              leading: Radio<Filter>(
                                value: Filter.nearest,
                                groupValue: _filter,
                                onChanged: (Filter? value) {
                                  setState(() {
                                    _filter = value;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                "Lowest Price",
                                style: CustomTextStyleBlack.subtitle,
                              ),
                              leading: Radio<Filter>(
                                value: Filter.lowestPrice,
                                groupValue: _filter,
                                onChanged: (Filter? value) {
                                  setState(() {
                                    _filter = value;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                "Highest Price",
                                style: CustomTextStyleBlack.subtitle,
                              ),
                              leading: Radio<Filter>(
                                value: Filter.highestPrice,
                                groupValue: _filter,
                                onChanged: (Filter? value) {
                                  setState(() {
                                    _filter = value;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                "Rating",
                                style: CustomTextStyleBlack.subtitle,
                              ),
                              leading: Radio<Filter>(
                                value: Filter.rating,
                                groupValue: _filter,
                                onChanged: (Filter? value) {
                                  setState(() {
                                    _filter = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                );
              },
              icon: const Icon(
                Icons.tune_outlined,
                size: 24,
              ),
            ),
          ],
          backgroundColor: primaryColor,
          title: Container(
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const TextField(
              decoration: InputDecoration(
                hintText: "Search",
                contentPadding: EdgeInsets.only(left: 10, top: 5),
                border: InputBorder.none,
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: primaryColor,
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/Logo_Portrait_1.png",
                    width: width * 0.3,
                    height: height * 0.1,
                    fit: BoxFit.contain,
                  ),
                  const Text(
                    "Ethnic",
                    style: CustomTextStyleWhite.title,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeView(),
                  ),
                );
              },
              child: Row(
                children: const [
                  SizedBox(width: 20),
                  Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 20,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Home",
                    style: CustomTextStyleWhite.body,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  builder: (context) =>
                      StatefulBuilder(builder: (context, setState) {
                    return SizedBox(
                      height: height * 0.7,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: Container(
                                height: 5,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                "Select Language",
                                style: CustomTextStyleBlack.title,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Divider(
                              thickness: 1,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            ListTile(
                              title: const Text(
                                "English",
                                style: CustomTextStyleBlack.subtitle,
                              ),
                              leading: Radio<Language>(
                                value: Language.english,
                                groupValue: _language,
                                onChanged: (Language? value) {
                                  setState(() {
                                    _language = value;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                "Chinese",
                                style: CustomTextStyleBlack.subtitle,
                              ),
                              leading: Radio<Language>(
                                value: Language.chinese,
                                groupValue: _language,
                                onChanged: (Language? value) {
                                  setState(() {
                                    _language = value;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                "French",
                                style: CustomTextStyleBlack.subtitle,
                              ),
                              onTap: () {
                                setState(() {
                                  _language = Language.french;
                                });
                              },
                              leading: Radio<Language>(
                                value: Language.french,
                                groupValue: _language,
                                onChanged: (Language? value) {
                                  print(value);
                                  setState(() {
                                    _language = value;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                "Germany",
                                style: CustomTextStyleBlack.subtitle,
                              ),
                              leading: Radio<Language>(
                                value: Language.german,
                                groupValue: _language,
                                onChanged: (Language? value) {
                                  setState(() {
                                    _language = value;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                "Italian",
                                style: CustomTextStyleBlack.subtitle,
                              ),
                              leading: Radio<Language>(
                                value: Language.italian,
                                groupValue: _language,
                                onChanged: (Language? value) {
                                  setState(() {
                                    _language = value;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                "Japanese",
                                style: CustomTextStyleBlack.subtitle,
                              ),
                              leading: Radio<Language>(
                                value: Language.japanese,
                                groupValue: _language,
                                onChanged: (Language? value) {
                                  setState(() {
                                    _language = value;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                "Korean",
                                style: CustomTextStyleBlack.subtitle,
                              ),
                              leading: Radio<Language>(
                                value: Language.korean,
                                groupValue: _language,
                                onChanged: (Language? value) {
                                  setState(() {
                                    _language = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                );
              },
              child: Row(
                children: const [
                  SizedBox(width: 20),
                  Icon(
                    Icons.language_rounded,
                    color: Colors.white,
                    size: 20,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Language",
                    style: CustomTextStyleWhite.body,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  builder: (context) =>
                      StatefulBuilder(builder: (context, setState) {
                    return SizedBox(
                      height: height * 0.5,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: Container(
                                height: 5,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                "Select Currency",
                                style: CustomTextStyleBlack.title,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Divider(
                              thickness: 1,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            ListTile(
                              title: const Text(
                                "Pound Sterling (£) ",
                                style: CustomTextStyleBlack.subtitle,
                              ),
                              leading: Radio<Currency>(
                                value: Currency.gbp,
                                groupValue: _currency,
                                onChanged: (Currency? value) {
                                  setState(() {
                                    _currency = value;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                "Euro (€)",
                                style: CustomTextStyleBlack.subtitle,
                              ),
                              leading: Radio<Currency>(
                                value: Currency.eur,
                                groupValue: _currency,
                                onChanged: (Currency? value) {
                                  setState(() {
                                    _currency = value;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                "US Dollar (\$)",
                                style: CustomTextStyleBlack.subtitle,
                              ),
                              leading: Radio<Currency>(
                                value: Currency.usd,
                                groupValue: _currency,
                                onChanged: (Currency? value) {
                                  setState(() {
                                    _currency = value;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                "Japanese Yen (¥)",
                                style: CustomTextStyleBlack.subtitle,
                              ),
                              leading: Radio<Currency>(
                                value: Currency.jpy,
                                groupValue: _currency,
                                onChanged: (Currency? value) {
                                  setState(() {
                                    _currency = value;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                "Korean Won (₩)",
                                style: CustomTextStyleBlack.subtitle,
                              ),
                              leading: Radio<Currency>(
                                value: Currency.krw,
                                groupValue: _currency,
                                onChanged: (Currency? value) {
                                  setState(() {
                                    _currency = value;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                "China Yuan (¥)",
                                style: CustomTextStyleBlack.subtitle,
                              ),
                              leading: Radio<Currency>(
                                value: Currency.cny,
                                groupValue: _currency,
                                onChanged: (Currency? value) {
                                  setState(() {
                                    _currency = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                );
              },
              child: Row(
                children: const [
                  SizedBox(width: 20),
                  Icon(
                    Icons.currency_exchange_rounded,
                    color: Colors.white,
                    size: 20,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Currency",
                    style: CustomTextStyleWhite.body,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.transparent,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  builder: (context) => Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    height: height * 0.9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Container(
                            height: 5,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "About Us",
                            style: CustomTextStyleBlack.title,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "Ethic will be all in one platform for preservingthe culture also promoting tourism. Engaged in the preservation of culture and promote tourism through giving recomendation to travelers, promoting SMEs and local events",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text("Contact Us",
                              style: CustomTextStyleBlack.body,
                              textAlign: TextAlign.center),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            const Icon(
                              Icons.email_outlined,
                              color: Colors.grey,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text("Ethnic@gmail.com"),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            const Icon(
                              Icons.phone,
                              color: Colors.grey,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text("+62 81234567890"),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
              child: Row(
                children: const [
                  SizedBox(width: 20),
                  Icon(
                    Icons.info_outline_rounded,
                    color: Colors.white,
                    size: 20,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "About Us",
                    style: CustomTextStyleWhite.body,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Image.asset(
            widget.data.image,
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.data.title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                RatingBar.builder(
                  initialRating: widget.data.rating,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemSize: 20,
                  itemCount: 5,
                  ignoreGestures: true,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    //print(rating);
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 300,
                  child: SingleChildScrollView(
                    child: Text(
                      widget.data.description,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 10,
                      ),
                    ),
                    child: Text("Recomendation"),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
