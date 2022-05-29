import 'package:canaan_portfolio/size_config.dart';
import 'package:canaan_portfolio/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerPhone = TextEditingController();
  TextEditingController _controllerText = TextEditingController();

  @override
  void dispose() {
    _controllerEmail.dispose();
    _controllerName.dispose();
    _controllerPhone.dispose();
    _controllerText.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? TextAlign.left
              : TextAlign.left;
      double titleSize =
          sizingInformation.deviceScreenType == DeviceScreenType.tablet
              ? 50
              : 80;
      double descriptionSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 16
              : 21;
      return Container(
        margin: EdgeInsets.only(top: 50.0),
        width: SizeConfig.sW! * 160,
        child: Column(
          children: [
            Text(
              "Contact Me",
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: Theme.of(context).primaryColorLight,
                  ),
            ),
            Text(
              "Get In Touch",
              style: Theme.of(context).textTheme.headline5!,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "I am available for professional job offers and getting in touch is just a click away.",
              style: Theme.of(context).textTheme.bodyText1!,
            ),
            SizedBox(
              height: 50,
            ),
            sizingInformation.isDesktop
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustTextField(
                              controller: _controllerName,
                              border: true,
                              theme: Theme.of(context),
                              text: "Full Name",
                              validate: (value) {
                                return null;
                              },
                              onchanged: (value) {},
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: CustTextField(
                                    controller: _controllerEmail,
                                    border: true,
                                    theme: Theme.of(context),
                                    text: "Email",
                                    validate: (value) {
                                      return null;
                                    },
                                    onchanged: (value) {},
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: CustTextField(
                                    controller: _controllerPhone,
                                    border: true,
                                    theme: Theme.of(context),
                                    text: "Phone Number",
                                    validate: (value) {
                                      return null;
                                    },
                                    onchanged: (value) {},
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            CustTextField(
                              controller: _controllerText,
                              border: true,
                              heigth: 200,
                              theme: Theme.of(context),
                              text: "Write a Message",
                              validate: (value) {
                                return null;
                              },
                              onchanged: (value) {},
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Expanded(
                        flex: 3,
                        child: Stack(
                          alignment: AlignmentDirectional.bottomStart,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 130.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ContactLinls(
                                    text: "Warri, Delta State",
                                    icon: FontAwesomeIcons.locationArrow,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  ContactLinls(
                                    text: "bdiamondozah@gmail.com",
                                    icon: FontAwesomeIcons.solidEnvelope,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  ContactLinls(
                                    text: "+234-705-652-4189",
                                    icon: FontAwesomeIcons.phone,
                                  ),
                                ],
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Contact Me",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustTextField(
                              controller: _controllerName,
                              border: true,
                              theme: Theme.of(context),
                              text: "Full Name",
                              validate: (value) {
                                return null;
                              },
                              onchanged: (value) {},
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: CustTextField(
                                    controller: _controllerEmail,
                                    border: true,
                                    theme: Theme.of(context),
                                    text: "Email",
                                    validate: (value) {
                                      return null;
                                    },
                                    onchanged: (value) {},
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: CustTextField(
                                    controller: _controllerPhone,
                                    border: true,
                                    theme: Theme.of(context),
                                    text: "Phone Number",
                                    validate: (value) {
                                      return null;
                                    },
                                    onchanged: (value) {},
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            CustTextField(
                              controller: _controllerText,
                              border: true,
                              heigth: 200,
                              theme: Theme.of(context),
                              text: "Write a Message",
                              validate: (value) {
                                return null;
                              },
                              onchanged: (value) {},
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Expanded(
                        child: Stack(
                          alignment: AlignmentDirectional.bottomStart,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 130.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ContactLinls(
                                    text: "Warri, Delta State",
                                    icon: FontAwesomeIcons.locationArrow,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  ContactLinls(
                                    text: "bdiamondozah@gmail.com",
                                    icon: FontAwesomeIcons.solidEnvelope,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  ContactLinls(
                                    text: "+234-705-652-4189",
                                    icon: FontAwesomeIcons.phone,
                                  ),
                                ],
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Contact Me",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      );
    });
  }
}

class ContactLinls extends StatelessWidget {
  const ContactLinls({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  final String? text;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Theme.of(context).primaryColorLight,
          ),
          child: Icon(
            icon!,
            color: Colors.white,
            size: 20,
          ),
        ),
        Flexible(
          child: Text(
            text!,
            overflow: TextOverflow.clip,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 20,
                ),
          ),
        ),
      ],
    );
  }
}

class CustTextField extends StatelessWidget {
  const CustTextField({
    Key? key,
    required TextEditingController? controller,
    required this.theme,
    this.text,
    this.validate,
    this.onchanged,
    this.border = false,
    this.obscure = false,
    this.textInputType = TextInputType.text,
    this.iconOntap,
    this.obscureIcon = false,
    this.maxValue,
    this.isEnabled = true,
    this.heigth = 10,
  })  : _controller = controller,
        super(key: key);

  final TextEditingController? _controller;
  final ThemeData theme;
  final String? text;
  final bool? border;
  final bool? obscure;
  final bool isEnabled;
  final int? maxValue;
  final bool? obscureIcon;
  final String? Function(String?)? validate;
  final Function(String)? onchanged;
  final Function()? iconOntap;
  final TextInputType textInputType;
  final double heigth;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Provider.of<ThemeProvider>(context).isDarkMode;
    return TextFormField(
      enabled: isEnabled,
      obscureText: obscure!,
      maxLength: maxValue,
      controller: _controller,
      decoration: InputDecoration(
        fillColor: isDarkMode
            ? const Color(0xFF0B0511)
            : Theme.of(context).primaryColorLight,
        filled: false,
        enabledBorder: border! == true
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                  style: BorderStyle.solid,
                  width: 2.0,
                  color: theme.primaryColorLight,
                ),
              )
            : InputBorder.none,
        border: border! == true
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                  style: BorderStyle.solid,
                  width: 2.0,
                  color: theme.primaryColorLight,
                ),
              )
            : InputBorder.none,
        hintText: text,
        contentPadding:
            EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0, bottom: heigth),
        hintStyle: theme.textTheme.bodyMedium!.copyWith(
            color: isDarkMode ? Colors.white : const Color(0xFF607288)),
      ),
      keyboardType: textInputType,
      cursorColor: theme.primaryColor,
      textAlign: TextAlign.start,
      textAlignVertical: TextAlignVertical.top,
      style: theme.textTheme.bodyText1,
      onChanged: onchanged,
      validator: validate,
    );
  }
}
