import 'package:reserved/providers/product.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class ProductsProvider with ChangeNotifier {
  final List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Double-breasted coat',
      description:
          'Double-breasted coat with a classic cut, made of fabric with wool.',
      price: 129.99,
      imageUrl:
          'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/9/2/9280N-99X-002-1-571385.jpg',
      isCoat: true,
      isMan: true,
    ),
    Product(
      id: 'p2',
      title: 'Wool coat',
      description: 'Classic straight cut coat sewn from fabric with wool',
      price: 89.98,
      imageUrl:
          'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/9/0/9060N-90P-001-1-571731_3.jpg',
      isCoat: true,
      isMan: true,
    ),
    Product(
      id: 'p3',
      title: 'Single-breasted coat with a blend of wool',
      description:
          'Single-breasted coat with a classic cut, made of fabric with a blend of wool.',
      price: 77.56,
      imageUrl:
          'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/0/6/0691O-89M-004-1-549103_11.jpg',
      isCoat: true,
      isMan: true,
    ),
    Product(
      id: 'p4',
      title: 'Hooded jacket',
      description: 'Jacket with a regular cut, made of smooth fabric.',
      price: 59.99,
      imageUrl:
          'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/0/5/0559O-99X-001-1-570319_7.jpg',
      isJacket: true,
      isMan: true,
    ),
    Product(
      id: 'p5',
      title: 'Jacket with recycled filling',
      description:
          'Jacket with a casual cut, made of quilted fabric with recycled filling.',
      price: 99.99,
      imageUrl:
          'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/9/9/9906N-99X-002-1-564173_10.jpg',
      isMan: true,
      isJacket: true,
    ),
    Product(
      id: 'p6',
      title: 'Quilted coat',
      description: 'Coat with a simple cut, sewn from quilted fabric.',
      price: 129.99,
      imageUrl:
          'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/1/0/1063O-87X-001-1-576589_7.jpg',
      isMan: true,
      isCoat: true,
    ),
    Product(
      id: 'p7',
      title: 'Wool turtleneck',
      description: 'Turtleneck with a regular cut, made of yarn with wool.',
      price: 39.99,
      imageUrl:
          'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/1/2/1233O-33X-001-1-573581_3.jpg',
      isMan: true,
      isSweater: true,
    ),
    Product(
      id: 'p8',
      title: 'Patterned turtleneck',
      description: 'Golf o prostym kroju, wykonany z dzianiny z bawełną.',
      price: 49.59,
      imageUrl:
          'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/9/6/9618N-59P-002-1-568377_10.jpg',
      isMan: true,
      isSweater: true,
    ),
    Product(
      id: 'p9',
      title: 'Sweater with a stand-up collar',
      description: 'Sweater with a casual cut, made of cotton knit fabric.',
      price: 89.99,
      imageUrl:
          'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/4/6/4602L-59P-002-1-575253_1.jpg',
      isMan: true,
      isSweater: true,
    ),
    Product(
      id: 'p10',
      title: 'Checked chino slim fit pants',
      description: 'Chino pants, made of checkered fabric.',
      price: 69.99,
      imageUrl:
          'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/8/6/8625N-59P-001-1-552143_5.jpg',
      isMan: true,
      isSuit: true,
    ),
    Product(
      id: 'p11',
      title: 'Checked slim fit jacket',
      description: 'Jacket with a fitted cut, made of checkered fabric.',
      price: 139.59,
      imageUrl:
          'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/0/8/0819O-59P-003-1-552103_7.jpg',
      isMan: true,
      isSuit: true,
    ),
    Product(
      id: 'p12',
      title: 'Slim fit jacket',
      description:
          'Jacket with a tailored cut sewn from a pleasant to the touch, structured fabric.',
      price: 159.96,
      imageUrl:
          'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/0/8/0812O-57M-001-1-552101_4.jpg',
      isMan: true,
      isSuit: true,
    ),
    Product(
      id: 'p13',
      title: 'Slim fit pants',
      description: 'Pants with a tailored cut, made of fabric with viscose.',
      price: 69.69,
      imageUrl:
          'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/1/1/1105O-57M-001-1-552117.jpg',
      isMan: true,
      isSuit: true,
    ),
    Product(
      id: 'p14',
      title: 'Egyptian cotton shirt',
      description:
          'A shirt with a fitted cut, sewn from Egyptian cotton with added elastic fibers.',
      price: 57.77,
      imageUrl:
          'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/0/2/0221O-00X-001-1-558841_5.jpg',
      isMan: true,
      isShirt: true,
    ),
    Product(
      id: 'p15',
      title: 'Egyptian cotton shirt',
      description:
          'A shirt with a fitted cut, sewn from Egyptian cotton with added elastic fibers.',
      price: 67.77,
      imageUrl:
          'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/0/2/0221O-99X-001-1-558775_1.jpg',
      isMan: true,
      isShirt: true,
    ),
    Product(
      id: 'p16',
      title: 'Regular fit shirt',
      description: 'Shirt with a regular cut, made of cotton fabric.',
      price: 39.99,
      imageUrl:
          'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/0/2/0220O-87X-004-1-568043_2.jpg',
      isMan: true,
      isShirt: true,
    ),
    Product(
      id: 'p17',
      title: 'Printed regular T-shirt',
      description:
          'T-shirt with regular cut, made of thicker cotton knit fabric.',
      price: 19.99,
      imageUrl:
          'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/5/6/5606L-99X-010-1-577009_3.jpg',
      isMan: true,
      isTShirt: true,
    ),
    Product(
      id: 'p18',
      title: 'Printed regular T-shirt',
      description:
          'T-shirt with regular cut, made of thicker cotton knit fabric.',
      price: 19.99,
      imageUrl:
          'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/1/2/1254O-99X-010-1-565895_8.jpg',
      isMan: true,
      isTShirt: true,
    ),
    Product(
      id: 'p19',
      title: 'Printed regular T-shirt',
      description:
          'T-shirt with regular cut, made of thicker cotton knit fabric.',
      price: 19.99,
      imageUrl:
          'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/8/9/8911N-99X-001-1-568335_5.jpg',
      isMan: true,
      isTShirt: true,
    ),
    Product(
      id: 'p20',
      title: 'Hooded sweatshirt with a zip-up hood',
      description: 'Sweatshirt with a casual cut, made of fabric with viscose.',
      price: 89.99,
      imageUrl:
          'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/0/0/0072O-99X-001-1-569351_3.jpg',
      isMan: true,
      isHoodie: true,
    ),
    Product(
      id: 'p21',
      title: 'Hooded sweatshirt with a zip-up hood',
      description: 'Sweatshirt with a casual cut, made of fabric with viscose.',
      price: 89.99,
      imageUrl:
          'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/0/0/0072O-88X-004-1-568061_1.jpg',
      isMan: true,
      isHoodie: true,
    ),
    Product(
      id: 'p22',
      title: 'Corduroy chino pants',
      description: 'Pants with a tailored cut, made of corduroy cotton fabric.',
      price: 129.99,
      imageUrl:
          'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/3/1/3135L-99X-001-1-572905_4.jpg',
      isMan: true,
      isPants: true,
    ),
    Product(
      id: 'p23',
      title: 'Corduroy chino pants',
      description: 'Pants with a tailored cut, made of corduroy cotton fabric.',
      price: 129.99,
      imageUrl:
          'https://static.reserved.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/3/1/3135L-85X-001-1-571359_5.jpg',
      isMan: true,
      isPants: true,
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  List<Product> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  List<Product> get pantsCategoryWoman {
    return _items
        .where((prodItem) => prodItem.isPants && prodItem.isWoman)
        .toList();
  }

  List<Product> get hoodieCategoryWoman {
    return _items
        .where((prodItem) => prodItem.isHoodie && prodItem.isWoman)
        .toList();
  }

  List<Product> get dressCategoryWoman {
    return _items
        .where((prodItem) => prodItem.isDress && prodItem.isWoman)
        .toList();
  }

  List<Product> get skirtCategoryWoman {
    return _items
        .where((prodItem) => prodItem.isSkirt && prodItem.isWoman)
        .toList();
  }

  List<Product> get suitCategoryWoman {
    return _items
        .where((prodItem) => prodItem.isSuit && prodItem.isWoman)
        .toList();
  }

  List<Product> get tShirtCategoryWoman {
    return _items
        .where((prodItem) => prodItem.isTShirt && prodItem.isWoman)
        .toList();
  }

  List<Product> get topCategoryWoman {
    return _items
        .where((prodItem) => prodItem.isTop && prodItem.isWoman)
        .toList();
  }

  List<Product> get shirtCategoryWoman {
    return _items
        .where((prodItem) => prodItem.isSkirt && prodItem.isWoman)
        .toList();
  }

  List<Product> get coatCategoryWoman {
    return _items
        .where((prodItem) => prodItem.isCoat && prodItem.isWoman)
        .toList();
  }

  List<Product> get blouseCategoryWoman {
    return _items
        .where((prodItem) => prodItem.isBlouse && prodItem.isWoman)
        .toList();
  }

  List<Product> get shoesCategoryWoman {
    return _items
        .where((prodItem) => prodItem.isShoes && prodItem.isWoman)
        .toList();
  }

  List<Product> get sweaterCategoryWoman {
    return _items
        .where((prodItem) => prodItem.isSweater && prodItem.isWoman)
        .toList();
  }

  List<Product> get pantsCategoryMan {
    return _items
        .where((prodItem) => prodItem.isPants && prodItem.isMan)
        .toList();
  }

  List<Product> get hoodieCategoryMan {
    return _items
        .where((prodItem) => prodItem.isHoodie && prodItem.isMan)
        .toList();
  }

  List<Product> get suitCategoryMan {
    return _items
        .where((prodItem) => prodItem.isSuit && prodItem.isMan)
        .toList();
  }

  List<Product> get tShirtCategoryMan {
    return _items
        .where((prodItem) => prodItem.isTShirt && prodItem.isMan)
        .toList();
  }

  List<Product> get shirtCategoryMan {
    return _items
        .where((prodItem) => prodItem.isShirt && prodItem.isMan)
        .toList();
  }

  List<Product> get coatCategoryMan {
    return _items
        .where((prodItem) => prodItem.isCoat && prodItem.isMan)
        .toList();
  }

  List<Product> get shoesCategoryMan {
    return _items
        .where((prodItem) => prodItem.isShoes && prodItem.isMan)
        .toList();
  }

  List<Product> get sweaterCategoryMan {
    return _items
        .where((prodItem) => prodItem.isSweater && prodItem.isMan)
        .toList();
  }

  List<Product> get freeDeliveryManCategory {
    return _items.where((prodItem) => prodItem.isFreeDeliveryMan).toList();
  }

  List<Product> get freeDeliveryWomanCategory {
    return _items.where((prodItem) => prodItem.isFreeDeliveryWoman).toList();
  }

  List<Product> get freeDeliveryGirlCategory {
    return _items.where((prodItem) => prodItem.isFreeDeliveryGirl).toList();
  }

  List<Product> get freeDeliveryBoyCategory {
    return _items.where((prodItem) => prodItem.isFreeDeliveryBoy).toList();
  }

  List<Product> get newbornGirlCategory {
    return _items.where((prodItem) => prodItem.isNewbornGirl).toList();
  }

  List<Product> get newbornBoyCategory {
    return _items.where((prodItem) => prodItem.isNewbornBoy).toList();
  }

  List<Product> get frostylandManCategory {
    return _items.where((prodItem) => prodItem.isFrostyLandMan).toList();
  }

  List<Product> get frostylandWomanCategory {
    return _items.where((prodItem) => prodItem.isFrostyLandWoman).toList();
  }

  List<Product> get newManCategory {
    return _items.where((prodItem) => prodItem.isNewMan).toList();
  }

  List<Product> get newWomanCategory {
    return _items.where((prodItem) => prodItem.isNewWoman).toList();
  }

  List<Product> get newGirlCategory {
    return _items.where((prodItem) => prodItem.isNewGirl).toList();
  }

  List<Product> get newBoyCategory {
    return _items.where((prodItem) => prodItem.isNewBoy).toList();
  }

  List<Product> get winterIsComingBoyCategory {
    return _items.where((prodItem) => prodItem.isWinterIsComingBoy).toList();
  }

  List<Product> get winterIsComingGirlCategory {
    return _items.where((prodItem) => prodItem.isWinterIsComingGirl).toList();
  }

  List<Product> get partyManCategory {
    return _items.where((prodItem) => prodItem.isPartyMan).toList();
  }

  List<Product> get partyWomanCategory {
    return _items.where((prodItem) => prodItem.isPartyWoman).toList();
  }

  List<Product> get giftIdeasManCategory {
    return _items.where((prodItem) => prodItem.isGiftIdeasMan).toList();
  }

  List<Product> get giftIdeasWomanCategory {
    return _items.where((prodItem) => prodItem.isGiftIdeasWoman).toList();
  }

  List<Product> get giftIdeasGirlCategory {
    return _items.where((prodItem) => prodItem.isGiftIdeasGirl).toList();
  }

  List<Product> get giftIdeasBoyCategory {
    return _items.where((prodItem) => prodItem.isGiftIdeasBoy).toList();
  }

  List<Product> get letsCelebrateGirlCategory {
    return _items.where((prodItem) => prodItem.isLetsCelebrateGirl).toList();
  }

  List<Product> get letsCelebrateBoyCategory {
    return _items.where((prodItem) => prodItem.isLetsCelebrateBoy).toList();
  }

  List<Product> get reDesignWomanCategory {
    return _items.where((prodItem) => prodItem.isReDesignWoman).toList();
  }

  List<Product> get reDesignManCategory {
    return _items.where((prodItem) => prodItem.isReDesignMan).toList();
  }

  List<Product> get blancaCategory {
    return _items.where((prodItem) => prodItem.isBlanca).toList();
  }

  List<Product> get jeansCategoryMan {
    return _items
        .where((prodItem) => prodItem.isJeans && prodItem.isMan)
        .toList();
  }

  List<Product> get jeansCategoryWoman {
    return _items
        .where((prodItem) => prodItem.isJeans && prodItem.isWoman)
        .toList();
  }

  List<Product> get shortsCategoryMan {
    return _items
        .where((prodItem) => prodItem.isShorts && prodItem.isMan)
        .toList();
  }

  List<Product> get shortsCategoryWoman {
    return _items
        .where((prodItem) => prodItem.isShorts && prodItem.isWoman)
        .toList();
  }

  List<Product> get bagCategoryMan {
    return _items
        .where((prodItem) => prodItem.isBag && prodItem.isMan)
        .toList();
  }

  List<Product> get bagCategoryWoman {
    return _items
        .where((prodItem) => prodItem.isBag && prodItem.isWoman)
        .toList();
  }

  List<Product> get hatCategoryMan {
    return _items
        .where((prodItem) => prodItem.isHat && prodItem.isMan)
        .toList();
  }

  List<Product> get hatCategoryWoman {
    return _items
        .where((prodItem) => prodItem.isHat && prodItem.isWoman)
        .toList();
  }

  List<Product> get beltCategoryMan {
    return _items
        .where((prodItem) => prodItem.isBelt && prodItem.isMan)
        .toList();
  }

  List<Product> get beltCategoryWoman {
    return _items
        .where((prodItem) => prodItem.isBelt && prodItem.isWoman)
        .toList();
  }

  List<Product> get unisexCategoryMan {
    return _items
        .where((prodItem) => prodItem.isUnisex && prodItem.isMan)
        .toList();
  }

  List<Product> get unisexCategoryWoman {
    return _items
        .where((prodItem) => prodItem.isUnisex && prodItem.isWoman)
        .toList();
  }

  List<Product> get walletCategoryMan {
    return _items
        .where((prodItem) => prodItem.isWallets && prodItem.isMan)
        .toList();
  }

  List<Product> get walletCategoryWoman {
    return _items
        .where((prodItem) => prodItem.isWallets && prodItem.isWoman)
        .toList();
  }

  List<Product> get glassesCategoryMan {
    return _items
        .where((prodItem) => prodItem.isGlasses && prodItem.isMan)
        .toList();
  }

  List<Product> get glassesCategoryWoman {
    return _items
        .where((prodItem) => prodItem.isGlasses && prodItem.isWoman)
        .toList();
  }

  List<Product> get pjCategoryMan {
    return _items
        .where((prodItem) => prodItem.isPjs && prodItem.isMan)
        .toList();
  }

  List<Product> get pjCategoryWoman {
    return _items
        .where((prodItem) => prodItem.isPjs && prodItem.isWoman)
        .toList();
  }

  List<Product> get sockCategoryMan {
    return _items
        .where((prodItem) => prodItem.isSocks && prodItem.isMan)
        .toList();
  }

  List<Product> get sockCategoryWoman {
    return _items
        .where((prodItem) => prodItem.isSocks && prodItem.isWoman)
        .toList();
  }

  List<Product> get denimCategoryMan {
    return _items
        .where((prodItem) => prodItem.isDenim && prodItem.isMan)
        .toList();
  }

  List<Product> get denimCategoryWoman {
    return _items
        .where((prodItem) => prodItem.isDenim && prodItem.isWoman)
        .toList();
  }

  List<Product> get braCategory {
    return _items.where((prodItem) => prodItem.isBra).toList();
  }

  List<Product> get thongCategory {
    return _items.where((prodItem) => prodItem.isThong).toList();
  }

  List<Product> get underwearCategory {
    return _items.where((prodItem) => prodItem.isUnderwear).toList();
  }

  List<Product> get poloCategory {
    return _items.where((prodItem) => prodItem.isPolo).toList();
  }

  List<Product> get basicCategory {
    return _items.where((prodItem) => prodItem.isBasic).toList();
  }

  List<Product> get bodyCategory {
    return _items.where((prodItem) => prodItem.isBody).toList();
  }

  List<Product> get jewelleryCategoryMan {
    return _items
        .where((prodItem) => prodItem.isJewellery && prodItem.isMan)
        .toList();
  }

  List<Product> get jewelleryCategoryWoman {
    return _items
        .where((prodItem) => prodItem.isJewellery && prodItem.isWoman)
        .toList();
  }

  List<Product> get shoesGirlCategory {
    return _items
        .where((prodItem) => prodItem.isShoes && prodItem.isGirl)
        .toList();
  }

  List<Product> get bodyGirlCategory {
    return _items
        .where((prodItem) => prodItem.isBody && prodItem.isGirl)
        .toList();
  }

  List<Product> get dressesGirlCategory {
    return _items
        .where((prodItem) => prodItem.isDress && prodItem.isGirl)
        .toList();
  }

  List<Product> get skirtGirlCategory {
    return _items
        .where((prodItem) => prodItem.isSkirt && prodItem.isGirl)
        .toList();
  }

  List<Product> get jacketsGirlCategory {
    return _items
        .where((prodItem) => prodItem.isJacket && prodItem.isGirl)
        .toList();
  }

  List<Product> get seeAllGirlCategory {
    return _items.where((prodItem) => prodItem.isGirl).toList();
  }

  List<Product> get pjCategoryGirl {
    return _items
        .where((prodItem) => prodItem.isPjs && prodItem.isGirl)
        .toList();
  }

  List<Product> get hatsCategoryGirl {
    return _items
        .where((prodItem) => prodItem.isHat && prodItem.isGirl)
        .toList();
  }

  List<Product> get jeansCategoryGirl {
    return _items
        .where((prodItem) => prodItem.isJeans && prodItem.isGirl)
        .toList();
  }

  List<Product> get pantsCategoryGirl {
    return _items
        .where((prodItem) => prodItem.isPants && prodItem.isGirl)
        .toList();
  }

  List<Product> get blousesCategoryGirl {
    return _items
        .where((prodItem) => prodItem.isBlouse && prodItem.isGirl)
        .toList();
  }

  List<Product> get tShirtCategoryGirl {
    return _items
        .where((prodItem) => prodItem.isTShirt && prodItem.isGirl)
        .toList();
  }

  List<Product> get sweatersCategoryGirl {
    return _items
        .where((prodItem) => prodItem.isSweater && prodItem.isGirl)
        .toList();
  }

  List<Product> get socksCategoryGirl {
    return _items
        .where((prodItem) => prodItem.isSocks && prodItem.isGirl)
        .toList();
  }

  List<Product> get bagsCategoryGirl {
    return _items
        .where((prodItem) => prodItem.isBag && prodItem.isGirl)
        .toList();
  }

  List<Product> get hoodieCategoryGirl {
    return _items
        .where((prodItem) => prodItem.isHoodie && prodItem.isGirl)
        .toList();
  }

  List<Product> get shoesBoyCategory {
    return _items
        .where((prodItem) => prodItem.isShoes && prodItem.isBoy)
        .toList();
  }

  List<Product> get bodyBoyCategory {
    return _items
        .where((prodItem) => prodItem.isBody && prodItem.isBoy)
        .toList();
  }

  List<Product> get suitBoyCategory {
    return _items
        .where((prodItem) => prodItem.isSuit && prodItem.isBoy)
        .toList();
  }

  List<Product> get jacketsBoyCategory {
    return _items
        .where((prodItem) => prodItem.isJacket && prodItem.isBoy)
        .toList();
  }

  List<Product> get seeAllBoyCategory {
    return _items.where((prodItem) => prodItem.isBoy).toList();
  }

  List<Product> get pjCategoryBoy {
    return _items
        .where((prodItem) => prodItem.isPjs && prodItem.isBoy)
        .toList();
  }

  List<Product> get hatsCategoryBoy {
    return _items
        .where((prodItem) => prodItem.isHat && prodItem.isBoy)
        .toList();
  }

  List<Product> get jeansCategoryBoy {
    return _items
        .where((prodItem) => prodItem.isJeans && prodItem.isBoy)
        .toList();
  }

  List<Product> get pantsCategoryBoy {
    return _items
        .where((prodItem) => prodItem.isPants && prodItem.isBoy)
        .toList();
  }

  List<Product> get shirtCategoryBoy {
    return _items
        .where((prodItem) => prodItem.isShirt && prodItem.isBoy)
        .toList();
  }

  List<Product> get tShirtCategoryBoy {
    return _items
        .where((prodItem) => prodItem.isTShirt && prodItem.isBoy)
        .toList();
  }

  List<Product> get sweatersCategoryBoy {
    return _items
        .where((prodItem) => prodItem.isSweater && prodItem.isBoy)
        .toList();
  }

  List<Product> get socksCategoryBoy {
    return _items
        .where((prodItem) => prodItem.isSocks && prodItem.isBoy)
        .toList();
  }

  List<Product> get bagsCategoryBoy {
    return _items
        .where((prodItem) => prodItem.isBag && prodItem.isBoy)
        .toList();
  }

  List<Product> get hoodieCategoryBoy {
    return _items
        .where((prodItem) => prodItem.isHoodie && prodItem.isBoy)
        .toList();
  }
}
