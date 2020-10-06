import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackdropScreen extends StatefulWidget {
  static const _PANEL_HEADER_HEIGHT = 32.0;

  @override
  _BackdropScreenState createState() => _BackdropScreenState();
}

class _BackdropScreenState extends State<BackdropScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 100), value: 1.0, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  bool get _isPanelVisible {
    final AnimationStatus status = _controller.status;
    return status == AnimationStatus.completed ||
        status == AnimationStatus.forward;
  }

  Animation<RelativeRect> _getPanelAnimation(BoxConstraints constraints) {
    final double height = constraints.biggest.height;
    final double top = height - BackdropScreen._PANEL_HEADER_HEIGHT;
    final double bottom = -BackdropScreen._PANEL_HEADER_HEIGHT;
    return RelativeRectTween(
            begin: RelativeRect.fromLTRB(0.0, top, 0.0, bottom),
            end: RelativeRect.fromLTRB(0.0, 0.0, 0.0, 0.0))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.linear));
  }

  Widget _buildStack(context, constrains) {
    final ThemeData theme = Theme.of(context);
    final Animation<RelativeRect> animation = _getPanelAnimation(constrains);
    return Container(
      color: theme.primaryColor,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(children: [
              _getSectionProfile(Icons.home, "Home"),
              Divider(),
              _getSectionProfile(Icons.person, "About.me"),
              Divider(),
              _getSectionProfile(Icons.work, "Work"),
              Divider(),
              _getSectionProfile(Icons.lightbulb_outline, "Experience"),
              Divider(),
              _getSectionProfile(Icons.crop_square, "Frameworks"),
              Divider(),
              _getSectionProfile(Icons.graphic_eq, "Skill"),
              Divider(),
              _getSectionProfile(Icons.favorite_border, "Clients"),
              Divider(),
              _getSectionProfile(Icons.phone, "Contact"),
              Divider(),
              SizedBox(
                height: 50,
              )
            ]),
          ),
          PositionedTransition(
            rect: animation,
            child: Material(
              borderRadius: const BorderRadius.only(
                  topLeft: const Radius.circular(16.0),
                  topRight: const Radius.circular(16.0)),
              elevation: 12.0,
              child: Column(
                children: [
                  Container(
                    height: BackdropScreen._PANEL_HEADER_HEIGHT,
                    child: Center(
                      child: Text(
                        "Kowshikce.xyz",
                        style: const TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.none),
                      ),
                    ),
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ClipRRect(
                          child: Stack(children: [
                            Image.asset(
                              "assets/images/kowshik.jpg",
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              child: Container(
                                decoration:
                                    BoxDecoration(color: Colors.black54),
                                child: Text(
                                  "App And Web Developer",
                                  style: const TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.amber),
                                ),
                              ),
                              bottom: 180,
                              left: 0,
                            ),
                            Positioned(
                              child: Container(
                                decoration:
                                    BoxDecoration(color: Colors.black54),
                                child: Text(
                                  "Flutter & Django Apps Developer",
                                  style: const TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.amber),
                                ),
                              ),
                              bottom: 130,
                              right: 0,
                            ),
                          ]),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(18.0),
                              topRight: Radius.circular(18.0)),
                        ),
                        ListTile(
                            leading: Icon(
                              Icons.crop,
                              size: 30,
                              color: Colors.white,
                            ),
                            title: Text("About.me",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic)),
                            subtitle: Container(
                              child: Column(
                                children: [
                                  Divider(),
                                  Text(
                                    "INSPIRED BY DIFFERENCE                                                                                      ",
                                    style: const TextStyle(color: Colors.white),
                                    textAlign: TextAlign.left,
                                  ),
                                  Divider(),
                                  Text(
                                    "HEY , I AM KOWSHIK GUNGULY, I AM A WEB DESIGNER AND DEVELOPER ALSO INTERESTED IN ANDROID-IOS  UI DESIGN AND DEVELOPMENT.",
                                    style: const TextStyle(color: Colors.green),
                                  ),
                                  Divider(),
                                  Text(
                                      "Client Satisfaction is my first Priority. My Spaciality is my Excellence .I have some extra skills. e.g. Creative Graphic Design, Android App Development, Software Development etc. Core Skills: WordPress, WordPress theme Customization, WordPress plugin installation, WordPress Error fixes, Web Design, App Design, Website Development, Android App Development, Graphic Design, Office Application Expert."),
                                ],
                              ),
                            ))
                      ],
                    ),
                  ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Portfolio"),
        leading: IconButton(
          onPressed: () {
            _controller.fling(velocity: _isPanelVisible ? -1.0 : 1.0);
          },
          icon: AnimatedIcon(
            icon: AnimatedIcons.close_menu,
            progress: _controller.view,
          ),
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
              backgroundImage: AssetImage("assets/images/kowshik112.png"),
              backgroundColor: Color(0xFF7e7d9c),
            ),
          )
        ],
      ),
      body: LayoutBuilder(
        builder: _buildStack,
      ),
    );
  }
}

Widget _getSectionProfile(IconData icon, String sectionTitle) {
  return ListTile(
    leading: Icon(
      icon,
      color: Colors.white,
      size: 30,
    ),
    title: Text(
      "$sectionTitle",
      style: const TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic),
    ),
    subtitle: Text(
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc elit erat",
      style: const TextStyle(color: Colors.white),
    ),
  );
}
