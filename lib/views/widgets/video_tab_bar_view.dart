import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_status_saver/cubits/video_cubit/video_cubit.dart';

import 'video_grid_view.dart';

class VideoTabBarView extends StatefulWidget {
  const VideoTabBarView({super.key});

  @override
  State<VideoTabBarView> createState() => _VideoTabBarViewState();
}

class _VideoTabBarViewState extends State<VideoTabBarView> {
  @override
  void initState() {
    BlocProvider.of<VideoCubit>(context).getVideosStatus();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideoCubit, VideoState>(
      builder: (context, state) {
        if (state is GetVideosLoaded) {
          return VideoGridView(videos: state.videos);
        } else if (state is NoFoundVideo) {
          return const Text('No Found DATA');
        } else if (state is VideoFailure) {
          return Text('oops , ${state.errorMsg}');
        } else {
          return const Text('oops , try later');
        }
      },
    );
  }
}
