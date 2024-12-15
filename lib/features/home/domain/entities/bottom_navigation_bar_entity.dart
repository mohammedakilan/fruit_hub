import 'package:fruit_hub/core/utils/app_images.dart';

class BottomNavigationBarEntity {
  final String activeImage, isActiveImage;
  final String name;

  BottomNavigationBarEntity(
      {required this.activeImage,
      required this.isActiveImage,
      required this.name});

  List<BottomNavigationBarEntity> get bottomNavigationBarItems => [
        BottomNavigationBarEntity(
            activeImage: Assets.imagesVuesaxBoldHome,
            isActiveImage: Assets.imagesVuesaxOutlineHome,
            name: 'الرئيسية'),
        BottomNavigationBarEntity(
            activeImage: Assets.imagesVuesaxBoldProducts,
            isActiveImage: Assets.imagesVuesaxOutlineProducts,
            name: 'المنتجات'),
        BottomNavigationBarEntity(
            activeImage: Assets.imagesVuesaxBoldShoppingCart,
            isActiveImage: Assets.imagesVuesaxOutlineShoppingCart,
            name: 'سلة التسوق'),
        BottomNavigationBarEntity(
            activeImage: Assets.imagesVuesaxBoldUser,
            isActiveImage: Assets.imagesVuesaxOutlineUser,
            name: "حسابي"),
      ];
}
