import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:skin_care_v1/util/theme/constants.dart';

class ScaffoldWithNavBar extends StatelessWidget {
  const ScaffoldWithNavBar({
    required this.navigationShell,
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('ScaffoldWithNavBar'));

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredBox(
        color: backgroundColor,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 50, 15, 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "SKINCARE",
                    style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                  ),
                  Icon(
                    Icons.search,
                    color: primaryColor,
                  )
                ],
              ),
              Expanded(
                child: navigationShell,
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        elevation: 2.0,
        backgroundColor: secondaryColor,
        child: const Icon(Icons.camera_alt_outlined),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              activeIcon: const Icon(
                Icons.home,
                color: primaryColor,
              ),
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.home,
                    color: navigationShell.currentIndex == 0
                        ? primaryColor
                        : secondaryColor,
                  ),
                  // if (navigationShell.currentIndex == 0)
                  //   Column(
                  //     children: [
                  //       const SizedBox(
                  //         height: 5,
                  //       ),
                  //       ClipRRect(
                  //         borderRadius: BorderRadius.circular(
                  //             50), // Adjust the radius value as needed
                  //         child: const SizedBox(
                  //           height: 5,
                  //           width: 5,
                  //           child: ColoredBox(
                  //             color: primaryColor,
                  //           ),
                  //         ),
                  //       )
                  //     ],
                  //   )
                ],
              ),
              label: 'bb'),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.home,
                color: primaryColor,
              ),
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.favorite_outline,
                    color: navigationShell.currentIndex == 1
                        ? primaryColor
                        : secondaryColor,
                  ),
                  // if (navigationShell.currentIndex == 1)
                  //   Column(
                  //     children: [
                  //       const SizedBox(
                  //         height: 5,
                  //       ),
                  //       ClipRRect(
                  //         borderRadius: BorderRadius.circular(
                  //             50), // Adjust the radius value as needed
                  //         child: const SizedBox(
                  //           height: 5,
                  //           width: 5,
                  //           child: ColoredBox(
                  //             color: primaryColor,
                  //           ),
                  //         ),
                  //       )
                  //     ],
                  //   )
                ],
              ),
              label: 'bb'),
          BottomNavigationBarItem(
              // activeIcon: ,
              icon: Column(
                children: [],
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Column(
                children: [
                  Icon(
                    Icons.shop_2_outlined,
                    color: navigationShell.currentIndex == 3
                        ? primaryColor
                        : secondaryColor,
                  ),
                  if (navigationShell.currentIndex == 3)
                    Column(
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              50), // Adjust the radius value as needed
                          child: const SizedBox(
                            height: 5,
                            width: 5,
                            child: ColoredBox(
                              color: primaryColor,
                            ),
                          ),
                        )
                      ],
                    )
                ],
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Column(
                children: [
                  Icon(
                    Icons.person_2_outlined,
                    color: navigationShell.currentIndex == 4
                        ? primaryColor
                        : secondaryColor,
                  ),
                  if (navigationShell.currentIndex == 4)
                    Column(
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              50), // Adjust the radius value as needed
                          child: const SizedBox(
                            height: 5,
                            width: 5,
                            child: ColoredBox(
                              color: primaryColor,
                            ),
                          ),
                        )
                      ],
                    )
                ],
              ),
              label: ''),
        ],
        currentIndex: navigationShell.currentIndex,
        onTap: (int index) => _onTap(context, index),
      ),
    );
  }

  void _onTap(BuildContext context, int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
