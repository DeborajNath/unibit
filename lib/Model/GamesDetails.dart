class GamesDetails {
  final int id;
  final String name;
  final String img;
  final String players;
  final String img2;

  GamesDetails(
      {required this.id,
      required this.name,
      required this.img,
      required this.players,
      required this.img2});

  // GamesDetails.fromJson(Map<String, dynamic> json) {
  //   id = json['id'];
  //   name = json['name'];
  //   img = json['img'];
  //   players = json['players'];
  //   img2 = json['img2'];
  // }
}

List<GamesDetails> Games = [
  GamesDetails(
      id: 0,
      name: "Play Ludo and Earn Money",
      img: "assets/Ludo.png",
      players: "5,00,000",
      img2: "assets/people.png"),
  GamesDetails(
      id: 1,
      name: "Play Cricket Fantasy League",
      img: "assets/cricket.png",
      players: "5,00,000",
      img2: "assets/people.png"),
  GamesDetails(
      id: 2,
      name: "Play Asphalt and Earn Money",
      img: "assets/asphalt.jpg",
      players: "10,00,000",
      img2: "assets/people.png"),
];
