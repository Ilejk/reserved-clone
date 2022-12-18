import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reserved/providers/products_provider.dart';
import 'package:reserved/screens/products_overview_screen.dart';
import 'package:reserved/widgets/special_category_product.dart';

class BoyCategoryListview extends StatelessWidget {
  const BoyCategoryListview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<ProductsProvider>(context);
    final products = productsData;
    return ListView(
      children: [
        SpecialCategoryProduct(
          title: 'LET\'S CELEBRATE',
          subtitle: 'BUY ONLINE',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.letsCelebrateBoyCategory,
                ),
              ),
            );
          },
          imageUrl:
              'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/Y/B/YB584-99X-030-2-573765_4.jpg',
        ),
        SpecialCategoryProduct(
          title: 'NEWBORN',
          subtitle: 'SEE MORE',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.newbornBoyCategory,
                ),
              ),
            );
          },
          imageUrl:
              'https://www.reserved.com/media/SHARED/stronywizerunkowe/reserved/mix/aw22/kids/newborn-october/dist/img/newborn_4.jpg',
        ),
        SpecialCategoryProduct(
          title: 'GIFT IDEAS',
          subtitle: 'BUY ONLINE',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.giftIdeasBoyCategory,
                ),
              ),
            );
          },
          imageUrl:
              'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/2/9/2946N-96X-020-2-573527_5.jpg',
        ),
        SpecialCategoryProduct(
          title: 'NEW',
          subtitle: 'BUY NOW',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.newBoyCategory,
                ),
              ),
            );
          },
          imageUrl:
              'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/3/9/3901N-01X-001-1-572765_1.jpg',
        ),
        SpecialCategoryProduct(
          title: 'JACKETS',
          subtitle: 'BUY ONLINE',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.jacketsBoyCategory,
                ),
              ),
            );
          },
          imageUrl:
              'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/4/0/4032N-99X-003-1-541739_2.jpg',
        ),
        SpecialCategoryProduct(
          title: 'FREE DELIVERY',
          subtitle: 'FOR HIM',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.freeDeliveryBoyCategory,
                ),
              ),
            );
          },
          imageUrl:
              'https://www.reserved.com/media/SHARED/stronywizerunkowe/reserved/mix/aw22/kids/eco-aware-pol/dist/img/ECO_KIDS_6a.jpg',
        ),
        SpecialCategoryProduct(
          title: 'WINTER IS COMING',
          subtitle: 'SEE MORE',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.winterIsComingBoyCategory,
                ),
              ),
            );
          },
          imageUrl:
              'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/2/1/2127Q-83X-010-1-565053_5.jpg',
        ),
        SpecialCategoryProduct(
          title: 'SHOES',
          subtitle: 'BUY ONLINE',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.shoesBoyCategory,
                ),
              ),
            );
          },
          imageUrl:
              'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/4/5/4584P-88X-001-1-541887_5.jpg',
        ),
      ],
    );
  }
}

class GirlCategoryListview extends StatelessWidget {
  const GirlCategoryListview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<ProductsProvider>(context);
    final products = productsData;
    return ListView(
      children: [
        SpecialCategoryProduct(
          title: 'LET\'S CELEBRATE',
          subtitle: 'BUY ONLINE',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.letsCelebrateGirlCategory,
                ),
              ),
            );
          },
          imageUrl:
              'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/2/8/2867N-99X-003-1-573275_2.jpg',
        ),
        SpecialCategoryProduct(
          title: 'NEWBORN',
          subtitle: 'SEE MORE',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.newbornGirlCategory,
                ),
              ),
            );
          },
          imageUrl:
              'https://www.reserved.com/media/SHARED/stronywizerunkowe/reserved/mix/aw22/kids/newborn-october/dist/img/newborn_3.jpg',
        ),
        SpecialCategoryProduct(
          title: 'GIFT IDEAS',
          subtitle: 'BUY ONLINE',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.giftIdeasGirlCategory,
                ),
              ),
            );
          },
          imageUrl:
              'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/2/9/2948N-38M-002-1-549921_6.jpg',
        ),
        SpecialCategoryProduct(
          title: 'NEW',
          subtitle: 'BUY NOW',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.newGirlCategory,
                ),
              ),
            );
          },
          imageUrl:
              'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/2/9/2947N-33X-020-2-573519_3.jpg',
        ),
        SpecialCategoryProduct(
          title: 'JACKETS',
          subtitle: 'BUY ONLINE',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.jacketsGirlCategory,
                ),
              ),
            );
          },
          imageUrl:
              'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/2/8/2891N-77X-001-1-561161_2.jpg',
        ),
        SpecialCategoryProduct(
          title: 'FREE DELIVERY',
          subtitle: 'FOR HER',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.freeDeliveryGirlCategory,
                ),
              ),
            );
          },
          imageUrl:
              'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/4/4/4442P-MLC-011-1-551725_4.jpg',
        ),
        SpecialCategoryProduct(
          title: 'WINTER IS COMING',
          subtitle: 'SEE MORE',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.winterIsComingGirlCategory,
                ),
              ),
            );
          },
          imageUrl:
              'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/2/6/2682N-39X-001-1-549913_1.jpg',
        ),
        SpecialCategoryProduct(
          title: 'DRESSES',
          subtitle: 'BUY ONLINE',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.dressesGirlCategory,
                ),
              ),
            );
          },
          imageUrl:
              'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/2/6/2666N-MLC-001-1-562427_8.jpg',
        ),
      ],
    );
  }
}

