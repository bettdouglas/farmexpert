

class CropList {
  static List<Crop> cropList = [
    Crop(
        cropName: 'Kales(Skuma Wiki)',
        cropType: 'Veg',
        cropImage: '',
        cropDescription: ''),
        Crop(
        cropName: 'Maize',
        cropType: '',
        cropImage: '',
        cropDescription: ''),
        Crop(
        cropName: 'Beans',
        cropType: 'Legume',
        cropImage: '',
        cropDescription: ''),
        Crop(
        cropName: 'Sugar Cane',
        cropType: '',
        cropImage: '',
        cropDescription: ''),
        Crop(
        cropName: 'Tomattoes',
        cropType: 'Veg',
        cropImage: '',
        cropDescription: ''),
  ];
}

class Crop {
  String cropName;
  String cropDescription;
  String cropType;
  String cropImage;

  Crop({
    this.cropName,
    this.cropType,
    this.cropImage,
    this.cropDescription,
  });
}
