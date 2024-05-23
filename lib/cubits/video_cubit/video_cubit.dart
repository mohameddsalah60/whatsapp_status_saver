import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_status_saver/service/get_status_whatsapp.dart';

part 'video_state.dart';

class VideoCubit extends Cubit<VideoState> {
  VideoCubit() : super(VideoInitial());
  late List list;
  getVideosStatus() {
    emit(VideoLoading());
    try {
      list = WhatsAppStatus.getStatus(endsWith: '.mp4');
      if (list.isNotEmpty) {
        emit(GetVideosLoaded(videos: list));
      } else if (list.isEmpty) {
        emit(NoFoundVideo());
      }
    } catch (e) {
      emit(
        VideoFailure(e.toString()),
      );
    }
  }
}
