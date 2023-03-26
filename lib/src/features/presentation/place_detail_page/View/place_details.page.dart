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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: darkOrange,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: () {},
        label: const Text(
          'Añadir al carrito \$ 189.50',
          style: TextStyle(
            color: white,
            fontWeight: FontWeight.w600,
            fontSize: 17,
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          _sliverAppBar(expandedHeight: expandedHeight),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    MainTitle(
                      title: 'Productos Destacados',
                      fontSize: 22,
                    ),
                    const FeaturedSlider(),
                    MainTitle(
                      title: 'Menú Completo',
                      fontSize: 22,
                    ),
                    _menuList(),
                    MainTitle(
                      title: 'Comentarios',
                      fontSize: 22,
                    ),
                    _reviews(),
                    MainTitle(
                      title: 'Tu calificación',
                      fontSize: 22,
                    ),
                    MyReview(),
                    //Espaciador para la parte baja del modulo
                    const SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}

class _sliverAppBar extends StatelessWidget {
  const _sliverAppBar({
    Key? key,
    required this.expandedHeight,
  }) : super(key: key);

  final double expandedHeight;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
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

class _menuList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: (filterItems.length) * 315,
      // color: Colors.blue,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 5),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: filterItems.length,
              itemBuilder: (_, index) => listTileElements(
                item: filterItems[index],
                filterItems: filterItems,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class listTileElements extends StatelessWidget {
  final FullMenuItem item;
  final List<FullMenuItem> filterItems;

  const listTileElements({required this.item, required this.filterItems});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: lightGrey),
        ),
      ),
      child: Column(
        children: [
          ListTile(
            onTap: () {
              print(filterItems.indexOf(item));
            },
            title: MainTitle(
              title: item.label,
              fontSize: 16,
              color: darkGrey,
            ),
            trailing: Text(item.menuItemQty.toString()),
          ),
          const FeaturedSlider(),
        ],
      ),
    );
  }
}

/// Para llenar el widget para el
/// detalle de menu Lista y Modelo
List<FullMenuItem> filterItems = [
  FullMenuItem(label: 'Ensaladas', menuItemQty: 2),
  FullMenuItem(label: 'Pollo', menuItemQty: 5),
  FullMenuItem(label: 'Sopas', menuItemQty: 6),
  FullMenuItem(label: 'Vegetales', menuItemQty: 7),
];

class FullMenuItem<Widget> {
  String label;
  int menuItemQty;

  FullMenuItem({required this.label, required this.menuItemQty});
}

///Reviews

class _reviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      // color: Colors.blue,
      child: Row(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              // padding: const EdgeInsets.symmetric(vertical: 5),
              itemCount: 10,
              itemBuilder: (_, index) => _reviewCard(),
            ),
          ),
        ],
      ),
    );
  }
}

class _reviewCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // return Text('hola mundo');
    return Container(
      // color: Colors.red,
      margin: const EdgeInsets.only(right: 10),
      width: size.width * 0.8,
      child: Column(
        children: const [
          _cardHeader(),
          SizedBox(height: 10),
          _reviewCardBody(),
        ],
      ),
    );
  }
}

class _cardHeader extends StatelessWidget {
  const _cardHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: const Image(
                fit: BoxFit.cover,
                width: 65,
                height: 65,
                image: NetworkImage(
                    'https://images.pexels.com/photos/15965248/pexels-photo-15965248.jpeg?auto=compress&cs=tinysrgb&w=640&h=960&dpr=1')),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 180),
            child: Container(
              // color: Colors.white,
              margin: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'David Flores Castillo',
                    style: TextStyle(
                      fontSize: 15,
                      color: darkGrey,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '45 Comentarios',
                    style: TextStyle(
                      fontSize: 12,
                      color: grey,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          _reviewStar(starQty: 2),
        ],
      ),
    );
  }
}

class _reviewCardBody extends StatelessWidget {
  const _reviewCardBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ipsa quae debitis, accusamus quod quisquam suscipit dolore libero rem repellendus, quas incidunt minus, illum saepe totam praesentium repellat excepturi tempora. Officiis! adipisicing elit. Ipsa quae debitis, accusamus quod quisquam suscipit dolore',
      style: TextStyle(
        height: 1.4,
        fontSize: 15,
        color: grey,
        fontWeight: FontWeight.bold,
      ),
      maxLines: 5,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class Review<Widget> {
  String userAvatar;
  String reviewBody;
  int starsQty;
  int reviewsQty;

  Review(
      {required this.userAvatar,
      required this.reviewBody,
      required this.starsQty,
      required this.reviewsQty});
}

class MyReview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _reviewStar(starQty: null),
            _reviewStar(starQty: null),
            _reviewStar(starQty: 4),
            _reviewStar(starQty: null),
            _reviewStar(starQty: null),
          ],
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: MainTitle(
            title:
                'Nos gustaría oir más acerca de tu experiencia en este lugar. Cuéntanos cómo te fue en tu visita...',
            color: grey,
            fontWeight: FontWeight.normal,
            fontSize: 17,
          ),
        ),
        Row(
          children: [
            const Icon(
              Icons.add,
              color: darkOrange,
            ),
            MainTitle(
              title: 'Agrega tu review',
              color: darkOrange,
              fontWeight: FontWeight.normal,
              fontSize: 17,
            ),
          ],
        )
      ],
    );
  }
}

class _reviewStar extends StatelessWidget {
  final starQty;

  _reviewStar({required this.starQty});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(
            color: (starQty != null) ? darkOrange : lighOrangeBackground),
        width: 60,
        height: 45,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (starQty != null)
                ? Text(
                    starQty.toString(),
                    style: const TextStyle(
                      fontSize: 17,
                      color: white,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                : const Text(''),
            const Icon(
              Icons.star,
              color: white,
            ),
          ],
        ),
      ),
    );
  }
}
