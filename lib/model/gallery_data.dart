class GalleryPhoto {
  String name;
  String description;
  String imageUrl;
  String dateTaken;

  GalleryPhoto({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.dateTaken,
  });
}

var galleryPhotoList = [
  GalleryPhoto(
    name: 'My Laptop',
    description: 'this is my laptop',
    imageUrl: 'https://picsum.photos/id/0/300/300',
    dateTaken: '25/12/2019',
  ),
  GalleryPhoto(
    name: 'Water Drip',
    description: 'rainy day',
    imageUrl: 'https://picsum.photos/id/123/300/300',
    dateTaken: '19/05/2019',
  ),
  GalleryPhoto(
    name: 'Old House',
    description: 'this is old house',
    imageUrl: 'https://picsum.photos/id/78/300/300',
    dateTaken: '12/12/2019',
  ),
  GalleryPhoto(
    name: 'Sunrise',
    description: 'watch out for the sun rising on the horizon',
    imageUrl: 'https://picsum.photos/id/151/300/300',
    dateTaken: '12/05/2020',
  ),
  GalleryPhoto(
    name: 'Grape',
    description: 'this is a grape',
    imageUrl: 'https://picsum.photos/id/75/300/300',
    dateTaken: '15/05/2020',
  ),
  GalleryPhoto(
    name: 'My Coffee',
    description: 'drink this coffee',
    imageUrl: 'https://picsum.photos/id/30/300/300',
    dateTaken: '27/08/2020',
  ),
  GalleryPhoto(
    name: 'Lion Nose',
    description: 'this is a lion nose close to the camera',
    imageUrl: 'https://picsum.photos/id/40/300/300',
    dateTaken: '01/01/2021',
  ),
  GalleryPhoto(
    name: 'Flower',
    description: 'this is a flower',
    imageUrl: 'https://picsum.photos/id/33/300/300',
    dateTaken: '11/11/2021',
  ),
  GalleryPhoto(
    name: 'Roof Top',
    description: 'this is a roof top',
    imageUrl: 'https://picsum.photos/id/101/300/300',
    dateTaken: '31/01/2022',
  ),
  GalleryPhoto(
    name: 'Glasses',
    description: 'see the world through the glasses',
    imageUrl: 'https://picsum.photos/id/201/300/300',
    dateTaken: '02/02/2022',
  ),
];
