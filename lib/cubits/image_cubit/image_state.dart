part of 'image_cubit.dart';

sealed class ImageState {}

class ImageCubitInitial extends ImageState {}

class ImageLoading extends ImageState {}

class GetImageSuccess extends ImageState {
  final List<ImagesModel> images;

  GetImageSuccess({required this.images});
}

class ImageFailure extends ImageState {
  final String errorMsg;

  ImageFailure(this.errorMsg);
}
