import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_status_saver/service/get_status_whatsapp.dart';

part 'image_state.dart';

class ImageCubit extends Cubit<ImageState> {
  ImageCubit() : super(ImageCubitInitial());
  late List list = [];
  getImagesStatus() {
    emit(ImageLoading());
    try {
      list = WhatsAppStatus.getStatus(endsWith: '.jpg');
      emit(
        GetImageLoaded(images: list),
      );
    } catch (e) {
      emit(
        ImageFailure(e.toString()),
      );
    }
  }
}
