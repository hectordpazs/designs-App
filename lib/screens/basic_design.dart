import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const <Widget>[
            ImageBuilder(),
            TitleWidget(),
            SizedBox(
              height: 20,
            ),
            GenerateIcons(),
            Overview()
          ],
        ),
      ),
    );
  }
}

class ImageBuilder extends StatelessWidget {
  const ImageBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FadeInImage(
      placeholder: AssetImage('assets/landscape.jpg'),
      image: AssetImage('assets/landscape.jpg'),
      //width: double.infinity,
    );
  }
}

class Overview extends StatelessWidget {
  const Overview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Text(
          textAlign: TextAlign.justify,
          'Voluptate aute voluptate qui occaecat consectetur. Dolore enim ad adipisicing nisi do magna sit nulla voluptate velit ea deserunt ullamco quis. Quis officia et elit dolor. Do eu excepteur ut laborum ut quis laborum laboris nostrud exercitation laborum.'),
    );
  }
}

class GenerateIcons extends StatelessWidget {
  const GenerateIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        IconBuilder(desc: 'CALL', icon: Icons.call),
        IconBuilder(desc: 'ROUTE' ,icon: Icons.near_me_sharp),
        IconBuilder(desc: 'SHARE' ,icon: Icons.share),
      ],
    );
  }
}

class IconBuilder extends StatelessWidget {
  final IconData icon;
  final String desc;

  const IconBuilder({
    Key? key,
    required this.icon, required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue),
        const SizedBox(
          height: 5,
        ),
        Text(desc, style: const TextStyle(color: Colors.blue)),
      ],
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(6),
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Oeschinen Lake Campground',
                  style: TextStyle(fontWeight: FontWeight.w600)),
              SizedBox(
                height: 5,
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Icon(
              Icons.star,
              color: Colors.red,
            ),
            Text('41')
          ],
        ),
      ],
    );
  }
}
