import 'package:carousel_slider/carousel_slider.dart';
import 'package:ethnic/constants/colors.dart';
import 'package:ethnic/constants/enum.dart';
import 'package:ethnic/constants/text_style.dart';
import 'package:ethnic/views/list_item_popular/list_item_popular_view.dart';
import 'package:flutter/material.dart';

import '../../constants/data.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _current1 = 0;
  final CarouselController _controller1 = CarouselController();

  int _currentPopularPlace = 0;
  final _controller2 = CarouselController();

  int _currentPopularSouvenirs = 0;
  final _controller3 = CarouselController();

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
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          leading: GestureDetector(
            onTap: () => _key.currentState!.openDrawer(),
            child: const Icon(
              Icons.menu,
              size: 32,
            ),
          ),
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
          //Popular Events
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ListItemPopularView(
                  items: popularEventsList,
                  title: "Events",
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Popular Events",
                    style: CustomTextStyleBlack.subtitle,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: height * 0.25,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CarouselSlider(
                    carouselController: _controller1,
                    options: CarouselOptions(
                      autoPlay: true,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current1 = index;
                        });
                      },
                    ),
                    items: popularEventsList.map((i) {
                      return Stack(
                        children: [
                          Image(
                            image: AssetImage(i.image),
                            fit: BoxFit.fill,
                            height: 500,
                            width: double.infinity,
                          ),
                          Positioned(
                            bottom: 0.0,
                            left: 0.0,
                            right: 0.0,
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(200, 0, 0, 0),
                                    Color.fromARGB(0, 0, 0, 0)
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 30.0, horizontal: 20.0),
                              child: Text(
                                i.title,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }).toList(),
                  )),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: popularEventsList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller1.animateToPage(entry.key),
                child: Container(
                  width: 7.0,
                  height: 7.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black)
                          .withOpacity(entry.key == _current1 ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
          ),
          //Popular Places
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ListItemPopularView(
                  items: popularPlacesData,
                  title: "Places",
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Popular Places",
                    style: CustomTextStyleBlack.subtitle,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: height * 0.25,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CarouselSlider(
                    carouselController: _controller2,
                    options: CarouselOptions(
                      autoPlay: true,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentPopularPlace = index;
                        });
                      },
                    ),
                    items: popularPlacesData.map((i) {
                      return Stack(
                        children: [
                          Image(
                            image: AssetImage(i.image),
                            fit: BoxFit.fill,
                            height: 500,
                            width: double.infinity,
                          ),
                          Positioned(
                            bottom: 0.0,
                            left: 0.0,
                            right: 0.0,
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(200, 0, 0, 0),
                                    Color.fromARGB(0, 0, 0, 0)
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 30.0, horizontal: 20.0),
                              child: Text(
                                i.title,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }).toList(),
                  )),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: popularPlacesData.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller2.animateToPage(entry.key),
                child: Container(
                  width: 7.0,
                  height: 7.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black)
                          .withOpacity(
                              entry.key == _currentPopularPlace ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
          ),
          //Popular Souvenirs
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ListItemPopularView(
                  items: popularSouvenirsData,
                  title: "Souvenirs",
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Popular Souvenirs",
                    style: CustomTextStyleBlack.subtitle,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: height * 0.25,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CarouselSlider(
                    carouselController: _controller3,
                    options: CarouselOptions(
                      autoPlay: true,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentPopularSouvenirs = index;
                        });
                      },
                    ),
                    items: popularSouvenirsData.map((i) {
                      return Stack(
                        children: [
                          Image(
                            image: AssetImage(i.image),
                            fit: BoxFit.fill,
                            height: 500,
                            width: double.infinity,
                          ),
                          Positioned(
                            bottom: 0.0,
                            left: 0.0,
                            right: 0.0,
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(200, 0, 0, 0),
                                    Color.fromARGB(0, 0, 0, 0)
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 30.0, horizontal: 20.0),
                              child: Text(
                                i.title,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }).toList(),
                  )),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: popularPlacesData.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller3.animateToPage(entry.key),
                child: Container(
                  width: 7.0,
                  height: 7.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black)
                          .withOpacity(entry.key == _currentPopularSouvenirs
                              ? 0.9
                              : 0.4)),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
