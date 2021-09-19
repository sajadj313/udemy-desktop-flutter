import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
      child: Row(
        children: [
          SvgPicture.asset('assets/images/logo-udemy.svg'),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: TextFormField(
              decoration: const InputDecoration(prefixIcon: Icon(Icons.search), border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40.0))), hintText: 'Search for anything'),
            ),
          )),
          TextButton(
            onPressed: () {},
            child: const Text('Teach on Udemy'),
            style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.grey.shade900)),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('My learning'),
            style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.grey.shade900)),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border_outlined),
            splashRadius: 20,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
            splashRadius: 20,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
            splashRadius: 20,
          ),
          const CircleAvatar(
            backgroundColor: Colors.blue,
            backgroundImage: AssetImage('assets/images/profile.jpg'),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(75);
}
