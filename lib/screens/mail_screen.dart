import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_work/components/custom_appbar.dart';
import 'package:rent_work/components/text_utils.dart';
import 'package:rent_work/constant.dart';

class MailScreen extends StatefulWidget {
  const MailScreen({super.key});

  @override
  State<MailScreen> createState() => _MailScreenState();
}

class _MailScreenState extends State<MailScreen> {
  @override
  Widget build(BuildContext context) {
    List chatList = [
      {
        "name": "Danniel Radclife",
        "avatar_url": "https://i.ibb.co/PGv8ZzG/me.jpg",
        "last_message": "Thanks for the update",
        "time": "10:04",
        "pin": true,
      },
      {
        "name": "May",
        "avatar_url":
            "https://images.unsplash.com/photo-1592621385612-4d7129426394?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8d29tYW58ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
        "last_message": "Hehe, ok",
        "time": "09:04",
        "pin": true,
      },
      {
        "name": "Jessica Jane",
        "avatar_url":
            "https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
        "last_message": "Hi, can u check your email",
        "time": "08:22",
        "pin": true,
      },
      {
        "name": "Keanue Reeve",
        "avatar_url":
            "https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
        "last_message": "I've pushed the update",
        "time": "1 Day Ago",
      },
      {
        "name": "Donnie Yen",
        "avatar_url":
            "https://images.unsplash.com/photo-1581803118522-7b72a50f7e9f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fG1hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
        "last_message": "Ok, i`ll back",
        "time": "1 Day Ago",
      }
    ];
    return Scaffold(
      backgroundColor: white,
      appBar: const CustomAppBar(
        title: TextUtils(
          text: "Messages",
          fontWeight: FontWeight.w600,
          fontSize: 18,
          color: black,
        ),
        center: true,
        actions: [],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: chatList.length,
              itemBuilder: (context, index) {
                final item = chatList[index];
                return InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.only(
                      top: 6.0,
                      bottom: 6.0,
                    ),
                    decoration: BoxDecoration(
                      color:
                          item["pin"] == true ? Colors.grey[100] : Colors.white,
                      border: Border(
                        bottom: BorderSide(
                          width: 1.0,
                          color: Colors.grey[300]!,
                        ),
                      ),
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          item["avatar_url"],
                        ),
                        radius: 30.0,
                      ),
                      title: TextUtils(
                        text: item["name"],
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      subtitle: TextUtils(
                        text: item["last_message"],
                        fontSize: 14,
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextUtils(
                            text: item["time"],
                            fontSize: 12,
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          if (item["pin"] == true)
                            CircleAvatar(
                              backgroundColor: Colors.grey[200],
                              radius: 12.0,
                              child: const Icon(
                                CupertinoIcons.pin_fill,
                                size: 10.0,
                                color: secondary,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
