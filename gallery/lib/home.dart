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
          Container(
            color: Theme.of(context).colorScheme.secondaryVariant,
            child: IconButton(
              icon: Icon(
                Icons.settings,
              ),
              onPressed: () {
                Navigator.of(context).push<void>(
                  MaterialPageRoute(
                    fullscreenDialog: true,
                    builder: (context) => SettingsPage(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          header(
            context,
            Theme.of(context).colorScheme.primaryVariant,
            'Gallery',
          ),
          Container(
            child: Container(
              height: 192,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CarouselCard(
                    title: 'SHRINE',
                    subtitle: 'Basic shopping app',
                  ),
                  CarouselCard(
                    title: 'RALLY',
                    subtitle: 'Basic shopping app',
                  ),
                  CarouselCard(
                    title: 'CRANE',
                    subtitle: 'Basic shopping app',
                  ),
                ],
              ),
            ),
          ),
          header(context, Theme.of(context).colorScheme.primary, 'Categories'),
          const CategoryListItem(
            title: 'Material',
            imageString: 'assets/icons/1.0x/material.png',
          ),
          const CategoryListItem(
            title: 'Cupertino',
            imageString: 'assets/icons/1.0x/cupertino.png',
          ),
          const CategoryListItem(
            title: 'Reference styles & media',
            imageString: 'assets/icons/1.0x/reference.png',
          ),
        ],
      ),
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
  const CarouselCard({Key key, this.title, this.subtitle}) : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push<void>(
            MaterialPageRoute(
              builder: (context) => StudyPlaceholderPage(),
            ),
          );
        },
        child: Container(
          width: MediaQuery.of(context).size.width * .9,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                'assets/icons/1.0x/shrine_card.png',
                fit: BoxFit.fill,
              ),
              Positioned(
                bottom: 16,
                left: 16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.caption.apply(
                            color: Color(0xFF3E282A),
                          ),
                    ),
                    Text(
                      subtitle,
                      style: Theme.of(context).textTheme.overline.apply(
                            color: Color(0xFF3E282A),
                          ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
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
      child: InkWell(
        onTap: () {
          Navigator.push<dynamic>(
            context,
            MaterialPageRoute<dynamic>(builder: (context) => DemoPage()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).colorScheme.onBackground,
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 8, 8, 8),
                child: Image.asset(
                  (imageString),
                  width: 64,
                  height: 64,
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: Text(
                    title.toUpperCase(),
                    style: Theme.of(context).textTheme.headline.apply(
                          color: Colors.white,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
