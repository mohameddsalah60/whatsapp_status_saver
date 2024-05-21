import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_status_saver/models/images_model.dart';
import 'package:whatsapp_status_saver/service/get_status_whatsapp.dart';

part 'image_state.dart';

class ImageCubitCubit extends Cubit<ImageState> {
  ImageCubitCubit() : super(ImageCubitInitial());
  List<ImagesModel> list = [];
  getImagesStatus() {
    emit(ImageLoading());
    try {
      list = WhatsAppStatus.getStatus(endsWith: '.jpg');
      emit(
        GetImageSuccess(images: list),
      );
    } catch (e) {
      emit(
        ImageFailure(e.toString()),
      );
    }
  }
}
