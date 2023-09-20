
import 'package:tiktok/domain/datasource/video_posts_datasource.dart';
import 'package:tiktok/domain/entities/video_post.dart';
import 'package:tiktok/domain/repositories/video_posts_repository.dart';

class VideoPostRepositoryImpl implements VideoPostsRepository {
  final VideoPostDataSource videoPostDataSource;

  VideoPostRepositoryImpl({required this.videoPostDataSource});

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    // TODO: implement getFavoriteVideosByUser
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videoPostDataSource.getTrendingVideosByPage(page);
  }
}
