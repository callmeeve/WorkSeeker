class Job {
  final String title, subtitle, description, review, imageUrl;
  final int id, price;

  Job({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.review,
    required this.imageUrl,
    required this.price,
  });
}

List<Job> jobs = [
  Job(
    id: 1,
    title: "Graphics Design",
    subtitle: "Deskripsi Pekerjaan Pertama",
    description: '''Ini adalah deskripsi pekerjaan pertama.
    Ini bisa berisi beberapa informasi lebih lanjut tentang pekerjaan ini.''',
    review: "113",
    price: 5000,
    imageUrl: "assets/images/user3.jpg",
  ),
  Job(
    id: 2,
    title: "Frontend Developer",
    subtitle: "Deskripsi Pekerjaan Kedua",
    description: '''Ini adalah deskripsi pekerjaan kedua.
    Ini bisa berisi beberapa informasi lebih lanjut tentang pekerjaan ini.''',
    review: "224",
    price: 7500,
    imageUrl: "assets/images/user1.jpg",
  ),
  // Tambahkan objek Job lainnya sesuai kebutuhan.
];
