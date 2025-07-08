// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'Color.dart';
//
// class SimBtn extends StatelessWidget {
//   final String? title;
//   final VoidCallback? onBtnSelected;
//   double? size;
//
//   SimBtn({Key? key, this.title, this.onBtnSelected, this.size})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     size = MediaQuery.of(context).size.width * size!;
//     return _buildBtnAnimation(context);
//   }
//
//   Widget _buildBtnAnimation(BuildContext context) {
//     return CupertinoButton(
//       child: Container(
//           width: size,
//           height: 35,
//           alignment: FractionalOffset.center,
//           decoration: new BoxDecoration(
//             color: colors.primary,
//             borderRadius: new BorderRadius.all(const Radius.circular(5.0)),
//           ),
//           child: Text(title!,
//               textAlign: TextAlign.center,
//               style: Theme.of(context).textTheme.subtitle1!.copyWith(
//                   color: colors.whiteTemp, fontWeight: FontWeight.normal))),
//       onPressed: () {
//         onBtnSelected!();
//       },
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Color.dart';

class SimBtn extends StatelessWidget {
  final String? title;
  final VoidCallback? onBtnSelected;
  final double? size;

  SimBtn({Key? key, this.title, this.onBtnSelected, this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double btnSize = (size ?? 0.2) *
        MediaQuery.of(context).size.width; // Safe size calculation
    return _buildBtnAnimation(context, btnSize);
  }

  Widget _buildBtnAnimation(BuildContext context, double btnSize) {
    return CupertinoButton(
      child: Container(
        width: btnSize,
        height: 35,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: colors.primary,
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        child: Text(
          title ?? 'Button', // Provide a fallback if title is null
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
                color: colors.whiteTemp,
                fontWeight: FontWeight.normal,
              ),
        ),
      ),
      onPressed: () {
        onBtnSelected?.call(); // Safe function call
      },
    );
  }
}
