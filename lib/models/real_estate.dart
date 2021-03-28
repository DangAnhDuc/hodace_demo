class RealEstate{
  String title;
  String imageUrl;
  String address;
  int price;

  RealEstate({this.title, this.imageUrl, this.address, this.price});
}

final List<RealEstate> realEstates = [
  RealEstate(
    title: 'Nha so 1',
    imageUrl: 'assets/image1.jpg',
    address: '364 Cong Hoa St',
    price: 175,
  ),
  RealEstate(
    imageUrl:  'assets/image2.jpg',
    title: 'Nha so 2',
    address: '500 Nguyen Kiem St',
    price: 300,
  ),
  RealEstate(
    imageUrl:  'assets/image3.jpg',
    title: 'Nha so 3',
    address: '200 Huynh Van Banh St',
    price: 200,
  ),
  RealEstate(
    imageUrl:  'assets/image4.jpg',
    title: 'Nha so 4',
    address: '365 Tan Quy Tan Quy St',
    price: 600,
  ),
  RealEstate(
    imageUrl:  'assets/image5.jpg',
    title: 'Nha so 5',
    address: '364 Le Trong Tan St',
    price: 150,
  ),
  RealEstate(
    imageUrl:  'assets/image6.jpg',
    title: 'Nha so 6',
    address: '305 Dong Khoi St',
    price: 450,
  ),
];