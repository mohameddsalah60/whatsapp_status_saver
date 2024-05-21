import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_status_saver/cubits/image_cubit/image_cubit.dart';

import 'image_grid_view.dart';

class ImageTabBarView extends StatelessWidget {
  const ImageTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImageCubit, ImageState>(
      builder: (context, state) {
        if (state is ImageCubitInitial) {
          return const SizedBox();
        } else if (state is GetImageLoaded) {
          return ImageGridView(items: state.images);
        } else if (state is ImageFailure) {
          return Text('oops , ${state.errorMsg}');
        } else {
          return const Text('oops , try later');
        }
      },
    );
  }
}
