import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ritmos_de_violao_premium/styles/app_colors.dart';
import 'package:ritmos_de_violao_premium/styles/app_dimens.dart';
import 'package:ritmos_de_violao_premium/styles/app_fonts.dart';


class ElevatedButtonCustom extends StatefulWidget{
  final VoidCallback? onPressed;
  final String text;
  final double elevation;
  Color color;
  final bool isEnabled;
  Color textColor;
  Color borderColor;
  bool isBorder;
  bool aplicarCorCustomizada;
  final bool themeLight;
  final bool animacao1;
  final bool customText;
  final Widget? customTextWidget;
  final BorderRadius? borderRadius;
  final String? iconePrefix;
  final Color? iconePrefixColor;
  final EdgeInsets? peddingPrefixIcon;
  bool isLoading;

  ElevatedButtonCustom({
    required this.onPressed,
    required this.text,
    this.color = ColorsApp.primary,
    this.textColor = Colors.white,
    this.borderColor = Colors.white,
    this.peddingPrefixIcon,
    this.elevation = 3,
    this.iconePrefixColor = Colors.white,
    this.themeLight = false,
    this.isBorder = false,
    this.animacao1 = true,
    this.isLoading = false,
    this.iconePrefix,
    this.customText = false,
    this.customTextWidget,
    this.aplicarCorCustomizada = false,
    this.borderRadius,
    this.isEnabled = true,

  });

  @override
  State<ElevatedButtonCustom> createState() => _ElevatedButtonCustomState();
}

class _ElevatedButtonCustomState extends State<ElevatedButtonCustom> with SingleTickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {

    if(!widget.aplicarCorCustomizada){
      if(widget.themeLight){
        widget.color = Colors.white;
        widget.textColor = Colors.blue;
        widget.isBorder = true;
        widget.borderColor  = Colors.blue;
      }else{
        widget.color = Colors.blue;
        widget.textColor = Colors.white;
      }

    }

    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      width: size.width * 0.9,
      height: isTableOrIpad(context) ? getReferenceHeight(context) * 0.87
          : getReferenceHeight(context) * 0.97,
      child: ElevatedButton(
        onPressed: () => widget.isEnabled ? onPressedButton() : null,
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.resolveWith((states) {
            if(!widget.isEnabled){
              return Colors.transparent;
            }
            return widget.themeLight ? ColorsApp.primaryLight.withAlpha(55) : Colors.white70;
          }),
          elevation: MaterialStateProperty.all(!widget.isEnabled ? 0 : widget.elevation),
          backgroundColor: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
            if(!widget.isEnabled){
              return Colors.grey[200];
            }
            return widget.color;
          }),
          side: MaterialStateProperty.all(BorderSide(
            width: widget.isBorder ? 1 : 0,
            color: widget.isBorder ? !widget.isEnabled ? Colors.transparent : widget.borderColor : Colors.white10,
            style: BorderStyle.solid
          )),
          foregroundColor: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
            return !widget.isEnabled ? Colors.grey : widget.textColor;
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: widget.borderRadius != null ? widget.borderRadius as BorderRadius :
                      BorderRadius.circular(getReferenceHeight(context) * 0.1)
                )
            )
        ),
        child: !widget.isLoading ? Container(
          // color: Colors.blue,
          child: LayoutBuilder(
              builder: (context, constraints) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: constraints.maxHeight,
                        // color: Colors.purple,
                        child: Center(child: Text(widget.text,
                          style: TextStyle(
                              fontSize: getReferenceHeight(context) * 0.36,
                              fontFamily: FontsApp.mulishRegular
                          ),))
                    ),
                    if(widget.iconePrefix != null)
                    SizedBox(width: size.width * 0.02,),
                    if(widget.iconePrefix != null)
                      Container(
                      // color: Colors.red,
                       padding: widget.peddingPrefixIcon ?? EdgeInsets.only(bottom: getReferenceHeight(context)* 0.02),
                        child: SvgPicture.asset(
                          widget.iconePrefix!,
                          color: widget.iconePrefixColor,
                          height: getReferenceHeight(context) * 0.4,
                        )
                    )
                  ],
                );
              }
          ),
        ) : const Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        ),

      )
    );
  }


  void onPressedButton() {
    HapticFeedback.heavyImpact();
    print('_tapDown');
    widget.onPressed!();
  }
}