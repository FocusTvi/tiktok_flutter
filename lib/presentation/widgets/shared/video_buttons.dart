import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:tiktok/config/helpers/human_formats.dart';
import 'package:tiktok/domain/entities/video_post.dart';

class VideoButton extends StatelessWidget {
  final VideoPost video;

  const VideoButton({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustonIconButton(
          iconData: Icons.favorite,
          color: Colors.red,
          value: video.likes,
        ),
        SizedBox(
          height: 20,
        ),
        _CustonIconButton(
          iconData: Icons.remove_red_eye_outlined,
          value: video.views,
        ),
        SizedBox(
          height: 20,
        ),
        SpinPerfect(
          infinite: true,
          duration: Duration(seconds: 5),
          child: const _CustonIconButton(
            iconData: Icons.play_circle_outline,
            value: 0,
          ),
        ),
      ],
    );
  }
}

class _CustonIconButton extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color color;

  const _CustonIconButton({
    super.key,
    required this.value,
    required this.iconData,
    color,
  }) : this.color = color ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            // padding: EdgeInsets.only(bottom: 0, top: 10),
            onPressed: () {},
            // style: ButtonStyle(iconSize: MaterialStateProperty.all(30)),
            icon: Icon(
              iconData,
              size: 30,
              color: color,
            )),
        if (value > 0)
          Text(
            HumanFormats.humanReadableNumber(value.toDouble()),
            style: TextStyle(color: Colors.white),
          )
      ],
    );
  }
}
