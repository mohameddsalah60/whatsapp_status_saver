import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_status_saver/cubits/image_cubit/image_cubit.dart';

import 'image_grid_view.dart';

class ImageTabBarView extends StatefulWidget {
  const ImageTabBarView({super.key});

  @override
  State<ImageTabBarView> createState() => _ImageTabBarViewState();
}

class _ImageTabBarViewState extends State<ImageTabBarView> {
  @override
  void initState() {
    BlocProvider.of<ImageCubit>(context).getImagesStatus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImageCubit, ImageState>(
      builder: (context, state) {
        if (state is GetImageLoaded) {
          return ImageGridView(images: state.images);
        } else if (state is NoFoundImage) {
          return const Text('No Found DATA');
        } else if (state is ImageFailure) {
          return Text('oops , ${state.errorMsg}');
        } else {
          return const Text('oops , try later');
        }
      },
    );
  }
}
