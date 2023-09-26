import 'package:flutter/material.dart';


class UserProfile extends StatelessWidget {
  
  List<MenuRowData> firstMenuRow = [
    MenuRowData(icon: Icons.favorite_outlined, text: 'favourites'),
    MenuRowData(icon: Icons.call, text: 'Calls'),
    MenuRowData(icon: Icons.computer, text: 'Devices'),
    MenuRowData(icon: Icons.chat, text: 'Folder chats'),
  ];
  List<MenuRowData> secondMenuRow = [
    MenuRowData(icon: Icons.notifications, text: 'Notification and Sounds'),
    MenuRowData(icon: Icons.privacy_tip, text: 'Privacy'),
    MenuRowData(icon: Icons.data_usage_rounded, text: 'Data and memory'),
    MenuRowData(icon: Icons.brush, text: 'Decoration'),
    MenuRowData(icon: Icons.language, text: 'Language'),
  ];

  UserProfile({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Settings')
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const _UserInfo(),
            const SizedBox(height: 20),
            _MenuWidget(menuRow: firstMenuRow),
            const SizedBox(height: 20),
            _MenuWidget(menuRow: secondMenuRow),
          ],
        ),
      ),
    );
  }
}


class MenuRowData  {
  final IconData icon;
  final String text;

  MenuRowData({required this.icon, required this.text});
}


class _MenuWidget extends StatelessWidget {
  final List<MenuRowData> menuRow;
  const _MenuWidget({
    Key? key,
    required this.menuRow
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: menuRow.map((data) => _MenuWidgetRow(data: data)).toList(),
      ),
    );
  }
}


class _MenuWidgetRow extends StatelessWidget {
  final MenuRowData data;

  const _MenuWidgetRow({
    Key? key,
    required this.data, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(data.icon),
          const SizedBox(width: 17),
          Expanded(child: Text(data.text)),
          const Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}


class _UserInfo extends StatelessWidget {
  const _UserInfo();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: const Column(
        children: [
          SizedBox(height: 30),
          _AvatarWidget(),
          SizedBox(height: 25),
          _UserNameWidget(),
          SizedBox(height: 5),
          _UserPhoneWidget(),
          SizedBox(height: 5),
          _UserNickNameWidget(),
        ],
      ),
    );
  }
}


class _UserNickNameWidget extends StatelessWidget {
  const _UserNickNameWidget();

  @override
  Widget build(BuildContext context) {
    return const Text(
      '@leevladislove',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 15,
      )
    );
  }
}


class _UserPhoneWidget extends StatelessWidget {
  const _UserPhoneWidget();

  @override
  Widget build(BuildContext context) {
    return const Text(
      '+7(747)337-18-08',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 15,
      )
    );
  }
}


class _UserNameWidget extends StatelessWidget {
  const _UserNameWidget();

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Lee Vladislav',
      style: TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}


class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 100,
      height: 100,
      child: Placeholder(),
    );
  }
}