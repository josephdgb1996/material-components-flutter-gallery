import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'demo.dart';
import 'settings.dart';
import 'study_placeholder.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            color: Theme.of(context).colorScheme.secondaryVariant,
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.of(context).push<void>(
                MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (context) => SettingsPage(),
                ),
              );
            },
          ),
        ],
      ),
      body:
//      Padding(
//        padding: EdgeInsets.fromLTRB(32, 0, 32, 0),
          ListView(
        children: [
          header(
              context, Theme.of(context).colorScheme.primaryVariant, 'Gallery'),
          Container(
            height: 192.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                CarouselCard(title: 'SHRINE'),
                CarouselCard(title: 'RALLY'),
                CarouselCard(title: 'CRANE'),
              ],
            ),
          ),
          header(context, Theme.of(context).colorScheme.primary, 'Categories'),
          const CategoryListItem(
              title: 'Material',
              imageString: 'assets/icons/material/Icon-material@1x.png'),
          const CategoryListItem(
              title: 'Cupertino',
              imageString: 'assets/icons/cupertino/Icon-cupertino 2@1x.png'),
          const CategoryListItem(
              title: 'Reference styles & media',
              imageString: 'assets/icons/reference/Icon-reference@1x.png'),
        ],
      ),
//      ),
    );
  }

  Widget header(BuildContext context, Color color, String text) {
    return Padding(
      padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
      child: Text(
        text,
        style: Theme.of(context).textTheme.display1.apply(color: color),
      ),
    );
  }
}

class CarouselCard extends StatelessWidget {
  const CarouselCard({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return
//      Padding(
//      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
//      child:
        GestureDetector(
      onTap: () {
        Navigator.of(context).push<void>(
          MaterialPageRoute(
            builder: (context) => StudyPlaceholderPage(),
          ),
        );
      },
      child: Row(
        children: [
          Container(
            width: 296,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icons/shrine_card/Shrine Card.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                '',
                style: Theme.of(context).textTheme.caption,
              ),
            ),
          ),
        ],
      ),
//      ),
    );
  }
}

class CategoryListItem extends StatelessWidget {
  const CategoryListItem({Key key, this.title, this.imageString})
      : super(key: key);

  final String title;
  final String imageString;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(32, 8, 32, 8),
        child: FlatButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: Theme.of(context).colorScheme.onBackground,
          onPressed: () {
            Navigator.push<dynamic>(
              context,
              MaterialPageRoute<dynamic>(builder: (context) => DemoPage()),
            );
          },
          child: Row(
            children: [
              Image.asset(
                (imageString),
                width: 64,
                height: 64,
              ),
              Flexible(
                child: Text(title.toUpperCase(),
                    style: Theme.of(context).textTheme.display1.apply(
                          color: Colors.white,
                        )),
              ),
            ],
          ),
        )
//        tooltip: 'Material Icon',
//        iconSize: 64,

//            onPressed: Navigator.of(context).push(
//              MaterialPageRoute(
//                builder: (context) => DemoPage(),
//              ),
//            );
//      ),
//      child: GestureDetector(
//        onTap: () {
//          Navigator.of(context).push(
//            MaterialPageRoute(
//              builder: (context) => DemoPage(),
//            ),
//          );
//        },
//            Container(
//          height: 70.0,
//          decoration: BoxDecoration(
//            color: Theme.of(context).colorScheme.onBackground,
//            borderRadius: BorderRadius.circular(4.0),
//          ),
//          child: Center(
//            child: Text(
//              title,
//              style: Theme.of(context).textTheme.headline,
//            ),
//          ),
//        ),
//      ),
        );
  }
}
