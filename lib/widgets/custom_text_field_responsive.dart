import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ritmos_de_violao_premium/styles/app_colors.dart';
import 'package:ritmos_de_violao_premium/styles/app_dimens.dart';
import 'package:ritmos_de_violao_premium/styles/app_fonts.dart';


class CustomTextFieldReponsive extends StatefulWidget {

  final String hintText;
  final TextInputType textInputType;
  final TextEditingController controller;
  bool obscureText;
  bool isPasswordField;
  bool isPageLogin;
  bool validator;
  String errorText;
  final IconData? prefixIcon;
  final EdgeInsets? margin;
  final List<TextInputFormatter>? inputs;
  final TextCapitalization textCapitalization;
  final Function(String) changeText;
  final bool autocorrect;
  FocusNode focusNode;
  final bool enableInteractiveSelection;
  final VoidCallback onTapTrealing;
  final String leadingImagePathAsset;
  final int? maxLength;
  bool enabled;
  bool readOnly;
  bool sempreMostrarLabel;
  Function(bool) onFocus;
  bool autofocus;
  String labelText;
  final VoidCallback onTap;
  TextAlign textAlign;
  BorderRadius? borderCustom;
  Color cursorColor;
  String? suffixIcon;
  VoidCallback onSubmmited;
  int? maxLines;

  CustomTextFieldReponsive({
    Key? key,
    required  this.controller,
    required this.hintText,
    this.prefixIcon,
    this.margin,
    this.inputs,
    this.cursorColor = Colors.blue,
    required this.labelText,
    this.maxLines = 1,
    this.maxLength,
    required this.onSubmmited,
    this.enabled = true,
    this.readOnly = false,
    this.autofocus = false,
    this.sempreMostrarLabel = false,
    this.suffixIcon,
    this.textAlign = TextAlign.start,
    required this.validator,
    required this.errorText,
    required this.changeText,
    required this.focusNode,
    required this.onFocus,
    required this.onTap,
    required this.onTapTrealing,
    this.leadingImagePathAsset = "",
    this.enableInteractiveSelection = true,
    this.autocorrect = false,
    this.textCapitalization = TextCapitalization.none,
    this.obscureText = false,
    this.isPasswordField = false,
    this.isPageLogin = false,
    this.borderCustom,
    required this.textInputType
  }) : super(key: key);

  @override
  _CustomTextFieldReponsiveState createState() => _CustomTextFieldReponsiveState();
}

class _CustomTextFieldReponsiveState extends State<CustomTextFieldReponsive> with SingleTickerProviderStateMixin{

