import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_static_maps_controller/google_static_maps_controller.dart';
import 'package:ionicons/ionicons.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../style.dart';
import '../widgets/global_padding_wrapper.dart';

// ignore_for_file: public_member_api_docs
class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GlobalPaddingWrapper(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'DROP US A MESSAGE',
            style: textStyleBodyTitle,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: insetMedium.h,
          ),
          ContactCard(),
          // Flexible(
          //   child: Container(
          //     child: SvgPictureWrapper(
          //       padding: 0,
          //       assetLocation: 'assets/images/contact.svg',
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  const ContactCard({
    Key? key,
  }) : super(key: key);

  void _launchURL(String url) async => launch(url);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: 12,
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: EdgeInsets.all(insetLarge),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _buildIconRow(
                  icon: Ionicons.logo_whatsapp,
                  text: '+62 895-2569-9078',
                  onClick: () => _launchURL(
                      'https://api.whatsapp.com/send/?phone=6289525699078&text=Info:+software+development'),
                ),
                SizedBox(height: insetMedium),
                _buildIconRow(
                  icon: Ionicons.mail_outline,
                  text: 'info@meimodev.com',
                  // ignore: lines_longer_than_80_chars
                  onClick: () =>
                      _launchURL('mailto:info@meimodev.com,edotanod@gmail.com'),
                ),
                SizedBox(height: insetMedium),
                _buildIconRow(
                  icon: Ionicons.logo_instagram,
                  // ignore: lines_longer_than_80_chars
                  text: '@meimodev',
                  onClick: () => _launchURL('www.instagram.com'),
                ),
              ],
            ),
            SizedBox(
              height: insetMedium,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _buildIconRow(
                  icon: Ionicons.map_outline,
                  text: 'BBOLD, Pasar bawah, Tondano',
                  onClick: () =>
                      _launchURL('https://goo.gl/maps/qbMcPTNFkcUrbKDj6'),
                ),
                SizedBox(
                  height: insetMedium,
                ),
                Container(
                  height: ScreenSizes(context).height * 0.25,
                  child: StaticMap(
                    format: MapImageFormat.png32,
                    zoom: 15,
                    center: Location(
                      1.3033521079991492,
                      124.91062835268241,
                    ),
                    scaleToDevicePixelRatio: true,
                    googleApiKey: "AIzaSyCDd2WK7uLJYjutxbPxObYJjO5S3j98NtI",
                    markers: <Marker>[
                      Marker(
                        color: Colors.red,
                        locations: [
                          Location(
                            1.3033521079991492,
                            124.91062835268241,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconRow({
    required IconData icon,
    required String text,
    required VoidCallback onClick,
  }) =>
      MaterialButton(
        animationDuration: Duration(milliseconds: 1000),
        padding: EdgeInsets.all(18),
        shape: ContinuousRectangleBorder(
          side: BorderSide(
            color: colorTextDark,
            width: .5,
          ),
          borderRadius: BorderRadius.circular(18),
        ),
        onPressed: onClick,
        child: Row(
          textBaseline: TextBaseline.ideographic,
          children: [
            Icon(icon),
            SizedBox(
              width: 9,
            ),
            Text(
              text,
              style: textStyleBodySubTitle.copyWith(
                color: colorTextDark,
              ),
              maxLines: 2,
              textAlign: TextAlign.start,
            ),
          ],
        ),
      );
}
