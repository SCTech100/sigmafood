import 'package:flutter/material.dart';

class NoDataWidget extends StatelessWidget {
  final Widget? imageWidget;
  final String? text;
  final Color? textcolor;
  final bool visible;
  NoDataWidget(
      {Key? key,
      this.imageWidget,
      this.text,
      this.textcolor,
      this.visible = false});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          imageWidget ??
              Image.asset(
                'assets/images/nodata.png',
                height: 200,
              ),
          SizedBox(
            height: 10,
          ),
          Text(
            text ?? ('No Data'),
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: textcolor ??
                  Theme.of(context).textTheme.bodyText2?.color?.withOpacity(.2),
            ),
          ),
        ],
      )),
    );
  }
}