class ManCategoryListview extends StatelessWidget {
  const ManCategoryListview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<ProductsProvider>(context);
    final products = productsData;
    return ListView(
      children: [
        SpecialCategoryProduct(
          title: 'PARTY',
          subtitle: 'BUY ONLINE',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.partyManCategory,
                ),
              ),
            );
          },
          imageUrl:
              'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/1/3/1325O-99P-001-1-571355_5.jpg',
        ),
        SpecialCategoryProduct(
          title: 'FROSTYLAND',
          subtitle: 'SEE MORE',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.frostylandManCategory,
                ),
              ),
            );
          },
          imageUrl:
              'https://www.reserved.com/media/SHARED/stronywizerunkowe/reserved/mix/aw22/men/frostyland-men/dist/img/AW22-Frostyland-Men-3.jpg',
        ),
        SpecialCategoryProduct(
          title: 'GIFT IDEAS',
          subtitle: 'BUY ONLINE',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.giftIdeasManCategory,
                ),
              ),
            );
          },
          imageUrl:
              'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/4/6/4601L-MLC-020-2-572683_7.jpg',
        ),
        SpecialCategoryProduct(
          title: 'NEW',
          subtitle: 'BUY NOW',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.newManCategory,
                ),
              ),
            );
          },
          imageUrl:
              'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/6/1/6135L-79X-003-1-555405_7.jpg',
        ),
        SpecialCategoryProduct(
          title: 'COATS AND JACKETS',
          subtitle: 'BUY ONLINE',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.coatCategoryMan,
                ),
              ),
            );
          },
          imageUrl:
              'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/9/2/9280N-99X-002-1-571385.jpg',
        ),
        SpecialCategoryProduct(
          title: 'FREE DELIVERY',
          subtitle: 'FOR HIM',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.freeDeliveryManCategory,
                ),
              ),
            );
          },
          imageUrl:
              'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/1/8/1831L-99X-010-1-440401_1.jpg',
        ),
        SpecialCategoryProduct(
          title: 'RE.DESIGN',
          subtitle: 'SEE MORE',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.reDesignManCategory,
                ),
              ),
            );
          },
          imageUrl:
              'https://www.reserved.com/media/SHARED/stronywizerunkowe/reserved/mix/aw22/men/re-design/dist/img/Re_Design_AW_2022-men_2.jpg',
        ),
        SpecialCategoryProduct(
          title: 'SUITS',
          subtitle: 'BUY ONLINE',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.suitCategoryMan,
                ),
              ),
            );
          },
          imageUrl:
              'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/1/2/1291O-99X-003-1-571353_1_3.jpg',
        ),
      ],
    );
  }
}

class WomanCategoryListview extends StatelessWidget {
  const WomanCategoryListview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<ProductsProvider>(context);
    final products = productsData;
    return ListView(
      children: [
        SpecialCategoryProduct(
          title: 'PARTY',
          subtitle: 'BUY ONLINE',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.partyWomanCategory,
                ),
              ),
            );
          },
          imageUrl:
              'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/1/1/1154P-99X-004-1-572507_1.jpg',
        ),
        SpecialCategoryProduct(
          title: 'FROSTYLAND',
          subtitle: 'SEE MORE',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.frostylandWomanCategory,
                ),
              ),
            );
          },
          imageUrl:
              'https://www.reserved.com/media/SHARED/stronywizerunkowe/reserved/mix/aw22/women/frostyland-ladies/dist/img/AW22-Frostyland-Ladies-3.jpg',
        ),
        SpecialCategoryProduct(
          title: 'GIFT IDEAS',
          subtitle: 'BUY ONLINE',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.giftIdeasWomanCategory,
                ),
              ),
            );
          },
          imageUrl:
              'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/1/6/1680N-33X-020-2-573535_5.jpg',
        ),
        SpecialCategoryProduct(
          title: 'NEW',
          subtitle: 'BUY NOW',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.newWomanCategory,
                ),
              ),
            );
          },
          imageUrl:
              'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/3/8/3801P-90M-001-1-545535_8.jpg',
        ),
        SpecialCategoryProduct(
          title: 'COATS AND JACKETS',
          subtitle: 'BUY ONLINE',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.coatCategoryWoman,
                ),
              ),
            );
          },
          imageUrl:
              'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/1/5/1586N-99X-001-1-572505_1.jpg',
        ),
        SpecialCategoryProduct(
          title: 'FREE DELIVERY',
          subtitle: 'FOR HER',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.freeDeliveryWomanCategory,
                ),
              ),
            );
          },
          imageUrl:
              'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/3/7/3788P-43X-001-1-542721_5.jpg',
        ),
        SpecialCategoryProduct(
          title: 'RE.DESIGN',
          subtitle: 'SEE MORE',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.reDesignWomanCategory,
                ),
              ),
            );
          },
          imageUrl:
              'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/1/1/1154P-43X-003-1-572497_1.jpg',
        ),
        SpecialCategoryProduct(
          title: 'DRESSES',
          subtitle: 'BUY ONLINE',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.dressCategoryWoman,
                ),
              ),
            );
          },
          imageUrl:
              'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/4/6/4687B-99X-001-1-563389_2.jpg',
        ),
      ],
    );
  }
}
