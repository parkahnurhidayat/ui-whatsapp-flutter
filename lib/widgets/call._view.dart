import 'package:flutter/material.dart';
import 'package:ui_whatsapp/model/status.dart';
import 'package:ui_whatsapp/theme.dart';

class CallView extends StatelessWidget {
  const CallView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: statusList.length,
      itemBuilder: (context, index) {
        final status = statusList[index];
        return ListTile(
          leading: const Icon(
            Icons.account_circle,
            size: 58,
            color: Color.fromARGB(71, 0, 0, 0),
          ),
          title: Text(status.name),
          subtitle: Text(status.statusDate),
          trailing: Icon(
            Icons.call,
            color: whatsAppLightGreen,
          ),
        );
      },
    );
  }
}
