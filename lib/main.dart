import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiktok/infrastructure/datasource/local_video_datasource_impl.dart';
import 'package:tiktok/infrastructure/repositories/video_posts_repository_impl.dart';
import 'package:tiktok/presentation/providers/discover_provider.dart';
import 'package:tiktok/config/theme/app_theme.dart';
import 'package:tiktok/presentation/discover/discover_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of Aur application.
  @override
  Widget build(BuildContext context) {
    final videoPostRepository = VideoPostRepositoryImpl(
        videoPostDataSource: LocalVideoDatasourceImpl());
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            lazy: false,
            create: (_) =>
                DiscoverProvider(videoPostRepositoryImpl: videoPostRepository)
                  ..loadNextPage()),
      ],
      child: MaterialApp(
        title: 'TikTok',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen(),
      ),
    );
  }
}
