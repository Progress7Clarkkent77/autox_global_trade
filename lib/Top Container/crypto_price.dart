import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class BTCPriceWidget extends StatefulWidget {
  const BTCPriceWidget({super.key});

  @override
  _BTCPriceWidgetState createState() => _BTCPriceWidgetState();
}

class _BTCPriceWidgetState extends State<BTCPriceWidget> {
  String btcPrice = 'Fetching...';

  @override
  void initState() {
    super.initState();
    _fetchBTCPrice();
  }

  Future<void> _fetchBTCPrice() async {
    final response = await http.get(Uri.parse(
        'https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=usd'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        btcPrice = '\$${data['bitcoin']['usd']} USD';
      });
    } else {
      setState(() {
        btcPrice = 'Error fetching data';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'BTCUSD',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          btcPrice,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14.0,
          ),
        ),
      ],
    );
  }
}

class ETHPriceWidget extends StatefulWidget {
  const ETHPriceWidget({super.key});

  @override
  _ETHPriceWidgetState createState() => _ETHPriceWidgetState();
}

class _ETHPriceWidgetState extends State<ETHPriceWidget> {
  String ethPrice = 'Fetching...';

  @override
  void initState() {
    super.initState();
    _fetchETHPrice();
  }

  Future<void> _fetchETHPrice() async {
    final response = await http.get(Uri.parse(
        'https://api.coingecko.com/api/v3/simple/price?ids=ethereum&vs_currencies=usd'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        ethPrice = '\$${data['ethereum']['usd']} USD';
      });
    } else {
      setState(() {
        ethPrice = 'Error fetching data';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'ETHUSD',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          ethPrice,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14.0,
          ),
        ),
      ],
    );
  }
}

class LTCPriceWidget extends StatefulWidget {
  const LTCPriceWidget({super.key});

  @override
  _LTCPriceWidgetState createState() => _LTCPriceWidgetState();
}

class _LTCPriceWidgetState extends State<LTCPriceWidget> {
  String ltcPrice = 'Fetching...';

  @override
  void initState() {
    super.initState();
    _fetchLTCPrice();
  }

  Future<void> _fetchLTCPrice() async {
    final response = await http.get(Uri.parse(
        'https://api.coingecko.com/api/v3/simple/price?ids=litecoin&vs_currencies=usd'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        ltcPrice = '\$${data['litecoin']['usd']} USD';
      });
    } else {
      setState(() {
        ltcPrice = 'Error fetching data';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'LTCUSD',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          ltcPrice,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14.0,
          ),
        ),
      ],
    );
  }
}

class BTCPriceWidget1 extends StatefulWidget {
  const BTCPriceWidget1({super.key});

  @override
  _BTCPriceWidget1State createState() => _BTCPriceWidget1State();
}

class _BTCPriceWidget1State extends State<BTCPriceWidget1> {
  String btcPrice = 'Fetching...';

  @override
  void initState() {
    super.initState();
    _fetchBTCPrice();
  }

  Future<void> _fetchBTCPrice() async {
    final response = await http.get(Uri.parse(
        'https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=usd'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        btcPrice = '\$${data['bitcoin']['usd']} USD';
      });
    } else {
      setState(() {
        btcPrice = 'Error fetching data';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'BTCUSD',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          btcPrice,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 10.0,
          ),
        ),
      ],
    );
  }
}

class ETHPriceWidget1 extends StatefulWidget {
  const ETHPriceWidget1({super.key});

  @override
  _ETHPriceWidget1State createState() => _ETHPriceWidget1State();
}

class _ETHPriceWidget1State extends State<ETHPriceWidget1> {
  String ethPrice = 'Fetching...';

  @override
  void initState() {
    super.initState();
    _fetchETHPrice();
  }

  Future<void> _fetchETHPrice() async {
    final response = await http.get(Uri.parse(
        'https://api.coingecko.com/api/v3/simple/price?ids=ethereum&vs_currencies=usd'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        ethPrice = '\$${data['ethereum']['usd']} USD';
      });
    } else {
      setState(() {
        ethPrice = 'Error fetching data';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'ETHUSD',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          ethPrice,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 10.0,
          ),
        ),
      ],
    );
  }
}

class LTCPriceWidget1 extends StatefulWidget {
  const LTCPriceWidget1({super.key});

  @override
  _LTCPriceWidget1State createState() => _LTCPriceWidget1State();
}

class _LTCPriceWidget1State extends State<LTCPriceWidget1> {
  String ltcPrice = 'Fetching...';

  @override
  void initState() {
    super.initState();
    _fetchLTCPrice();
  }

  Future<void> _fetchLTCPrice() async {
    final response = await http.get(Uri.parse(
        'https://api.coingecko.com/api/v3/simple/price?ids=litecoin&vs_currencies=usd'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        ltcPrice = '\$${data['litecoin']['usd']} USD';
      });
    } else {
      setState(() {
        ltcPrice = 'Error fetching data';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'LTCUSD',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          ltcPrice,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 10.0,
          ),
        ),
      ],
    );
  }
}

class BTCPriceWidget2 extends StatefulWidget {
  const BTCPriceWidget2({super.key});

  @override
  _BTCPriceWidget2State createState() => _BTCPriceWidget2State();
}

class _BTCPriceWidget2State extends State<BTCPriceWidget2> {
  String btcPrice = 'Fetching...';

  @override
  void initState() {
    super.initState();
    _fetchBTCPrice();
  }

  Future<void> _fetchBTCPrice() async {
    final response = await http.get(Uri.parse(
        'https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=usd'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        btcPrice = '\$${data['bitcoin']['usd']} USD';
      });
    } else {
      setState(() {
        btcPrice = 'Error fetching data';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'BTCUSD',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          btcPrice,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 10.0,
          ),
        ),
      ],
    );
  }
}

class ETHPriceWidget2 extends StatefulWidget {
  const ETHPriceWidget2({super.key});

  @override
  _ETHPriceWidget2State createState() => _ETHPriceWidget2State();
}

class _ETHPriceWidget2State extends State<ETHPriceWidget2> {
  String ethPrice = 'Fetching...';

  @override
  void initState() {
    super.initState();
    _fetchETHPrice();
  }

  Future<void> _fetchETHPrice() async {
    final response = await http.get(Uri.parse(
        'https://api.coingecko.com/api/v3/simple/price?ids=ethereum&vs_currencies=usd'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        ethPrice = '\$${data['ethereum']['usd']} USD';
      });
    } else {
      setState(() {
        ethPrice = 'Error fetching data';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'ETHUSD',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          ethPrice,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 10.0,
          ),
        ),
      ],
    );
  }
}
