class Product {
  final int id, price;
  final String title, subTitle, description, image;

  Product({
    required this.id,
    required this.price,
    required this.title,
    required this.subTitle,
    required this.description,
    required this.image,
  });
}

// list of products
List<Product> products = [
  Product(
    id: 1,
    price: 59,
    title: "Wireless Earbuds",
    subTitle: "High quality sound",
    image: "assets/images/airpod.png",
    description:
    "High-quality wireless earbuds with clear sound and long battery life. Perfect for daily use and calls.",
  ),
  Product(
    id: 2,
    price: 1099,
    title: "Smart Phone",
    subTitle: "Power in your hands",
    image: "assets/images/mobile.png",
    description:
    "A powerful smartphone with fast performance, advanced camera system, and modern design.",
  ),
  Product(
    id: 3,
    price: 39,
    title: "VR Glasses",
    subTitle: "Enter the virtual world",
    image: "assets/images/class.png",
    description:
    "Experience immersive virtual reality with these lightweight and comfortable VR glasses.",
  ),
  Product(
    id: 4,
    price: 56,
    title: "Headset",
    subTitle: "Long listening comfort",
    image: "assets/images/headset.png",
    description:
    "Comfortable headset with deep bass and clear audio, perfect for music and gaming.",
  ),
  Product(
    id: 5,
    price: 68,
    title: "Voice Recorder",
    subTitle: "Capture important moments",
    image: "assets/images/speaker.png",
    description:
    "High-quality voice recorder for meetings, lectures, and personal notes with clear audio capture.",
  ),
  Product(
    id: 6,
    price: 39,
    title: "Web Camera",
    subTitle: "High resolution video",
    image: "assets/images/camera.png",
    description:
    "HD webcam with sharp image quality, perfect for video calls and online meetings.",
  ),
];