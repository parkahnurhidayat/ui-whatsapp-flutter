import 'package:flutter/material.dart';
import 'package:ui_whatsapp/model/status.dart';
import 'package:ui_whatsapp/theme.dart';

class StatusView extends StatelessWidget {
  const StatusView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Status', style: customTextStyle),
              const Icon(Icons.more_vert)
            ],
          ),
        ),
        ListTile(
          leading: Stack(
            alignment: Alignment.bottomRight,
            children: [
              const Icon(
                Icons.account_circle,
                size: 58,
                color: Color.fromARGB(79, 0, 0, 0),
              ),
              const Icon(
                Icons.circle,
                color: Colors.white,
              ),
              Icon(
                Icons.add_circle_sharp,
                color: whatsAppLightGreen, 
              ),
            ],
          ),
          title: const Text(
            'Status Saya',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          subtitle: const Text('Ketuk untuk memperbaruhi status'),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
          child: Text(
            'Pembaruan terkini',
            style: TextStyle(
                color: Colors.black45,
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ),
        ),
        Expanded(
          child: ListView.builder(
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
              );
            },
          ),
        ),
      ],
    );
  }
}
