
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ritmos_de_violao_premium/styles/app_colors.dart';
import 'package:ritmos_de_violao_premium/styles/app_dimens.dart';

AppBar CustomToolbarNotSliver(
    {required BuildContext context,required Function onTapLeading,required String title,
      Color backgroundColor = Colors.transparent,
      bool showAction = false,
      TabBar? tabBar,
      Color colorLeadingIcon = ColorsApp.primary, bool showLeading = true,

      required VoidCallback onActionClicked}) {

  Size size = MediaQuery.of(context).size;
  return AppBar(
    elevation: 0,
    backgroundColor: backgroundColor,
    toolbarHeight: getToolbarHeight(context) * 1.3,
    leadingWidth: isTableOrIpad(context) ? size.width * 0.12 : size.width * 0.15,
    centerTitle: false,
    systemOverlayStyle: SystemUiOverlayStyle(
      // Status bar color
      statusBarColor: Colors.transparent,
      // Status bar brightness (optional)
      statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
      statusBarBrightness: Brightness.light, // For iOS (dark icons)
    ),
    title: Text(title, style: TextStyle(
      color: colorLeadingIcon,
      fontSize: getReferenceHeight(context) * 0.27,
    ),),
    leading: showLeading ? Container(
      color: Colors.transparent,
      child: LeadingCustom(
        color: colorLeadingIcon, onTap: onTapLeading,
      ),
    ) : null,
    actions: !showAction ? null : [
      IconButton(
        onPressed: (){
          onActionClicked();
        },
        icon: Icon(Icons.close,
          color: Colors.grey,
          size: getReferenceHeight(context) * 0.6,),

      )
    ],
    bottom: tabBar,
  );
}

SliverAppBar CustomToolbar(
    {required BuildContext context,required Function onTapLeading,required String title,
      Color backgroundColor = Colors.transparent,
      bool showAction = false,
      Color colorLeadingIcon = ColorsApp.primary, bool showLeading = true,
      required VoidCallback onActionClicked}) {

  Size size = MediaQuery.of(context).size;
  return SliverAppBar(
    elevation: 0,
    backgroundColor: backgroundColor,
    toolbarHeight: getToolbarHeight(context) * 1.3,
    floating: true,
    leadingWidth: isTableOrIpad(context) ? size.width * 0.12 : size.width * 0.15,
    centerTitle: false,
    systemOverlayStyle: SystemUiOverlayStyle(
      // Status bar color
      statusBarColor: Colors.transparent,
      // Status bar brightness (optional)
      statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
      statusBarBrightness: Brightness.light, // For iOS (dark icons)
    ),
    title: Text(title, style: TextStyle(
        color: colorLeadingIcon,
        fontSize: getReferenceHeight(context) * 0.27,
    ),),
    leading: showLeading ? Container(
      color: Colors.transparent,
      child: LeadingCustom(
        color: colorLeadingIcon, onTap: onTapLeading,
      ),
    ) : null,
    actions: !showAction ? null : [
      IconButton(
        onPressed: (){
          onActionClicked();
        },
        icon: Icon(Icons.close,
          color: Colors.grey,
          size: getReferenceHeight(context) * 0.6,),

      )
    ],
  );
}



class LeadingCustom extends StatelessWidget {
  const LeadingCustom({
    Key? key,
    this.color = Colors.white,
    required this.onTap
  }) : super(key: key);

  final Color color;
  final Function onTap;
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        margin: EdgeInsets.only(left: size.width * 0.02),
        child: Center(
            child: Padding(
              padding: EdgeInsets.only(left: getReferenceHeight(context) * 0.15),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios,
                    color: color,
                    size: isTableOrIpad(context) ?
                    getReferenceHeight(context) * 0.4 :
                    getReferenceHeight(context) * 0.4),
                onPressed: () {
                  onTap();},
              ),
            )
        ),
      ),
    );
  }
}