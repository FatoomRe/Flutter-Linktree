import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import 'package:flutterprotfolio/app/widgets/social_buttons_items.dart';

class SocialButtonsList extends StatelessWidget {
  const SocialButtonsList({Key? key}) : super(key: key);
  void launchURL(String url) async => await launchUrl(
        Uri.parse('https://$url'),
        webOnlyWindowName: '_blank',
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialButtonsItems(
          title: 'GitHub',
          image: 'github.png',
          onTap: () => launchURL('github.com/FatoomRe'),
        ),
        const SizedBox(height: 14),
        SocialButtonsItems(
          title: 'LinkedIn',
          image: 'linkedin.png',
          onTap: () => launchURL('www.linkedin.com/in/fatimah-alabbas-ab9513237'),
        ),
        const SizedBox(height: 14),
        SocialButtonsItems(
          title: 'Instagram',
          image: 'instagram.png',
          onTap: () => launchURL('instagram.com/fatoz_'),
        ),
        const SizedBox(height: 14),
        // SocialButtonsItems(
        //   title: 'Twitter',
        //   image: 'Twitter.png',
        //   onTap: () => launchURL('twitter.com/FatoomRe'),
        // ),
      ],
    );
  }
}