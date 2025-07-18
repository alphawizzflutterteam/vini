import 'package:cached_network_image/cached_network_image.dart';
import 'package:vini/Helper/Session.dart';
import 'package:vini/Screen/Review_Preview.dart';
import 'package:flutter/material.dart';

import '../Model/Section_Model.dart';
import 'Product_Detail.dart';

class ReviewGallary extends StatefulWidget {
  final Product? model;

  const ReviewGallary({Key? key, this.model}) : super(key: key);

  @override
  _ReviewImageState createState() => _ReviewImageState();
}

class _ReviewImageState extends State<ReviewGallary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(getTranslated(context, 'REVIEW_BY_CUST')!, context),
      body: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3,
          childAspectRatio: 1,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          padding: EdgeInsets.all(20),
          children: List.generate(
            revImgList.length,
            (index) {
              return InkWell(
                child: FadeInImage(
                  image: CachedNetworkImageProvider(revImgList[index].img!),
                  imageErrorBuilder: (context, error, stackTrace) =>
                      erroWidget(double.maxFinite),
                  placeholder: AssetImage(
                    "assets/images/sliderph.png",
                  ),
                  fit: BoxFit.cover,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                          pageBuilder: (_, __, ___) => ReviewPreview(
                                index: index,
                                model: widget.model,
                              )));
                },
              );
            },
          )),
    );
  }
}
