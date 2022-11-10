import 'package:bantuone/auth_service.dart';
import 'package:bantuone/core/widgets/alert.widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:bantuone/core/widgets/drawer.item.dart';

import '../constants/colors.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: midBlue,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
          child: Column(
            children: [
              headerWidget(),
              const SizedBox(
                height: 40,
              ),
              const Divider(
                thickness: 1,
                height: 20,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 20,
              ),
              DrawerItem(
                  name: 'Metode Pembayaran',
                  icon: Icons.credit_card,
                  onPressed: () => null),
              const SizedBox(
                height: 20,
              ),
              DrawerItem(
                  name: 'Bantuan', icon: Icons.help, onPressed: () => null),
              const SizedBox(
                height: 20,
              ),
              DrawerItem(
                  name: 'Kebijakan Privasi',
                  icon: Icons.privacy_tip,
                  onPressed: () => null),
              const SizedBox(
                height: 20,
              ),
              DrawerItem(
                  name: 'Ketentuan Layanan',
                  icon: Icons.task,
                  onPressed: () => null),
              const SizedBox(
                height: 20,
              ),
              DrawerItem(
                  name: 'Berikan Penilaian',
                  icon: Icons.star_border,
                  onPressed: () => null),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 1,
                height: 10,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 20,
              ),
              DrawerItem(
                  name: 'Setting', icon: Icons.settings, onPressed: () => null),
              const SizedBox(
                height: 20,
              ),
              DrawerItem(
                  name: 'Log out',
                  icon: Icons.logout,
                  onPressed: () => CustomAlertDialog(context)),
            ],
          ),
        ),
      ),
    );
  }

  Widget headerWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CircleAvatar(
          radius: 60,
          child: Icon(Icons.person),
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              FirebaseAuth.instance.currentUser!.displayName!,
              style: TextStyle(
                fontSize: 20,
                color: white,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              FirebaseAuth.instance.currentUser!.email!,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 14, color: white),
            ),
          ],
        )
      ],
    );
  }
}