  late AnimationController animationController;
  late Animation<double> animationWidth;

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        // Padding(
        //   padding: EdgeInsets.only(left: size.width  * 0.1,
        //      right: size.width * 0.1, bottom: size.width * 0.02),
        //   child: Align(
        //       child: Text(widget.labelText, style: TextStyle(
        //         fontSize: getReferenceHeight(context) * 0.27,
        //         color: Colors.black
        //       ),),
        //       alignment: Alignment.centerLeft,
        //   ),
        // ),
        Container(
          margin: widget.margin ?? EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
          child: Focus(
            onFocusChange: (focus) => widget.onFocus(focus),
            child: TextField(
              controller: widget.controller,
              keyboardType: widget.textInputType,
              cursorColor: widget.cursorColor,
              enableInteractiveSelection: widget.enableInteractiveSelection,
              showCursor: true,
              // enabled: (widget.loadingDoLogin==true) ? false : true,
              enabled: widget.enabled,
              obscuringCharacter: "∗",
              textAlignVertical: TextAlignVertical.center,
              obscureText: widget.obscureText,
              onChanged: widget.changeText,
              focusNode: widget.focusNode,
              readOnly: widget.readOnly,
              autofocus: widget.autofocus,
              autocorrect: widget.autocorrect,
              inputFormatters: widget.inputs,
              maxLength: widget.maxLength,
              textAlign: widget.textAlign,
              textCapitalization: widget.textCapitalization,
              maxLines: widget.maxLines,
              onTap: () => onTapTextField(),
              onSubmitted: (value) {
                widget.onSubmmited();
              },
              style: TextStyle(
                  backgroundColor: Colors.transparent,
                  fontSize: getReferenceHeight(context) * 0.38,
                  fontFamily: FontsApp.mulishRegular,
                  color: widget.validator ? Colors.red :
                    Colors.blue
              ),
              decoration: InputDecoration(
                  hintText: widget.hintText,
                  filled: true,
                  isDense: false,
                  labelText: widget.labelText,
                  enabled: widget.enabled,
                  // disabledBorder: OutlineInputBorder(
                  //   borderRadius: BorderRadius.all(Radius.circular(4)),
                  //   borderSide: BorderSide(width: 1,color: Colors.orange),
                  // ),
                  // enabledBorder: OutlineInputBorder(
                  //   borderRadius: BorderRadius.all(Radius.circular(4)),
                  //   borderSide: BorderSide(width: 1,color: Colors.green),
                  // ),
                  // border: OutlineInputBorder(
                  //     borderRadius: BorderRadius.all(Radius.circular(4)),
                  //     borderSide: BorderSide(width: 1,)
                  // ),
                  // errorBorder: OutlineInputBorder(
                  //     borderRadius: BorderRadius.all(Radius.circular(4)),
                  //     borderSide: BorderSide(width: 1,color: Colors.black)
                  // ),
                  // focusedErrorBorder: OutlineInputBorder(
                  //     borderRadius: BorderRadius.all(Radius.circular(4)),
                  //     borderSide: BorderSide(width: 1,color: Colors.yellowAccent)
                  // ),
                  counterText: "",
                  isCollapsed: true,
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  labelStyle: TextStyle(
                    fontFamily: FontsApp.mulishRegular,
                    fontSize: getReferenceHeight(context) * 0.3,
                    backgroundColor: Colors.transparent,
                    color: widget.validator ? Colors.red : !widget.enabled ? Colors.grey[500] : Colors.black38
                  ),
                  floatingLabelStyle: TextStyle(
                      fontFamily: FontsApp.mulishRegular,
                      fontSize: getReferenceHeight(context) * 0.3,
                      backgroundColor: Colors.transparent,
                      color: !widget.enabled ? Colors.grey[500] : widget.validator ? Colors.red : Colors.blue
                  ),
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  hintStyle: TextStyle(
                    fontFamily: FontsApp.mulishRegular,
                    fontSize: getReferenceHeight(context) * 0.3,
                    color: Colors.grey
                  ),
                  errorText: null,
                  prefixIconConstraints: BoxConstraints(
                      minHeight: getReferenceHeight(context) * 0.05,
                      maxHeight: getReferenceHeight(context),
                      maxWidth: getReferenceHeight(context) * 0.75
                  ),
                  prefixIcon: widget.leadingImagePathAsset.isNotEmpty ? Container(
                    //color: Colors.purple,
                    padding: EdgeInsets.only(left: getReferenceHeight(context) * 0.1),
                    child: Image.asset(widget.leadingImagePathAsset),
                  ) : null,
                  iconColor: ColorsApp.primary,
                  // prefixIcon: prefixIcon != null ? Icon(Icons.credit_card) : null,
                  suffixIcon: widget.isPasswordField ? InkWell(
                    onTap: () => onPressedIconSufix(),
                    child: isTableOrIpad(context) ?
                    Container(
                      padding: EdgeInsets.zero,
                      margin: EdgeInsets.only(right: size.width * 0.01),
                      child: SvgPicture.asset(
                        widget.obscureText ? "assets/imagens/icone_olho.svg" : "assets/imagens/icone_olho_fechado.svg",
                        color: widget.validator ? Colors.red :
                        widget.focusNode.hasFocus ? Colors.blue : Colors.black,
                      ),
                    ):
                    Container(
                      padding: EdgeInsets.only(top: getReferenceHeight(context) * 0.28,
                          bottom: getReferenceHeight(context) * 0.28,
                          right: getReferenceHeight(context) * 0.13),
                      child: SvgPicture.asset(
                        widget.obscureText ? "assets/imagens/icone_olho.svg" : "assets/imagens/icone_olho_fechado.svg",
                        color: widget.validator ? Colors.red :
                        widget.focusNode.hasFocus ? Colors.blue : Colors.black,
                      ),
                    ),
                  ) : widget.suffixIcon != null ?
                  Container(
                    padding: EdgeInsets.all(getReferenceHeight(context) * 0.2),
                    margin: EdgeInsets.only(right: size.width * 0.01),
                    child: SvgPicture.asset(
                      '${widget.suffixIcon}',
                      color: widget.validator ? Colors.red :
                      widget.focusNode.hasFocus ? Colors.blue : Colors.black,
                    ),
                  )
                  : null,

                  fillColor:  Colors.transparent,
                contentPadding: isTableOrIpad(context)
                    ? EdgeInsets.symmetric(vertical: getReferenceHeight(context) * 0.18,
                    horizontal: getToolbarHeight(context) * 0.2) :
                widget.isPasswordField ?
                EdgeInsets.symmetric(vertical: (getReferenceHeight(context) * 0.25),
                    horizontal: getToolbarHeight(context) * 0.2) :
                EdgeInsets.symmetric(vertical: (getReferenceHeight(context) * 0.31),
                    horizontal: getToolbarHeight(context) * 0.2)
                ,
                  // contentPadding: isTableOrIpad(context) ? EdgeInsets.symmetric(vertical: getReferenceHeight(context) * 0.18,
                  //     horizontal: getToolbarHeight(context) * 0.2) :
                  // EdgeInsets.symmetric(vertical: (getReferenceHeight(context) * 0.25),
                  //     horizontal: getToolbarHeight(context) * 0.2),
                  // border: OutlineInputBorder(
                  //     borderRadius: BorderRadius.all(
                  //         Radius.circular(getReferenceHeight(context) * 0.2)
                  //     )
                  // ),
                  errorStyle: TextStyle(
                      fontSize: widget.errorText.length > 35 ? getReferenceHeight(context) * 0.21
                         : getReferenceHeight(context) * 0.25,
                      fontWeight: FontWeight.bold
                  ),
                  border: OutlineInputBorder(
                      borderRadius: widget.borderCustom != null ? widget.borderCustom as BorderRadius:
                      BorderRadius.all(Radius.circular(getReferenceHeight(context) * 0.12)),
                    borderSide: BorderSide( width: 1,color:  widget.validator ? Colors.red : Colors.black)
                  ),
                 focusedBorder: OutlineInputBorder(
                    borderRadius: widget.borderCustom != null ? widget.borderCustom as BorderRadius:
                    BorderRadius.all(Radius.circular(getReferenceHeight(context) * 0.12)),
                    borderSide: BorderSide(width: 2, color: widget.validator ? Colors.red : Colors.blue),

                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: widget.borderCustom != null ? widget.borderCustom as BorderRadius:
                  BorderRadius.all(Radius.circular(getReferenceHeight(context) * 0.12)),
                  borderSide: BorderSide(width: 1,color: widget.validator ? Colors.red : Colors.black),
                ),
              ),
            ),
          ),
        ),
        if(widget.validator && widget.errorText.isNotEmpty)
        SizedBox(height: getReferenceHeight(context) * 0.2,),
        if(widget.validator && widget.errorText.isNotEmpty)
        Container(
          margin: EdgeInsets.only(left: size.width * 0.1, right: size.width * 0.05),
          color: Colors.transparent,
          alignment: Alignment.centerLeft,
          child: Text(widget.errorText,
                style: TextStyle(
                  fontFamily: FontsApp.mulishRegular,
                  color: Colors.red
                ),),
        )
      ],
    );
  }

  onTapTextField(){
    HapticFeedback.lightImpact();
    widget.onTap();
  }

  onPressedIconSufix(){
    HapticFeedback.mediumImpact();
    widget.onTapTrealing();
  }


}
