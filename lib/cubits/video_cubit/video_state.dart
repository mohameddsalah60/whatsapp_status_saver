part of 'video_cubit.dart';

sealed class VideoState {}

final class VideoInitial extends VideoState {}

class VideoLoading extends VideoState {}

class NoFoundVideo extends VideoState {}

class GetVideosLoaded extends VideoState {
  final List videos;

  GetVideosLoaded({required this.videos});
}

class VideoFailure extends VideoState {
  final String errorMsg;

  VideoFailure(this.errorMsg);
}
