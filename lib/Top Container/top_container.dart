import 'package:flutter/material.dart';

class TopBarButton extends StatefulWidget {
  final String text;
  final Color textColor;

  const TopBarButton({
    Key? key,
    required this.text,
    required this.textColor,
  }) : super(key: key);

  @override
  _TopBarButtonState createState() => _TopBarButtonState();
}

class _TopBarButtonState extends State<TopBarButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _handleHover(true),
      onExit: (_) => _handleHover(false),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        decoration: BoxDecoration(
          border: isHovered
              ? const Border(
                  bottom: BorderSide(color: Colors.white, width: 2.0))
              : null,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.text,
              style: TextStyle(
                color: isHovered ? Colors.white : Colors.white.withOpacity(0.7),
                fontSize: 15,
              ),
            ),
            buildPopupMenu(),
          ],
        ),
      ),
    );
  }

  void _handleHover(bool hover) {
    setState(() {
      isHovered = hover;
    });
  }

  Widget buildPopupMenu() {
    switch (widget.text) {
      case 'Products':
        return PopupMenuButton<String>(
          icon: Icon(Icons.arrow_drop_down, color: Colors.white),
          onSelected: (String result) {
            // Handle dropdown item selection
            navigateToPage(result);
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            PopupMenuItem<String>(
              value: 'JohnPage',
              child: Text('JohnPage'),
            ),
            PopupMenuItem<String>(
              value: 'JamesPage',
              child: Text('JamesPage'),
            ),
            PopupMenuItem<String>(
              value: 'JenniferPage',
              child: Text('JenniferPage'),
            ),
            PopupMenuItem<String>(
              value: 'JehuPage',
              child: Text('JehuPage'),
            ),
          ],
        );
      case 'Community':
        return PopupMenuButton<String>(
          icon: Icon(Icons.arrow_drop_down, color: Colors.white),
          onSelected: (String result) {
            // Handle dropdown item selection
            navigateToPage(result);
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            PopupMenuItem<String>(
              value: 'HolaPage',
              child: Text('HolaPage'),
            ),
            PopupMenuItem<String>(
              value: 'YasminePage',
              child: Text('YasminePage'),
            ),
            PopupMenuItem<String>(
              value: 'DeltaPage',
              child: Text('DeltaPage'),
            ),
            PopupMenuItem<String>(
              value: 'DicksonPage',
              child: Text('DicksonPage'),
            ),
          ],
        );
      case 'Markets':
        return PopupMenuButton<String>(
          icon: Icon(Icons.arrow_drop_down, color: Colors.white),
          onSelected: (String result) {
            // Handle dropdown item selection
            navigateToPage(result);
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            PopupMenuItem<String>(
              value: 'JonPage',
              child: Text('JonPage'),
            ),
            PopupMenuItem<String>(
              value: 'JanePage',
              child: Text('JanePage'),
            ),
            PopupMenuItem<String>(
              value: 'JennyPage',
              child: Text('JennyPage'),
            ),
            PopupMenuItem<String>(
              value: 'JerubabelPage',
              child: Text('JerubabelPage'),
            ),
          ],
        );
      case 'News':
        return PopupMenuButton<String>(
          icon: Icon(Icons.arrow_drop_down, color: Colors.white),
          onSelected: (String result) {
            // Handle dropdown item selection
            navigateToPage(result);
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            PopupMenuItem<String>(
              value: 'HelaPage',
              child: Text('HelaPage'),
            ),
            PopupMenuItem<String>(
              value: 'JasminePage',
              child: Text('JasminePage'),
            ),
            PopupMenuItem<String>(
              value: 'DeltumPage',
              child: Text('DeltumPage'),
            ),
            PopupMenuItem<String>(
              value: 'DucksonPage',
              child: Text('DucksonPage'),
            ),
          ],
        );
      case 'Brokers':
        return PopupMenuButton<String>(
          icon: Icon(Icons.arrow_drop_down, color: Colors.white),
          onSelected: (String result) {
            // Handle dropdown item selection
            navigateToPage(result);
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            PopupMenuItem<String>(
              value: 'JonahPage',
              child: Text('JonahPage'),
            ),
            PopupMenuItem<String>(
              value: 'JemesPage',
              child: Text('JemesPage'),
            ),
            PopupMenuItem<String>(
              value: 'JanniferPage',
              child: Text('JanniferPage'),
            ),
            PopupMenuItem<String>(
              value: 'JerrisonPage',
              child: Text('JerrisonPage'),
            ),
          ],
        );
      case 'More':
        return PopupMenuButton<String>(
          icon: Icon(Icons.arrow_drop_down, color: Colors.white),
          onSelected: (String result) {
            // Handle dropdown item selection
            navigateToPage(result);
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            PopupMenuItem<String>(
              value: 'HulaPage',
              child: Text('HulaPage'),
            ),
            PopupMenuItem<String>(
              value: 'KasminePage',
              child: Text('KasminePage'),
            ),
            PopupMenuItem<String>(
              value: 'BeltaPage',
              child: Text('BeltaPage'),
            ),
            PopupMenuItem<String>(
              value: 'YicksonPage',
              child: Text('YicksonPage'),
            ),
          ],
        );
      default:
        // Return an empty container if no matching case is found
        return Container();
    }
  }

  void navigateToPage(String pageName) {
    switch (pageName) {
      case 'JohnPage':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => JohnPage()),
        );
        break;
      case 'HolaPage':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HolaPage()),
        );
        break;
      case 'JonPage':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => JonPage()),
        );
        break;
      case 'HelaPage':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HelaPage()),
        );
        break;
      // Add cases for other pages as needed
    }
  }
}

class JohnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('John Page'),
      ),
      body: Center(
        child: Text('Welcome to John Page'),
      ),
    );
  }
}

class HolaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hola Page'),
      ),
      body: Center(
        child: Text('Welcome to Hola Page'),
      ),
    );
  }
}

class JonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jon Page'),
      ),
      body: Center(
        child: Text('Welcome to Jon Page'),
      ),
    );
  }
}

class HelaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hela Page'),
      ),
      body: Center(
        child: Text('Welcome to Hela Page'),
      ),
    );
  }
}
