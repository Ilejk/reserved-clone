import 'package:flutter/material.dart';
import 'package:reserved/widgets/text_widget_regulation_screen.dart';

class PrivacyPolicyScreenColumn extends StatelessWidget {
  const PrivacyPolicyScreenColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TextWidgetRegulationScreen(text: 'Privacy Policy'),
        TextWidgetRegulationScreen(
            text:
                'Protecting your information and respecting your privacy while using our Website is of the utmost value to us, therefore we take care to properly secure and ensure your comfort while using our websites. In this policy we explain the principles and scope of our processing of your data and what rights and obligations you have in connection with it.'),
        TextWidgetRegulationScreen(text: 'Definitions:'),
        TextWidgetRegulationScreen(
            text:
                '- Service - the online store operated at reserved.com/en/en/.'),
        TextWidgetRegulationScreen(
            text: '- User - an individual using the Site.'),
        TextWidgetRegulationScreen(
            text:
                '- LPP - LPP S.A. with its registered office in Gdańsk, Łąkowa Street 39/44, entered in the National Court Register kept by the District Court Gdańsk-North in Gdańsk, 7th Commercial Division of the National Court Register under KRS No. 778 (hereinafter: "LPP"), share capital PLN 3,704,846 (paid in full), REGON 190852164, NIP 583-10-14-898.'),
        TextWidgetRegulationScreen(
            text:
                '- RODO - Regulation (EU) 2016/679 of the European Parliament and of the Council of April 27, 2016 on the protection of natural persons with regard to the processing of personal data and on the free movement of such data and repealing Directive 95/46/EC.'),
        TextWidgetRegulationScreen(text: 'The data administrator is:'),
        TextWidgetRegulationScreen(
            text:
                'LPP S.A., located in Gdańsk, Łąkowa 39/44 Street, entered in the National Court Register kept by the District Court Gdańsk-North in Gdańsk, 7th Commercial Division of the National Court Register under KRS No. 778, share capital PLN 3,704,846 (paid in full), REGON 190852164, NIP 583-10-14-898.'),
        TextWidgetRegulationScreen(
            text:
                'LPP has appointed a Data Protection Officer whom you can contact in all matters concerning the processing of personal data and the exercise of rights related to data processing:'),
        TextWidgetRegulationScreen(
            text:
                '- by letter to: LPP S.A. Łąkowa 39/44 Street, 80-769 Gdańsk.'),
        TextWidgetRegulationScreen(
            text: '- by e-mail to: dataprivacy@lppsa.com'),
        TextWidgetRegulationScreen(
            text: 'Purposes and legal basis for processing personal data'),
        TextWidgetRegulationScreen(text: '1. Online shopping and services.'),
        TextWidgetRegulationScreen(
            text:
                'We process your data to the extent necessary to enter into and perform the sales contract and to offer our other services such as:'),
        TextWidgetRegulationScreen(
            text:
                'a.	providing the Services and mobile applications for the presentation and sale of our products.'),
        TextWidgetRegulationScreen(
            text:
                'b. providing local services, including those offered in LPP stationary stores and at events and fairs with LPP participation.'),
        TextWidgetRegulationScreen(
            text:
                'c. implementation of regular and recurring promotional programs.'),
        TextWidgetRegulationScreen(
            text:
                'd. handling concluded transactions, including, for example, payment settlement and shipment of goods.'),
        TextWidgetRegulationScreen(
            text:
                'e. providing service and realization of consumer rights, for example under warranty or return of goods, both before and after the conclusion of the sales contract, including through direct contact (telephone, e-mail),'),
        TextWidgetRegulationScreen(
            text:
                'f. providing LPP with its own: information, communications, newsletters and other direct communications.'),
        TextWidgetRegulationScreen(
            text:
                'g. ensuring the security, functionality and stability of our services at every level.'),
        TextWidgetRegulationScreen(
            text:
                'h.	Evaluating and measuring data related to the purchasing process including returns and cancellations made by the User.'),
        TextWidgetRegulationScreen(
            text:
                'i. offering, providing and implementing gift cards, as well as discounts and rebates.'),
        TextWidgetRegulationScreen(
            text:
                'j. presentation by LPP of its own products based on your fashion preferences.'),
        TextWidgetRegulationScreen(
            text:
                'In the case of conclusion and performance of a contract and provision of services you want to use - your personal data is processed on the basis of the concluded sales contract (i.e. art.6.1lit.b RODO). In other cases, the legal basis is the legitimate interest of LPP resulting from the subject of its business activity (Art.6.1lit.f RODO).'),
      ],
    );
  }
}
