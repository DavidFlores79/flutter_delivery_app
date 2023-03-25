import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PlaceDetails extends StatelessWidget {
  static const String routeName = 'place_details';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final expandedHeight = size.height * 0.45;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: lighOrangeBackground,
            expandedHeight: expandedHeight,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: expandedHeight * 0.9,
                    child: const Image(
                      image: NetworkImage(
                          'https://images.pexels.com/photos/5491000/pexels-photo-5491000.jpeg?auto=compress&cs=tinysrgb&w=640&h=427&dpr=1'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  PlaceDetailsMainTitle(expandedHeight: expandedHeight),
                  _placeDetailsBanner(expandedHeight: expandedHeight),
                ],
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.share_outlined,
                  size: 35,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.bookmark_outline,
                  size: 35,
                ),
              ),
            ],
            leading: Builder(
              builder: (context) => const backButton(color: white),
            ),
          ),
        ],
      ),
    );
  }
}

class PlaceDetailsMainTitle extends StatelessWidget {
  const PlaceDetailsMainTitle({
    required this.expandedHeight,
  });

  final double expandedHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: expandedHeight * 0.9,
      width: double.infinity,
      color: const Color.fromRGBO(0, 0, 0, 0.4),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            _freeDeliveryOrangeButton(),
            SizedBox(
              height: 10,
            ),
            WhiteTextBlackShadow(
              label: 'Boon Lay Ho Huat Fried Praw Noddle',
              fontSize: 28,
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 5,
            ),
            _placeAddress(),
            Divider(
              color: white,
              thickness: 1, //thickness of divier line
            ),
            _bottomInfoStats(),
          ],
        ),
      ),
    );
  }
}

class _bottomInfoStats extends StatelessWidget {
  const _bottomInfoStats({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          _infoStatsDetail(
            icon: Icons.star,
            subtitle: '58 opiniones',
            title: '4.8',
          ),
          VerticalDivider(
            color: white,
            thickness: 1, //thickness of divier line
          ),
          _infoStatsDetail(
            icon: Icons.bookmark,
            subtitle: 'Favoritos',
            title: '137k',
          ),
          VerticalDivider(
            color: white,
            thickness: 1, //thickness of divier line
          ),
          _infoStatsDetail(
            icon: Icons.star,
            subtitle: 'Fotos',
            title: '136',
          ),
        ],
      ),
    );
  }
}

class _placeAddress extends StatelessWidget {
  const _placeAddress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.location_on,
          size: 20,
          color: lightGrey,
        ),
        Text(
          'Avenida Fco. de Montejo 876',
          style: TextStyle(
            color: white,
            fontSize: 15,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

class _freeDeliveryOrangeButton extends StatelessWidget {
  const _freeDeliveryOrangeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 7),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: darkOrange),
      child: const Text(
        'Entrega Gratis!',
        style:
            TextStyle(color: white, fontWeight: FontWeight.w600, fontSize: 15),
      ),
    );
  }
}

class _infoStatsDetail extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const _infoStatsDetail(
      {required this.title, required this.subtitle, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: white,
              size: 14,
            ),
            const SizedBox(width: 3),
            WhiteTextBlackShadow(label: title, fontSize: 14),
          ],
        ),
        WhiteTextBlackShadow(
          label: subtitle,
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
      ],
    );
  }
}

class _placeDetailsBanner extends StatelessWidget {
  const _placeDetailsBanner({
    required this.expandedHeight,
  });

  final double expandedHeight;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          height: expandedHeight * 0.3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Nuevo! Prueba Pickup',
                    style: TextStyle(
                      color: darkOrange,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Recoge tu pedido a la hora que desees,\nestará listo cuando tu lo estés.',
                    style: TextStyle(
                      color: darkGrey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: darkOrange,
                ),
                child: const Text(
                  'Ordena Ya!',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
        ));
  }
}
