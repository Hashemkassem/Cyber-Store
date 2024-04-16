import 'package:cyber_store/config/animation/fadeanimation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../../config/components/setting_det_card.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: SafeArea(
          child: MyAnimation(
            index: 3,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.orange.withOpacity(0.5),
                          // gradient: LinearGradient(colors: [
                          //   Colors.orange.withOpacity(0.5),
                          //   Colors.orange.withOpacity(0.8),
                          // ], transform: const GradientRotation(120)
                          //),
                          borderRadius: BorderRadius.circular(20)),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Backup Restore',
                                  style: GoogleFonts.exo2(
                                      color: Colors.white,
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.03,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Synchroize your data',
                                  style: GoogleFonts.exo2(
                                      color: Colors.grey,
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.015,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Icon(
                              Icons.backup_outlined,
                              size: MediaQuery.of(context).size.height * 0.04,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.orange.withOpacity(0.5),
                        // gradient: LinearGradient(colors: [
                        //   Colors.orange.withOpacity(0.5),
                        //   Colors.orange.withOpacity(0.8),
                        // ], transform: const GradientRotation(120),
                        borderRadius: BorderRadius.circular(20)),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.37,
                    child: Center(
                      child: ListView(
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          const SettingDetailsCard(
                              icon: Icons.language, lable: 'Language'),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.height * 0.02),
                            child: const Divider(
                              // height: MediaQuery.of(context).size.width * 0.111,
                              color: Colors.white,
                            ),
                          ),
                          const SettingDetailsCard(
                            icon: Icons.notifications_none_outlined,
                            lable: 'Notifications',
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.height * 0.02),
                            child: const Divider(
                              // height: MediaQuery.of(context).size.width * 0.111,
                              color: Colors.white,
                            ),
                          ),
                          const SettingDetailsCard(
                            icon: Icons.security,
                            lable: 'Security and privacy',
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.height * 0.02),
                            child: const Divider(
                              // height: MediaQuery.of(context).size.width * 0.111,
                              color: Colors.white,
                            ),
                          ),
                          const SettingDetailsCard(
                            icon: Icons.storage,
                            lable: 'Storage',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.orange.withOpacity(0.5),
                        // gradient: LinearGradient(colors: [
                        //   Colors.orange.withOpacity(0.5),
                        //   Colors.orange.withOpacity(0.8),
                        // ], transform: const GradientRotation(120),
                        borderRadius: BorderRadius.circular(20)),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.37,
                    child: Center(
                      child: ListView(
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          const SettingDetailsCard(
                            icon: Icons.av_timer_outlined,
                            lable: 'Date & Time',
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.height * 0.02),
                            child: const Divider(
                              // height: MediaQuery.of(context).size.width * 0.111,
                              color: Colors.white,
                            ),
                          ),
                          const SettingDetailsCard(
                            icon: Icons.share,
                            lable: 'Share app',
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.height * 0.02),
                            child: const Divider(
                              // height: MediaQuery.of(context).size.width * 0.111,
                              color: Colors.white,
                            ),
                          ),
                          const SettingDetailsCard(
                            icon: Icons.category_rounded,
                            lable: 'Updates',
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.height * 0.02),
                            child: const Divider(
                              // height: MediaQuery.of(context).size.width * 0.111,
                              color: Colors.white,
                            ),
                          ),
                          const SettingDetailsCard(
                            icon: Icons.security,
                            lable: 'Ratings and reviews',
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.height * 0.02),
                            child: const Divider(
                              // height: MediaQuery.of(context).size.width * 0.111,
                              color: Colors.transparent,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
