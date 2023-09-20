import 'package:tiktok/domain/datasource/video_posts_datasource.dart';
import 'package:tiktok/domain/entities/video_post.dart';
import 'package:tiktok/infrastructure/models/local_video_model.dart';
import 'package:tiktok/shared/data/local_video_posts.dart';

class LocalVideoDatasourceImpl implements VideoPostDataSource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    // TODO: implement getFavoriteVideosByUser
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    await Future.delayed(Duration(seconds: 2));

    return videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();
  }
}
