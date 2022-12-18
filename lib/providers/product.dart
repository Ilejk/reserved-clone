import 'package:flutter/material.dart';
import 'dart:convert';

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite;
  bool isWoman;
  bool isMan;
  bool isGirl;
  bool isBoy;
  bool isShirt;
  bool isTShirt;
  bool isPants;
  bool isSkirt;
  bool isDress;
  bool isShoes;
  bool isHoodie;
  bool isCoat;
  bool isJacket;
  bool isSweater;
  bool isSuit;
  bool isBlouse;
  bool isTop;
  bool isNew;
  bool isPartyWoman;
  bool isFrostyLandWoman;
  bool isGiftIdeasWoman;
  bool isNewWoman;
  bool isFreeDeliveryWoman;
  bool isReDesignWoman;
  bool isPartyMan;
  bool isFrostyLandMan;
  bool isGiftIdeasMan;
  bool isNewMan;
  bool isFreeDeliveryMan;
  bool isReDesignMan;
  bool isLetsCelebrateGirl;
  bool isNewbornGirl;
  bool isGiftIdeasGirl;
  bool isNewGirl;
  bool isFreeDeliveryGirl;
  bool isWinterIsComingGirl;
  bool isLetsCelebrateBoy;
  bool isNewbornBoy;
  bool isGiftIdeasBoy;
  bool isNewBoy;
  bool isFreeDeliveryBoy;
  bool isWinterIsComingBoy;
  bool isJeans;
  bool isPolo;
  bool isHat;
  bool isShorts;
  bool isSocks;
  bool isBra;
  bool isDenim;
  bool isWallets;
  bool isJewellery;
  bool isBelt;
  bool isGlasses;
  bool isBag;
  bool isBody;
  bool isPjs;
  bool isUnisex;
  bool isBasic;
  bool isUnderwear;
  bool isThong;
  bool isBlanca;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    this.isFavorite = false,
    this.isWoman = false,
    this.isMan = false,
    this.isGirl = false,
    this.isBoy = false,
    this.isShirt = false,
    this.isTShirt = false,
    this.isPants = false,
    this.isSkirt = false,
    this.isDress = false,
    this.isShoes = false,
    this.isHoodie = false,
    this.isCoat = false,
    this.isJacket = false,
    this.isSweater = false,
    this.isSuit = false,
    this.isBlouse = false,
    this.isTop = false,
    this.isNew = false,
    this.isFreeDeliveryBoy = false,
    this.isFreeDeliveryGirl = false,
    this.isFreeDeliveryMan = false,
    this.isFreeDeliveryWoman = false,
    this.isFrostyLandMan = false,
    this.isFrostyLandWoman = false,
    this.isNewbornBoy = false,
    this.isNewbornGirl = false,
    this.isNewBoy = false,
    this.isNewGirl = false,
    this.isNewMan = false,
    this.isNewWoman = false,
    this.isWinterIsComingBoy = false,
    this.isWinterIsComingGirl = false,
    this.isPartyMan = false,
    this.isPartyWoman = false,
    this.isGiftIdeasBoy = false,
    this.isGiftIdeasGirl = false,
    this.isGiftIdeasMan = false,
    this.isGiftIdeasWoman = false,
    this.isLetsCelebrateBoy = false,
    this.isLetsCelebrateGirl = false,
    this.isReDesignMan = false,
    this.isReDesignWoman = false,
    this.isJeans = false,
    this.isShorts = false,
    this.isBag = false,
    this.isHat = false,
    this.isBelt = false,
    this.isGlasses = false,
    this.isWallets = false,
    this.isJewellery = false,
    this.isBra = false,
    this.isThong = false,
    this.isBody = false,
    this.isPjs = false,
    this.isSocks = false,
    this.isUnderwear = false,
    this.isBlanca = false,
    this.isUnisex = false,
    this.isBasic = false,
    this.isPolo = false,
    this.isDenim = false,
  });

  void toggleFavoriteScreen(String userId) {
    final oldStatus = isFavorite;
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
