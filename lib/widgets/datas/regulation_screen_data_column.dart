import 'package:flutter/material.dart';
import 'package:reserved/widgets/text_widget_regulation_screen.dart';

class RegulationScreenColumn extends StatelessWidget {
  const RegulationScreenColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TextWidgetRegulationScreen(
          text: '1. Entrepreneur, contact',
        ),
        TextWidgetRegulationScreen(
          text:
              '1.1 The entity operating the online store via the Internet, operating at www.reserved.com is LPP S.A. located in Gdańsk, ul. Łąkowa 39/44 (hereinafter referred to as "LPP"), entered in the Register of Entrepreneurs of the National Court Register kept by the District Court Gdańsk - North, VII Commercial Department of the National Court Register under KRS number: 0000000778, having REGON: 190852164, NIP: 583-10-14-898, share capital PLN 3,704,846, paid in full.',
        ),
        TextWidgetRegulationScreen(
          text:
              '1.2 The customer can contact the operator of the online store in any of the following ways:',
        ),
        TextWidgetRegulationScreen(
          text:
              '- at E-shop Reserved.com, 12 Długie Ogrody Street, 80-769 Gdańsk,',
        ),
        TextWidgetRegulationScreen(
          text:
              '- by phone at the hotline number for landlines and cell phones: 58 353 63 63 (cost according to the operator\'s tariff),',
        ),
        TextWidgetRegulationScreen(
          text: '- via e-mail at: support.pl@reserved.com,',
        ),
        TextWidgetRegulationScreen(
          text: '- via the contact form on the online store website.',
        ),
        TextWidgetRegulationScreen(
          text: '2 General rules of using Reserved online store',
        ),
        TextWidgetRegulationScreen(
          text:
              '2.1 The online store may be used only by persons who are at least 18 years old.',
        ),
        TextWidgetRegulationScreen(
            text:
                '2.2 Persons registering in the online store and making purchases there provide their personal data, which LPP processes according to the principles indicated in the Privacy Policy.'),
        TextWidgetRegulationScreen(text: '3. Ordering of goods'),
        TextWidgetRegulationScreen(
            text:
                '3.1 Orders are accepted through the website www.reserved.com/pl/pl/.'),
        TextWidgetRegulationScreen(
            text:
                '3.2 Goods in the online store are marked in detail. The website contains, among other things, information about the properties of the goods, their price, the material from which they are made, approximate availability in stationary stores.'),
        TextWidgetRegulationScreen(
            text:
                '3.3 When ordering goods, the customer selects the goods in a manner appropriate to the item, specifying, in particular, the size, color, number of pieces, and, if necessary, providing other specific information.'),
        TextWidgetRegulationScreen(
            text: '4. How to buy in the online store - detailed instructions'),
        TextWidgetRegulationScreen(
            text:
                '4.1 After the customer selects the goods in a given size, click the "To cart" icon.'),
        TextWidgetRegulationScreen(
            text:
                '4.2 The product is transferred to the shopping cart, which is visible in the upper right corner of the page. After selecting "Go to checkout", if the Customer is not yet logged in, he is transferred to the login / account creation panel.'),
        TextWidgetRegulationScreen(
            text:
                '4.3 In the login / account creation panel, enter the Customer\'s data necessary to complete the transaction and ship the ordered goods.'),
        TextWidgetRegulationScreen(
            text:
                '4.4 After creating an account / logging in, the Customer gains access to additional options in the Customer panel, such as: order history; the ability to check at what stage the last placed order is; saving shipping addresses; the ability to receive up-to-date information about products from the store.'),
        TextWidgetRegulationScreen(
            text:
                '4.5 After choosing the method of delivery (to the given address or to the Reserved store of your choice) and entering all the necessary data (including, possibly, the invoice data), you should choose the method of payment.'),
        TextWidgetRegulationScreen(
            text:
                '4.6 The customer has the option to select one of the currently available payment methods in the section - Select payment - online payment or pay for the shipment on delivery.'),
        TextWidgetRegulationScreen(
            text:
                '4.7 Note: Payment on delivery is not possible if you choose to pick up the goods in a stationary salon.'),
        TextWidgetRegulationScreen(
            text:
                '4.8 The customer confirms the order by clicking on the "Buy and pay" button.'),
        TextWidgetRegulationScreen(
            text:
                '4.9. If the customer has chosen online payment, after payment is made, he is redirected to the order confirmation page, from which he can continue shopping or go to the order summary.'),
        TextWidgetRegulationScreen(
            text:
                '4.10. If online payment is not received by LPP, the order is not considered to have been properly placed, which means that the contract does not come into effect and the order will not be fulfilled.'),
        TextWidgetRegulationScreen(
            text:
                '4.11. At any stage of the ordering process, until payment is made, you can cancel the order by stopping going through the steps and exiting the ordering subpage. An order whose placement process is not brought to completion by the Customer shall be considered cancelled and will not be processed.'),
        TextWidgetRegulationScreen(
            text:
                '4.12 Immediately after placing an order, an e-mail confirming the order will be sent to the Customer\'s e-mail address provided in the login data. In the content of this message, the Customer will receive an individualized order number, the provision of which makes it possible, among other things, to determine the status of the order.'),
        TextWidgetRegulationScreen(
            text:
                '4.13. LPP may contact the Customer at the e-mail address provided by the Customer or by telephone, at the contact telephone number provided by the Customer, in order to clarify doubts, confirm the placement of the order or on any other issues related to the order. '),
        TextWidgetRegulationScreen(text: '5. Prices'),
        TextWidgetRegulationScreen(
            text:
                '5.1 Prices on the site of the online store given in Polish zloty are gross prices, including VAT.'),
        TextWidgetRegulationScreen(
            text:
                '5.2. to the price of goods shipping cost is added, the amount of which depends on the selected form of delivery and payment.'),
        TextWidgetRegulationScreen(
            text:
                '5.3 The price shown on the site at the time of placing an order is the final price, binding for both the Customer and LPP. Once the order has been placed, the price of the ordered goods will not change, regardless of price changes introduced by LPP or promotional or sales campaigns launched.'),
        TextWidgetRegulationScreen(
            text:
                '5.4 LPP reserves the right to change prices of goods in the online store, introduce new goods for sale, carry out and cancel promotional campaigns on the store\'s pages or make changes to them.'),
      ],
    );
  }
}
