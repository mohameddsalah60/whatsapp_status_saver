import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_status_saver/service/get_status_whatsapp.dart';

part 'image_state.dart';

class ImageCubit extends Cubit<ImageState> {
  ImageCubit() : super(ImageCubitInitial());
  late List list;
  getImagesStatus() {
    emit(ImageLoading());
    try {
      list = WhatsAppStatus.getStatus(endsWith: '.jpg');
      if (list.isNotEmpty) {
        emit(
          GetImageLoaded(images: list),
        );
      } else if (list.isEmpty) {
        emit(NoFoundImage());
      }
    } catch (e) {
      emit(
        ImageFailure(e.toString()),
      );
    }
  }
}
