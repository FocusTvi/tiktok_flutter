import 'package:flutter/cupertino.dart';
import 'package:tiktok/infrastructure/repositories/video_posts_repository_impl.dart';
import '../../domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  final VideoPostRepositoryImpl videoPostRepositoryImpl;
  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({required this.videoPostRepositoryImpl});

  Future<void> loadNextPage() async {
    final newVideos = await videoPostRepositoryImpl.getTrendingVideosByPage(1);
    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
