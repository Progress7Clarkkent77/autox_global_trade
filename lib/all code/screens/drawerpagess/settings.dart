// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../ConstData/colorfile.dart';
import '../../ConstData/colorprovider.dart';
import '../../ConstData/typography.dart';


class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {



  ColorNotifire notifire = ColorNotifire();
  bool switch1 = false;
  bool switch2 = true;
  bool switch3 = false;
  bool switch4 = true;


  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: notifire.getBgColor,
      child: DefaultTabController(
        length: 5,
        initialIndex: 0,
        child: LayoutBuilder(builder: (context, constraints) {
          if(constraints.maxWidth<600){
            return  NestedScrollView(
                headerSliverBuilder: (context, innerBoxIsScrolled) {
                  return [
                    SliverToBoxAdapter(child: _buildTabBar(),),
                    const SliverToBoxAdapter(child: SizedBox( height: 25,),),
                  ];
                }, body: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TabBarView(
                  children: [
                    _buildUser(width: constraints.maxWidth),
                    _buildReferrals(width: constraints.maxWidth),
                    _buildApi(width: constraints.maxWidth),
                    _build2SF(width: constraints.maxWidth),
                    _buildNewpass(),
                  ]),
                ));
          }else{
            return
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                children: [
                  _buildTabBar(),
                  const SizedBox( height: 25,),
                   Expanded(
                     child: TabBarView(
                        children: [
                          _buildUser(width: constraints.maxWidth),
                          _buildReferrals(width: constraints.maxWidth),
                          _buildApi(width: constraints.maxWidth),
                          _build2SF(width: constraints.maxWidth),
                          _buildNewpass(),
                  ]),
                   ),
                  const SizedBox( height: 25,),
                ],
            ),
              );
          }
        },),
      ),
    );
  }

  Widget _buildUser({required double width}){
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Container(
             height: 780,
            width: 800,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: notifire.getGry700_300Color),

            ),
            child: SingleChildScrollView(
              child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                     mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text("Breanne Schinner",style: Typographyy.heading5.copyWith(color: notifire.getTextColor),),
                          const SizedBox(height: 8,),
                          Text("demo@gmail.com",style: Typographyy.bodyMediumMedium.copyWith(color: notifire.getGry500_600Color)),
                          const SizedBox(height: 12,),
                           Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: notifire.getGry700_300Color)
                            ),
                            child: Text("Level 2 Verified",style: Typographyy.bodyMediumMedium.copyWith(color: priMeryColor)),)
                        ],
                      ),
                      width<600? const SizedBox() :  const Spacer(),
                      width<600? const SizedBox() :  Container(
                        height: 42,
                        width: 160,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: notifire.getContainerColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("USA",style: Typographyy.bodyMediumMedium.copyWith(color: notifire.getGry500_600Color),),
                            const Spacer(),
                            SvgPicture.asset("assets/images/chevron-down.svg",height: 20,width: 20,),

                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Features",style: Typographyy.heading5.copyWith(color: notifire.getTextColor),),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('LEVEL 1',style: Typographyy.bodySmallRegular.copyWith(color: notifire.getGry500_600Color),),
                    ],
                  ),
                  Divider(height: 40,color: notifire.getGry700_300Color,),
                  Row(
                    children: [
                      Text("Deposit assets",style: Typographyy.bodyMediumMedium.copyWith(color: notifire.getTextColor),),
                      const Spacer(),
                      Switch(

                        activeColor: priMeryColor,
                        thumbColor: const MaterialStatePropertyAll(Colors.white),
                        trackColor: MaterialStatePropertyAll(switch1? priMeryColor : notifire.getGry700_300Color),
                        value: switch1, onChanged: (value) {
                        setState(() {
                          switch1 = value;
                        });
                      },),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Text("Withdraw assets",style: Typographyy.bodyMediumMedium.copyWith(color: notifire.getTextColor),),
                      const Spacer(),
                      Text("Enablef \$29,555/day",style: Typographyy.bodyMediumMedium.copyWith(color: notifire.getGry500_600Color),),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Text("Card Purchases",style: Typographyy.bodyMediumMedium.copyWith(color: notifire.getTextColor),),
                      const Spacer(),
                      Switch(

                        activeColor: priMeryColor,
                        thumbColor: const MaterialStatePropertyAll(Colors.white),
                        trackColor: MaterialStatePropertyAll(switch2? priMeryColor : notifire.getGry700_300Color),
                        value: switch2, onChanged: (value) {
                        setState(() {
                          switch2 = value;
                        });

                      },),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Bank Deposit",style: Typographyy.bodyMediumMedium.copyWith(color: notifire.getTextColor),),
                      const Spacer(),
                      Switch(

                        activeColor: priMeryColor,
                        thumbColor: const MaterialStatePropertyAll(Colors.white),
                        trackColor: MaterialStatePropertyAll(switch3? priMeryColor : notifire.getGry700_300Color),
                        value: switch3, onChanged: (value) {
                        setState(() {
                          switch3 = value;
                        });
                      },),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('LEVEL 2',style: Typographyy.bodySmallRegular.copyWith(color: notifire.getGry500_600Color),),
                    ],
                  ),
                  Divider(height: 40,color: notifire.getGry700_300Color,),
                  Row(
                    children: [
                      Text("Fiat and spot Wallet",style: Typographyy.bodyMediumMedium.copyWith(color: notifire.getTextColor),),
                      const Spacer(),
                      Switch(

                        activeColor: priMeryColor,
                        thumbColor: const MaterialStatePropertyAll(Colors.white),
                        trackColor: MaterialStatePropertyAll(switch4? priMeryColor : notifire.getGry700_300Color),
                        value: switch4, onChanged: (value) {
                        setState(() {
                          switch4 = value;
                        });

                      },),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Text("Margin Wallet",style: Typographyy.bodyMediumMedium.copyWith(color: notifire.getTextColor),),
                      const Spacer(),
                      Text("Enabled 100x Leverage",style: Typographyy.bodyMediumMedium.copyWith(color: notifire.getGry500_600Color),),
                    ],
                  ),
                  const SizedBox(height: 40,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: priMeryColor,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            fixedSize: const Size.fromHeight(42),
                            elevation: 0,
                          ),
                          onPressed: () {}, child: Text("Save Settings",style: Typographyy.bodyMediumMedium.copyWith(color: Colors.white),)),

                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildReferrals({required double width}){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Container(
            width: 500,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: notifire.getGry700_300Color),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Total Rewards",style: Typographyy.bodyMediumMedium.copyWith(color: notifire.getTextColor),),
                  const SizedBox(height: 8,),
                    RichText(text: TextSpan(children: [
                    TextSpan(text: "2,955.00 ",style: Typographyy.heading4.copyWith(color: notifire.getTextColor)),
                    TextSpan(text: "USDT",style: Typographyy.heading4.copyWith(color: priMeryColor)),
                    
                  ])),
                  Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.",style: Typographyy.bodySmallMedium.copyWith(color: notifire.getGry500_600Color),),
                  const SizedBox(height: 24,),
                  Row(
                     children: [
                       Expanded(
                         child: Container(
                           // height: 100,
                           padding: const EdgeInsets.all(15),
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(12),
                             color: notifire.getGry50_800Color
                           ),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text("Invite Friends To Earn 29%",style: Typographyy.heading6.copyWith(color: notifire.getTextColor)),
                                 const SizedBox(height: 20,),
                                 width<800?  const SizedBox() : Row(
                                   children: [
                                     Expanded(
                                       child: _buildTextFilde(),
                                     ),
                                     const SizedBox(width: 8,),
                                     Expanded(
                                       child: _buildTextFilde1(),
                                     ),
                                     const SizedBox( width: 8,),
                                   ],
                                 ),
                                 width<800? Column(
                                   children: [
                                     _buildTextFilde(),
                                     const SizedBox(height: 8,),
                                     _buildTextFilde1(),

                                   ],
                                 ) :const SizedBox(),
                               ],
                           ),
                         ),
                       )

                     ],
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: notifire.getGry700_300Color),
                    ),
                    child: Text("My Wallet",style: Typographyy.bodySmallMedium.copyWith(color: notifire.getTextColor)),
                  )

                  
                ],
              ),
            ),
          ),
        ),

       ],
    );
  }

  Widget _build2SF({required double width}){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Container(

            width: 600,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: notifire.getGry700_300Color),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(text: "2FA ",style: Typographyy.heading5.copyWith(color: notifire.getTextColor)),
                        TextSpan(text: "Enabled",style: Typographyy.heading5.copyWith(color: Colors.green)),
                      ])),
                  const SizedBox(height: 8,),
                  Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy",style: Typographyy.bodySmallRegular.copyWith( color: notifire.getGry500_600Color),maxLines: 2),
                  const SizedBox(height: 25,),
                  Text("Disable 2FA",style: Typographyy.bodyMediumSemiBold.copyWith(color: notifire.getTextColor),),
                  const SizedBox(height: 8,),
                  Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy",style: Typographyy.bodySmallRegular.copyWith( color: notifire.getGry500_600Color),maxLines: 2),
                  const SizedBox(height: 25,),
                  Row(
                    children: [
                      SvgPicture.asset("assets/images/mail.svg",width: 20,height: 20,color: notifire.getTextColor),
                      const SizedBox(width: 8,),
                      Text("hello@abc.com",style: Typographyy.bodyMediumSemiBold.copyWith(color: notifire.getTextColor)),

                    ],
                  ),
                  const SizedBox(height: 12,),
                  width<800? const SizedBox() :Row(
                    children: [
                      Expanded(child: _buildTextFilde2()),
                      const SizedBox(width: 8,),
                      Expanded(child: _buildTextFilde3()),
                      const SizedBox(width: 8,),

                    ],
                  ),
                  width<800? Column(
                    children: [
                      _buildTextFilde2(),
                      const SizedBox(height: 8,),
                      _buildTextFilde3()

                    ],
                  ) :const SizedBox(),


                  const SizedBox(height: 18,),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          fixedSize: const Size.fromHeight(42),
                          elevation: 0,
                          backgroundColor: priMeryColor
                      ),
                      onPressed: () {}, child: Text("Disable 2FA",style: Typographyy.bodyMediumMedium.copyWith(color: Colors.white),)),

                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildApi({required double width}){
   return Row(
     mainAxisAlignment: MainAxisAlignment.center,
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       Flexible(
         child: Container(
           width: 600,
           padding: const EdgeInsets.all(24),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(16),
             border: Border.all(color: notifire.getGry700_300Color),
           ),
           child: SingleChildScrollView(
             scrollDirection: Axis.vertical,
             child: Column(
               mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.",style: Typographyy.bodySmallRegular.copyWith( color: notifire.getGry500_600Color),maxLines: 2),
                 const SizedBox(height: 8,),
                 RichText(
                     text: TextSpan(children: [
                   TextSpan(text: "API Access Is ",style: Typographyy.heading5.copyWith(color: notifire.getTextColor)),
                   TextSpan(text: "Disabled",style: Typographyy.heading5.copyWith(color: Colors.orange)),
                 ])),
                 const SizedBox(height: 12,),
                 Row(
                   children: [
                     SvgPicture.asset("assets/images/mail.svg",width: 20,height: 20,color: notifire.getTextColor),
                     const SizedBox(width: 8,),
                     Text("hello@abc.com",style: Typographyy.bodyMediumSemiBold.copyWith(color: notifire.getTextColor)),

                   ],
                 ),
                 const SizedBox(height: 25,),
                 Text("Enable API Keys",style: Typographyy.bodyMediumSemiBold.copyWith(color: notifire.getTextColor),),
                 const SizedBox(height: 8,),
                 Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry",style: Typographyy.bodySmallRegular.copyWith( color: notifire.getGry500_600Color),maxLines: 2),
                 const SizedBox(height: 25,),
                 width<800? const SizedBox() :Row(
                  children: [
                    Expanded(child: _buildTextFilde2()),
                    const SizedBox(width: 8,),
                    Expanded(child: _buildTextFilde3()),
                    const SizedBox(width: 8,),

                  ],
                ),
                 width<800? Column(
                   children: [
                     _buildTextFilde2(),
                     const SizedBox(height: 8,),
                     _buildTextFilde3()

                   ],
                 ) :const SizedBox(),


                 const SizedBox(height: 18,),
                 ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                       fixedSize: const Size.fromHeight(42),
                       elevation: 0,
                       backgroundColor: priMeryColor
                     ),
                     onPressed: () {}, child: Text("Enable API Keys",style: Typographyy.bodyMediumMedium.copyWith(color: Colors.white),)),

               ],
             ),
           ),
         ),
       ),
     ],
   );
  }

  Widget _buildNewpass(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Container(
            width: 600,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: notifire.getGry700_300Color),
            ),
            child:  SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("New Password",style: Typographyy.heading4.copyWith(color: notifire.getTextColor),),
                  const SizedBox(height: 25,),
                  _buildTextFilde6(),
                  const SizedBox(height: 25,),
                  _buildTextFilde4(),
                  const SizedBox(height: 25,),
                  _buildTextFilde5(),
                  const SizedBox(height: 25,),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: priMeryColor,
                              elevation: 0,
                              fixedSize: const Size.fromHeight(42),
                              shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
                            ),
                            onPressed: () {}, child: Text("Change Password",style: Typographyy.bodyMediumMedium.copyWith(color: Colors.white),)),
                      ),
                    ],
                  )


                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildTextFilde(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("REFERRAL LINK",style: Typographyy.bodySmallMedium.copyWith(color: notifire.getTextColor),),
        const SizedBox(height: 8,),
        TextField(
            style: Typographyy.bodyMediumMedium.copyWith(color: notifire.getTextColor),
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: notifire.getGry700_300Color)),
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: notifire.getGry700_300Color)),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: notifire.getGry700_300Color)),
              disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: notifire.getGry700_300Color)),
            )),

      ],
    );
  }

  Widget _buildTextFilde6(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("EMAIL",style: Typographyy.bodySmallMedium.copyWith(color: notifire.getTextColor),),
        const SizedBox(height: 8,),
        TextField(
            style: Typographyy.bodyMediumMedium.copyWith(color: notifire.getTextColor),
            decoration: InputDecoration(
              hintText: "Email",
              hintStyle: Typographyy.bodyMediumMedium.copyWith(color: notifire.getGry500_600Color),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: notifire.getGry700_300Color)),
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: notifire.getGry700_300Color)),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: notifire.getGry700_300Color)),
              disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: notifire.getGry700_300Color)),
            )),

      ],
    );
  }

  bool isEye1 = true;

  Widget _buildTextFilde4(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("NEW PASSWORD",style: Typographyy.bodySmallMedium.copyWith(color: notifire.getTextColor),),
        const SizedBox(height: 8,),
        TextField(
            style: Typographyy.bodyMediumMedium.copyWith(color: notifire.getTextColor),
            obscureText: isEye1,
            decoration: InputDecoration(

              suffixIcon: InkWell(
                onTap: () {
                  setState(() {
                    isEye1 =! isEye1;
                  });
                },
                child: SizedBox(
                    height: 20,
                    width: 20,
                    child: Center(child: SvgPicture.asset(isEye1? "assets/images/eye-off.svg":"assets/images/eye-2.svg",height: 20,width: 20,color: notifire.getGry500_600Color,))),
              ),
              hintText: "New Password",
              hintStyle: Typographyy.bodyMediumMedium.copyWith(color: notifire.getGry500_600Color),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: notifire.getGry700_300Color)),
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: notifire.getGry700_300Color)),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: notifire.getGry700_300Color)),
              disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: notifire.getGry700_300Color)),
            )),

      ],
    );
  }

  bool isEye2 = true;

  Widget _buildTextFilde5(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("CONFRIM PASSWORD",style: Typographyy.bodySmallMedium.copyWith(color: notifire.getTextColor),),
        const SizedBox(height: 8,),
        TextField(
            style: Typographyy.bodyMediumMedium.copyWith(color: notifire.getTextColor),
            obscureText: isEye2,
            decoration: InputDecoration(

              suffixIcon: InkWell(
                onTap: () {
                  setState(() {
                    isEye2 =! isEye2;
                  });
                },
                child: SizedBox(
                    height: 20,
                    width: 20,
                    child: Center(child: SvgPicture.asset(isEye2? "assets/images/eye-off.svg":"assets/images/eye-2.svg",height: 20,width: 20,color: notifire.getGry500_600Color,))),
              ),
              hintText: "Confirm password",
              hintStyle: Typographyy.bodyMediumMedium.copyWith(color: notifire.getGry500_600Color),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: notifire.getGry700_300Color)),
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: notifire.getGry700_300Color)),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: notifire.getGry700_300Color)),
              disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: notifire.getGry700_300Color)),
            )),

      ],
    );
  }

  Widget _buildTextFilde3(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("2FA CODE",style: Typographyy.bodySmallMedium.copyWith(color: notifire.getTextColor),),
        const SizedBox(height: 8,),
        TextField(
            style: Typographyy.bodyMediumMedium.copyWith(color: notifire.getTextColor),
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: notifire.getGry700_300Color)),
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: notifire.getGry700_300Color)),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: notifire.getGry700_300Color)),
              disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: notifire.getGry700_300Color)),
            )),

      ],
    );
  }

  bool isEye = true;

  Widget _buildTextFilde2(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("PASSWORD",style: Typographyy.bodySmallMedium.copyWith(color: notifire.getTextColor),),
        const SizedBox(height: 8,),
        TextField(
            style: Typographyy.bodyMediumMedium.copyWith(color: notifire.getTextColor),
            obscureText: isEye,
            decoration: InputDecoration(

              suffixIcon: InkWell(
                 onTap: () {
                   setState(() {
                   isEye =! isEye;
                   });
                 },
                child: SizedBox(
                    height: 20,
                    width: 20,
                    child: Center(child: SvgPicture.asset(isEye? "assets/images/eye-off.svg":"assets/images/eye-2.svg",height: 20,width: 20,color: notifire.getGry500_600Color,))),
              ),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: notifire.getGry700_300Color)),
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: notifire.getGry700_300Color)),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: notifire.getGry700_300Color)),
              disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: notifire.getGry700_300Color)),
            )),

      ],
    );
  }

  Widget _buildTextFilde1(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("REFERRAL CODE",style: Typographyy.bodySmallMedium.copyWith(color: notifire.getTextColor),),
        const SizedBox(height: 8,),
        TextField(
          style: Typographyy.bodyMediumMedium.copyWith(color: notifire.getTextColor),
          decoration: InputDecoration(
            suffixIcon:  Container(
              height: 8,
               width: 50,
               margin: const EdgeInsets.symmetric( vertical: 10,horizontal: 5),
              // padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(child: Text("Copied",style: Typographyy.bodySmallRegular.copyWith(color: Colors.white))),
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: notifire.getGry700_300Color)),
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: notifire.getGry700_300Color)),
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: notifire.getGry700_300Color)),
            disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: notifire.getGry700_300Color)),
          ),
        ),

      ],
    );
  }
  
  Widget _buildTabBar(){
   return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: 15,),
          SizedBox(
            height: 50,
            width: 700,
            child: TabBar(
                labelStyle: Typographyy.bodyMediumMedium.copyWith(color: notifire.getTextColor),
                isScrollable: true,
                indicatorColor: priMeryColor,
                labelColor: priMeryColor,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                   border: Border.all(color: priMeryColor),
                ),
                unselectedLabelColor: notifire.getTextColor,
                tabs:   [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset("assets/images/user.svg",height: 20,width: 20,color: notifire.getTextColor),
                      // Icon(Icons.supervisor_account),
                      const SizedBox(width: 8,),
                      Text("Profile",style: Typographyy.bodyMediumMedium.copyWith(color: notifire.getTextColor)),

                    ],),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset("assets/images/share.svg",height: 20,width: 20,color: notifire.getTextColor),
                      // Icon(Icons.supervisor_account),
                      const SizedBox(width: 8,),
                      Text("Refrrals",style: Typographyy.bodyMediumMedium.copyWith(color: notifire.getTextColor)),

                    ],),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset("assets/images/keyboard.svg",height: 20,width: 20,color: notifire.getTextColor),
                      // Icon(Icons.supervisor_account),
                      const SizedBox(width: 8,),
                      Text("Api Keys",style: Typographyy.bodyMediumMedium.copyWith(color: notifire.getTextColor)),

                    ],),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset("assets/images/fingerprint-viewfinder.svg",height: 20,width: 20,color: notifire.getTextColor),
                      // Icon(Icons.supervisor_account),
                      const SizedBox(width: 8,),
                      Text("2FA",style: Typographyy.bodyMediumMedium.copyWith(color: notifire.getTextColor)),

                    ],),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset("assets/images/lock.svg",height: 20,width: 20,color: notifire.getTextColor),
                      // Icon(Icons.supervisor_account),
                      const SizedBox(width: 8,),
                      Text("Change Password",style: Typographyy.bodyMediumMedium.copyWith(color: notifire.getTextColor)),

                    ],),

                ]
            ),
          ),
        ],
      ),
    );
  }
}
