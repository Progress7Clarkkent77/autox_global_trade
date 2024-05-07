import 'package:autox_global_trade/Authentication/models/user.dart';
import 'package:autox_global_trade/Authentication/providers/auth.dart';
import 'package:autox_global_trade/home/home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({Key? key}) : super(key: key);

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  Widget _currentScreen = Container();
  bool _isProcessing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 900,
          width: 1600,
          color: Colors
              .transparent, // You can set the color as per your requirement
          // Add your content inside the container as needed
          child: Row(
            children: [
              Container(
                width: 300,
                height: 900,
                color: Colors.transparent,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: 300,
                        height: 100,
                        color: Colors.transparent,
                        child: const Center(
                          child: Text(
                            "Admin Dashboard",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 300,
                        height: 650,
                        color: Colors.transparent,
                        child: Column(
                          children: [
                            Container(
                              height: 65,
                              width: 300,
                              color: Colors.transparent,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        // Add your subscribe functionality here
                                        setState(() {
                                          _currentScreen = const UserScreen();
                                        });
                                        // Call a function to show the dialog
                                      },
                                      style: ElevatedButton.styleFrom(
                                        // You can customize the button style here
                                        textStyle: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      child: const Text("Users Database"),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 65,
                              width: 300,
                              color: Colors.transparent,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        // Add your subscribe functionality here
                                        setState(() {
                                          _currentScreen =
                                              const UserDesposits();
                                        });
                                        // Call a function to show the dialog
                                      },
                                      style: ElevatedButton.styleFrom(
                                        // You can customize the button style here
                                        textStyle: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      child: const Text("Deposits Requests"),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 65,
                              width: 300,
                              color: Colors.transparent,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        // Add your subscribe functionality here
                                        setState(() {
                                          _currentScreen = const UserPayout();
                                        });
                                        // Call a function to show the dialog
                                      },
                                      style: ElevatedButton.styleFrom(
                                        // You can customize the button style here
                                        textStyle: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      child: const Text("Withdrawal Requests"),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 65,
                              width: 300,
                              color: Colors.transparent,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        // Add your subscribe functionality here
                                        setState(() {
                                          _currentScreen = const UserBronze();
                                        });
                                        // Call a function to show the dialog
                                      },
                                      style: ElevatedButton.styleFrom(
                                        // You can customize the button style here
                                        textStyle: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      child: const Text("Bronze Subscribers"),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 65,
                              width: 300,
                              color: Colors.transparent,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        // Add your subscribe functionality here
                                        setState(() {
                                          _currentScreen = const UserSilver();
                                        });
                                        // Call a function to show the dialog
                                      },
                                      style: ElevatedButton.styleFrom(
                                        // You can customize the button style here
                                        textStyle: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      child: const Text("Silver Subscribers"),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 65,
                              width: 300,
                              color: Colors.transparent,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        // Add your subscribe functionality here
                                        setState(() {
                                          _currentScreen = const UserGold();
                                        });
                                        // Call a function to show the dialog
                                      },
                                      style: ElevatedButton.styleFrom(
                                        // You can customize the button style here
                                        textStyle: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      child: const Text("Gold Subscribers"),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 65,
                              width: 300,
                              color: Colors.transparent,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        // Add your subscribe functionality here
                                        setState(() {
                                          _currentScreen = const UserSaphire();
                                        });
                                        // Call a function to show the dialog
                                      },
                                      style: ElevatedButton.styleFrom(
                                        // You can customize the button style here
                                        textStyle: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      child: const Text("Saphire Subscribers"),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 65,
                              width: 300,
                              color: Colors.transparent,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        // Add your subscribe functionality here
                                        setState(() {
                                          _currentScreen = const UserDiamond();
                                        });
                                        // Call a function to show the dialog
                                      },
                                      style: ElevatedButton.styleFrom(
                                        // You can customize the button style here
                                        textStyle: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      child: const Text("Diamond Subscribers"),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 65,
                              width: 300,
                              color: Colors.transparent,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        // Add your subscribe functionality here
                                        setState(() {
                                          _currentScreen = const UserVIP();
                                        });
                                        // Call a function to show the dialog
                                      },
                                      style: ElevatedButton.styleFrom(
                                        // You can customize the button style here
                                        textStyle: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      child: const Text("VIP Subscribers"),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 65,
                              width: 300,
                              color: Colors.transparent,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      //onPressed: () {
                                      // Add your subscribe functionality here
                                      onPressed: _isProcessing
                                          ? null
                                          : () async {
                                              setState(() {
                                                _isProcessing = true;
                                              });

                                              try {
                                                // Call the signOut method from AuthProvider
                                                await Provider.of<AuthProvider>(
                                                        context,
                                                        listen: false)
                                                    .signOut();

                                                // Navigate to Home page
                                                Navigator.of(context)
                                                    .pushReplacement(
                                                  MaterialPageRoute(
                                                    fullscreenDialog: true,
                                                    builder: (context) =>
                                                        const Home(),
                                                  ),
                                                );
                                              } catch (error) {
                                                print('Sign Out Error: $error');
                                              } finally {
                                                setState(() {
                                                  _isProcessing = false;
                                                });
                                              }
                                            },
                                      // Call a function to show the dialog
                                      // },
                                      style: ElevatedButton.styleFrom(
                                        // You can customize the button style here
                                        textStyle: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      child: const Text("      Log Out      "),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 300,
                        height: 100,
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                border:
                                    Border.all(width: 0, color: Colors.white),
                                color: Colors.red,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 5.0,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              // Display the user's image
                              child: const Icon(
                                Icons.monetization_on,
                                size: 20,
                                color: Colors.orange,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Center(
                              child: Text(
                                "Chikso BTC/ETH",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 10,
                height: 900,
                color: Colors.black,
              ),
              Container(
                width: 1280,
                height: 900,
                color: Colors.transparent,
                child: Center(
                  child: _currentScreen,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  bool isEditing = false;
  late TextEditingController nameController;
  late TextEditingController idController;
  late TextEditingController photoController;
  late TextEditingController mainBalanceController;
  late TextEditingController botStatusController;
  late TextEditingController topActiveController;
  late TextEditingController bottomActiveController;
  late TextEditingController interestBalanceController;
  late TextEditingController totalDepositController;
  late TextEditingController totalEarnController;
  late TextEditingController totalInvestController;
  late TextEditingController totalPayoutController;
  late TextEditingController totalReferralBonusController;
  late TextEditingController totalTicketController;
  late TextEditingController activeInvestmentController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    idController = TextEditingController();
    photoController = TextEditingController();
    mainBalanceController = TextEditingController();
    botStatusController = TextEditingController();
    topActiveController = TextEditingController();
    bottomActiveController = TextEditingController();
    interestBalanceController = TextEditingController();
    totalDepositController = TextEditingController();
    totalEarnController = TextEditingController();
    totalInvestController = TextEditingController();
    totalPayoutController = TextEditingController();
    totalReferralBonusController = TextEditingController();
    totalTicketController = TextEditingController();
    activeInvestmentController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.transparent,
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Users Database",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 30,
            color: Colors.black,
          ),
          Container(
            width: double.infinity,
            height: 700,
            color: Colors.transparent,
            child: StreamBuilder(
              stream:
                  FirebaseFirestore.instance.collection('users').snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                var documents = snapshot.data!.docs;

                return ListView.builder(
                  itemCount: documents.length,
                  itemBuilder: (context, index) {
                    var user = UserModel.fromSnapshot(documents[index]);
                    nameController.text = user.name;
                    idController.text = user.id;
                    photoController.text = user.photo;
                    mainBalanceController.text = user.mainBalance.toString();
                    botStatusController.text = user.botStatus.toString();
                    topActiveController.text = user.topActive.toString();
                    bottomActiveController.text = user.bottomActive.toString();
                    interestBalanceController.text =
                        user.interestBalance.toString();
                    totalDepositController.text = user.totalDeposit.toString();
                    totalEarnController.text = user.totalEarn.toString();
                    totalInvestController.text = user.totalInvest.toString();
                    totalPayoutController.text = user.totalPayout.toString();
                    totalReferralBonusController.text =
                        user.totalReferralBonus.toString();
                    totalTicketController.text = user.totalTicket.toString();
                    activeInvestmentController.text =
                        user.activeInvestment.toString();

                    return Card(
                      margin: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(
                              "Name: ${isEditing ? '' : user.name}",
                              style: const TextStyle(color: Colors.black),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("ID: ${isEditing ? '' : user.id}"),
                                Text("Photo: ${isEditing ? '' : user.photo}"),
                                Text(
                                    "Main Balance: ${isEditing ? '' : user.mainBalance.toString()}"),
                                Text(
                                    "Bot Status: ${isEditing ? '' : user.botStatus.toString()}"),
                                Text(
                                    "Top Active: ${isEditing ? '' : user.topActive.toString()}"),
                                Text(
                                    "Bottom Active: ${isEditing ? '' : user.bottomActive.toString()}"),
                                Text(
                                    "Interest Balance: ${isEditing ? '' : user.interestBalance.toString()}"),
                                Text(
                                    "Total Deposit: ${isEditing ? '' : user.totalDeposit.toString()}"),
                                Text(
                                    "Total Earn: ${isEditing ? '' : user.totalEarn.toString()}"),
                                Text(
                                    "Total Invest: ${isEditing ? '' : user.totalInvest.toString()}"),
                                Text(
                                    "Total Payout: ${isEditing ? '' : user.totalPayout.toString()}"),
                                Text(
                                    "Total Referral Bonus: ${isEditing ? '' : user.totalReferralBonus.toString()}"),
                                Text(
                                    "Total Ticket: ${isEditing ? '' : user.totalTicket.toString()}"),
                                Text(
                                    "Active Investment: ${isEditing ? '' : user.activeInvestment.toString()}"),
                              ],
                            ),
                          ),
                          isEditing
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Editable fields with controllers
                                    TextField(
                                      controller: nameController,
                                      enabled: isEditing,
                                      decoration: const InputDecoration(
                                          labelText: "Name"),
                                    ),
                                    TextField(
                                      controller: idController,
                                      enabled: isEditing,
                                      decoration: const InputDecoration(
                                          labelText: "ID"),
                                    ),
                                    TextField(
                                      controller: photoController,
                                      enabled: isEditing,
                                      decoration: const InputDecoration(
                                          labelText: "Photo"),
                                    ),
                                    TextField(
                                      controller: mainBalanceController,
                                      enabled: isEditing,
                                      decoration: const InputDecoration(
                                          labelText: "Main Balance"),
                                    ),
                                    TextField(
                                      controller: botStatusController,
                                      enabled: isEditing,
                                      decoration: const InputDecoration(
                                          labelText: "Bot Status"),
                                    ),
                                    TextField(
                                      controller: topActiveController,
                                      enabled: isEditing,
                                      decoration: const InputDecoration(
                                          labelText: "Top Active"),
                                    ),
                                    TextField(
                                      controller: bottomActiveController,
                                      enabled: isEditing,
                                      decoration: const InputDecoration(
                                          labelText: "Bottom Active"),
                                    ),
                                    TextField(
                                      controller: interestBalanceController,
                                      enabled: isEditing,
                                      decoration: const InputDecoration(
                                          labelText: "Interest Balance"),
                                    ),
                                    TextField(
                                      controller: totalDepositController,
                                      enabled: isEditing,
                                      decoration: const InputDecoration(
                                          labelText: "Total Deposit"),
                                    ),
                                    TextField(
                                      controller: totalEarnController,
                                      enabled: isEditing,
                                      decoration: const InputDecoration(
                                          labelText: "Total Earn"),
                                    ),
                                    TextField(
                                      controller: totalInvestController,
                                      enabled: isEditing,
                                      decoration: const InputDecoration(
                                          labelText: "Total Invest"),
                                    ),
                                    TextField(
                                      controller: totalPayoutController,
                                      enabled: isEditing,
                                      decoration: const InputDecoration(
                                          labelText: "Total Payout"),
                                    ),
                                    TextField(
                                      controller: totalReferralBonusController,
                                      enabled: isEditing,
                                      decoration: const InputDecoration(
                                          labelText: "Total Referral Bonus"),
                                    ),
                                    TextField(
                                      controller: totalTicketController,
                                      enabled: isEditing,
                                      decoration: const InputDecoration(
                                          labelText: "Total Ticket"),
                                    ),
                                    TextField(
                                      controller: activeInvestmentController,
                                      enabled: isEditing,
                                      decoration: const InputDecoration(
                                          labelText: "Active Investment"),
                                    ),
                                    const SizedBox(height: 20),
                                  ],
                                )
                              : Container(),
                          isEditing
                              ? Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () async {
                                        DocumentReference userDocRef =
                                            FirebaseFirestore.instance
                                                .collection('users')
                                                .doc(user.id);

                                        await userDocRef.update({
                                          UserModel.NAME: nameController.text,
                                          UserModel.ID: idController.text,
                                          UserModel.PHOTO: photoController.text,
                                          UserModel.MAIN_BALANCE: double.parse(
                                              mainBalanceController.text),
                                          UserModel.BOT_STATUS:
                                              botStatusController.text,
                                          UserModel.TOP_ACTIVE:
                                              topActiveController.text,
                                          UserModel.BOTTOM_ACTIVE:
                                              bottomActiveController.text,
                                          UserModel.INTEREST_BALANCE:
                                              double.parse(
                                                  interestBalanceController
                                                      .text),
                                          UserModel.TOTAL_DEPOSIT: double.parse(
                                              totalDepositController.text),
                                          UserModel.TOTAL_EARN: double.parse(
                                              totalEarnController.text),
                                          UserModel.TOTAL_INVEST: double.parse(
                                              totalInvestController.text),
                                          UserModel.TOTAL_PAYOUT: double.parse(
                                              totalPayoutController.text),
                                          UserModel.TOTAL_REFERRAL_BONUS:
                                              double.parse(
                                                  totalReferralBonusController
                                                      .text),
                                          UserModel.TOTAL_TICKET: int.parse(
                                              totalTicketController.text),
                                          UserModel.ACTIVE_INVESTMENT:
                                              double.parse(
                                                  activeInvestmentController
                                                      .text),
                                        });

                                        setState(() {
                                          isEditing = false;
                                        });
                                      },
                                      child: const Text("Save"),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        nameController.text = user.name;
                                        idController.text = user.id;
                                        photoController.text = user.photo;
                                        mainBalanceController.text =
                                            user.mainBalance.toString();
                                        botStatusController.text =
                                            user.botStatus.toString();
                                        topActiveController.text =
                                            user.topActive.toString();
                                        bottomActiveController.text =
                                            user.bottomActive.toString();
                                        interestBalanceController.text =
                                            user.interestBalance.toString();
                                        totalDepositController.text =
                                            user.totalDeposit.toString();
                                        totalEarnController.text =
                                            user.totalEarn.toString();
                                        totalInvestController.text =
                                            user.totalInvest.toString();
                                        totalPayoutController.text =
                                            user.totalPayout.toString();
                                        totalReferralBonusController.text =
                                            user.totalReferralBonus.toString();
                                        totalTicketController.text =
                                            user.totalTicket.toString();
                                        activeInvestmentController.text =
                                            user.activeInvestment.toString();

                                        setState(() {
                                          isEditing = false;
                                        });
                                      },
                                      child: const Text("Cancel"),
                                    )
                                  ],
                                )
                              : Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        nameController.text = '';
                                        idController.text = '';
                                        photoController.text = '';
                                        mainBalanceController.text = '';
                                        botStatusController.text = '';
                                        topActiveController.text = '';
                                        bottomActiveController.text = '';
                                        interestBalanceController.text = '';
                                        totalDepositController.text = '';
                                        totalEarnController.text = '';
                                        totalInvestController.text = '';
                                        totalPayoutController.text = '';
                                        totalReferralBonusController.text = '';
                                        totalTicketController.text = '';
                                        activeInvestmentController.text = '';

                                        setState(() {
                                          isEditing = true;
                                        });
                                      },
                                      child: const Text("Edit"),
                                    ),
                                  ],
                                ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class UserDesposits extends StatefulWidget {
  const UserDesposits({Key? key}) : super(key: key);

  @override
  State<UserDesposits> createState() => _UserDespositsState();
}

class _UserDespositsState extends State<UserDesposits> {
  final databaseReference = FirebaseDatabase.instance.ref("Deposits");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.transparent,

      // For Read/Display Operaion
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.transparent,
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Deposits Requests",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 30,
            color: Colors.black,
          ),
          Expanded(
            child: FirebaseAnimatedList(
                query: databaseReference,
                itemBuilder: (context, snapshot, index, animation) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      title: Text(
                        snapshot.child("email").value?.toString() ?? "N/A",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      subtitle: Text(
                        snapshot.child("date").value?.toString() ?? "N/A",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      trailing: Text(
                        snapshot.child("amount").value?.toString() ?? "N/A",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class UserPayout extends StatefulWidget {
  const UserPayout({Key? key}) : super(key: key);

  @override
  State<UserPayout> createState() => _UserPayoutState();
}

class _UserPayoutState extends State<UserPayout> {
  final databaseReference = FirebaseDatabase.instance.ref("Payout");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.transparent,

      // For Read/Display Operaion
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.transparent,
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Payout Requests",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 30,
            color: Colors.black,
          ),
          Expanded(
            child: FirebaseAnimatedList(
                query: databaseReference,
                itemBuilder: (context, snapshot, index, animation) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      title: Text(
                        snapshot.child("email").value?.toString() ?? "N/A",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      subtitle: Text(
                        snapshot.child("date").value?.toString() ?? "N/A",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      trailing: Text(
                        snapshot.child("amount").value?.toString() ?? "N/A",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class UserBronze extends StatefulWidget {
  const UserBronze({Key? key}) : super(key: key);

  @override
  State<UserBronze> createState() => _UserBronzeState();
}

class _UserBronzeState extends State<UserBronze> {
  final databaseReference =
      FirebaseDatabase.instance.ref("Bronze Plan Subscription");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.transparent,

      // For Read/Display Operaion
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.transparent,
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Bronze Subscriptions",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 30,
            color: Colors.black,
          ),
          Expanded(
            child: FirebaseAnimatedList(
                query: databaseReference,
                itemBuilder: (context, snapshot, index, animation) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      title: Text(
                        snapshot.child("email").value?.toString() ?? "N/A",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            snapshot.child("date").value?.toString() ?? "N/A",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            snapshot.child("plan").value?.toString() ?? "N/A",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      trailing: Text(
                        snapshot.child("amount").value?.toString() ?? "N/A",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class UserSilver extends StatefulWidget {
  const UserSilver({Key? key}) : super(key: key);

  @override
  State<UserSilver> createState() => _UserSilverState();
}

class _UserSilverState extends State<UserSilver> {
  final databaseReference =
      FirebaseDatabase.instance.ref("Silver Plan Subscription");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.transparent,

      // For Read/Display Operaion
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.transparent,
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Silver Subscriptions",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 30,
            color: Colors.black,
          ),
          Expanded(
            child: FirebaseAnimatedList(
                query: databaseReference,
                itemBuilder: (context, snapshot, index, animation) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      title: Text(
                        snapshot.child("email").value?.toString() ?? "N/A",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            snapshot.child("date").value?.toString() ?? "N/A",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            snapshot.child("plan").value?.toString() ?? "N/A",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      trailing: Text(
                        snapshot.child("amount").value?.toString() ?? "N/A",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class UserGold extends StatefulWidget {
  const UserGold({Key? key}) : super(key: key);

  @override
  State<UserGold> createState() => _UserGoldState();
}

class _UserGoldState extends State<UserGold> {
  final databaseReference =
      FirebaseDatabase.instance.ref("Gold Plan Subscription");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.transparent,

      // For Read/Display Operaion
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.transparent,
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Gold Subscriptions",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 30,
            color: Colors.black,
          ),
          Expanded(
            child: FirebaseAnimatedList(
                query: databaseReference,
                itemBuilder: (context, snapshot, index, animation) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      title: Text(
                        snapshot.child("email").value?.toString() ?? "N/A",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            snapshot.child("date").value?.toString() ?? "N/A",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            snapshot.child("plan").value?.toString() ?? "N/A",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      trailing: Text(
                        snapshot.child("amount").value?.toString() ?? "N/A",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class UserSaphire extends StatefulWidget {
  const UserSaphire({Key? key}) : super(key: key);

  @override
  State<UserSaphire> createState() => _UserSaphireState();
}

class _UserSaphireState extends State<UserSaphire> {
  final databaseReference =
      FirebaseDatabase.instance.ref("Saphire Plan Subscription");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.transparent,

      // For Read/Display Operaion
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.transparent,
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Saphire Subscriptions",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 30,
            color: Colors.black,
          ),
          Expanded(
            child: FirebaseAnimatedList(
                query: databaseReference,
                itemBuilder: (context, snapshot, index, animation) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      title: Text(
                        snapshot.child("email").value?.toString() ?? "N/A",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            snapshot.child("date").value?.toString() ?? "N/A",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            snapshot.child("plan").value?.toString() ?? "N/A",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      trailing: Text(
                        snapshot.child("amount").value?.toString() ?? "N/A",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class UserDiamond extends StatefulWidget {
  const UserDiamond({Key? key}) : super(key: key);

  @override
  State<UserDiamond> createState() => _UserDiamondState();
}

class _UserDiamondState extends State<UserDiamond> {
  final databaseReference =
      FirebaseDatabase.instance.ref("Diamond Plan Subscription");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.transparent,

      // For Read/Display Operaion
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.transparent,
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Diamond Subscriptions",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 30,
            color: Colors.black,
          ),
          Expanded(
            child: FirebaseAnimatedList(
                query: databaseReference,
                itemBuilder: (context, snapshot, index, animation) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      title: Text(
                        snapshot.child("email").value?.toString() ?? "N/A",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            snapshot.child("date").value?.toString() ?? "N/A",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            snapshot.child("plan").value?.toString() ?? "N/A",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      trailing: Text(
                        snapshot.child("amount").value?.toString() ?? "N/A",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class UserVIP extends StatefulWidget {
  const UserVIP({Key? key}) : super(key: key);

  @override
  State<UserVIP> createState() => _UserVIPState();
}

class _UserVIPState extends State<UserVIP> {
  final databaseReference =
      FirebaseDatabase.instance.ref("VIP Plan Subscription");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.transparent,

      // For Read/Display Operaion
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.transparent,
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "VIP Subscriptions",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 30,
            color: Colors.black,
          ),
          Expanded(
            child: FirebaseAnimatedList(
                query: databaseReference,
                itemBuilder: (context, snapshot, index, animation) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      title: Text(
                        snapshot.child("email").value?.toString() ?? "N/A",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            snapshot.child("date").value?.toString() ?? "N/A",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            snapshot.child("plan").value?.toString() ?? "N/A",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      trailing: Text(
                        snapshot.child("amount").value?.toString() ?? "N/A",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
