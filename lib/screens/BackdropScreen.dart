import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/AboutmeScreen.dart';
import '../screens/HomeScreen.dart';
import '../screens/WorkScreen.dart';
import '../screens/ExperienceScreen.dart';
import '../screens/FrameworkScreen.dart';
import '../screens/SkillScreen.dart';
import '../screens/ClientsScreen.dart';
import '../screens/ContactScreen.dart';

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
                        "Before After Slider Demonstration",
                        style: const TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.none),
                      ),
                    ),
                  ),
                  TabPageSelector(
                    controller: DefaultTabController.of(context),
                    selectedColor: Colors.white,
                    indicatorSize: 8,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Expanded(
                      child: TabBarView(
                    children: [
                      AboutMeScreen(),
                      HomeScreen(),
                      WorkScreen(),
                      ExperienceScreen(),
                      FrameworkScreen(),
                      SkillScreen(),
                      ClientScreen(),
                      ContactScreen(),
                    ],
                    physics: BouncingScrollPhysics(),
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
            onPressed: () {},
            icon: CircleAvatar(
              backgroundImage: AssetImage("assets/images/kowshik112.png"),
              backgroundColor: Color(0xFF7e7d9c),
            ),
          )
        ],
      ),
      body: DefaultTabController(
        length: 8,
        child: LayoutBuilder(
          builder: _buildStack,
        ),
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
