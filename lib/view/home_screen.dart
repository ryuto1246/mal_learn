import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mal_learn/component/overlay_loading_page.dart';
import 'package:mal_learn/constant/strings.dart';
import 'package:mal_learn/model/user.dart';
import 'package:mal_learn/provider/user_profile_provider.dart';
import 'package:mal_learn/view/chat_list_screen.dart';
import 'package:mal_learn/view/profile_screen.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen(
    this.uid, {
    super.key,
  });

  final String uid;

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final _pageViewController = PageController(initialPage: 1);
  var _selectedIndex = 1;

  void _setIndex(int index) {
    setState(() => _selectedIndex = index);
  }

  void _movePage(int index) {
    _pageViewController.animateToPage(
      index,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ref.watch(userProfileProvider(widget.uid)).when(
          // TODO: Error Page
          error: (error, stackTrace) => const OverlayLoadingPage(),
          loading: () => const OverlayLoadingPage(),
          data: _buildHomeScreen,
        );
  }

  Widget _buildHomeScreen(AppUser? appUser) {
    if (appUser == null) {
      //TODO: ログイン画面に遷移
      return const OverlayLoadingPage();
    }

    return Scaffold(
      body: PageView(
        controller: _pageViewController,
        onPageChanged: _setIndex,
        children: [
          ProfileScreen(appUser),
          const ChatListScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _movePage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 35),
            label: Strings.profileLabel,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.forum, size: 35),
            label: Strings.chatListLabel,
          ),
        ],
      ),
    );
  }
}
