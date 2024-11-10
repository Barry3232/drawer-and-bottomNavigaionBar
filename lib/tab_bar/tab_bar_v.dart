import 'package:flutter/material.dart';


class Tb extends StatefulWidget {
   const Tb({super.key});
  @override
  State<Tb> createState() => _TbState();
}

class _TbState extends State<Tb> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController( vsync: this, length: 8);
    return TabBar(
        unselectedLabelColor: Colors.black,
        labelColor: Colors.white,
        indicatorColor: Colors.transparent,
        // overlayColor: MaterialStateProperty<Colors.black?>?,
        isScrollable: true,
        controller: tabController,
        tabs: [
      Tab(
        child: Container(
          alignment: Alignment.center,
          width: 40,
          height: 30,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(8)
            // border: ,
          ),
          child: const Text('All'),
        ),

      ),
      Tab(
        child: Container(
          alignment: Alignment.center,
          width: 60,
          height: 30,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(8)
            // border: ,
          ),
          child: const Text('Today'),
        ),
      ),
      Tab(
        child: Container(
          alignment: Alignment.center,
          width: 60,
          height: 30,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(8)
            // border: ,
          ),
          child: const Text('Videos'),
        ),
      ),
      Tab(
        child: Container(
          alignment: Alignment.center,
          width: 60,
          height: 30,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(8)
            // border: ,
          ),
          child: const Text('Shorts'),
        ),
      ),
      Tab(
        child: Container(
          alignment: Alignment.center,
          width: 45,
          height: 30,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(8)
            // border: ,
          ),
          child: const Text('Live'),
        ),
      ),
      Tab(
        child: Container(
          alignment: Alignment.center,
          width: 55,
          height: 30,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(8)
            // border: ,
          ),
          child: const Text('posts'),
        ),
      ),
      Tab(
        child: Container(
          alignment: Alignment.center,
          width: 150,
          height: 30,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(8)
            // border: ,
          ),
          child: const Text('Continue watching'),
        ),
      ),
      Tab(
        child: Container(
          alignment: Alignment.center,
          width: 100,
          height: 30,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(8)
            // border: ,
          ),
          child: const Text('Unwatched'),
        ),
      ),
      Tab(
        child: InkWell(
          onTap: (){},
          child: const Text('Settings',
            style: TextStyle(
                color: Colors.purple
            ),),
        ),
        // text: 'Settings',
      )
    ]);
  }
}
