part of 'image_cubit.dart';

sealed class ImageState {}

class ImageCubitInitial extends ImageState {}

class ImageLoading extends ImageState {}

class NoFoundImage extends ImageState {}

class GetImageLoaded extends ImageState {
  final List images;

  GetImageLoaded({required this.images});
}

class ImageFailure extends ImageState {
  final String errorMsg;

  ImageFailure(this.errorMsg);
}
