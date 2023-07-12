class CropList {
  static List<Crop> cropList = [
    Crop(
      cropName: 'Kales(Skuma Wiki)',
      cropType: 'Veg',
      cropImage: '',
      cropDescription: '',
    ),
    Crop(
      cropName: 'Maize',
      cropType: '',
      cropImage: '',
      cropDescription: '',
    ),
    Crop(
      cropName: 'Beans',
      cropType: 'Legume',
      cropImage: '',
      cropDescription: '',
    ),
    Crop(
      cropName: 'Sugar Cane',
      cropType: '',
      cropImage: '',
      cropDescription: '',
    ),
    Crop(
      cropName: 'Tomattoes',
      cropType: 'Veg',
      cropImage: '',
      cropDescription: '',
    ),
  ];
}

class Crop {
  String cropName;
  String cropDescription;
  String cropType;
  String cropImage;

  Crop({
    required this.cropName,
    required this.cropType,
    required this.cropImage,
    required this.cropDescription,
  });
}
