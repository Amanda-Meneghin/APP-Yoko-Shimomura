class Company {
  final String name;
  final String description1;
  final String description2;
  final String logoUrl;

  Company({
    required this.name,
    required this.description1,
    required this.description2,
    required this.logoUrl,
  });
}

// Instanciando as informações das empresas
final capcom = Company(
  name: 'Capcom',
  description1:
      'É uma desenvolvedora japonesa líder internacional de videogames e editora de videogames com sede em Osaka, Japão. Foi fundada em 1979 no setor de videogames como Japan Capsule Computers, uma empresa dedicada à fabricação e distribuição de máquinas de jogos eletrônicos.',
  description2:
      'Eles criaram muitas franquias populares, incluindo Street Fighter, Mega Man, Ace Attorney, Final Fight, Breath of Fire, Monster Hunter, Lost Planet e Resident Evil.',
  logoUrl: 'assets/Capcom.jpeg', 
);

final squareEnix = Company(
  name: 'Square Enix',
  description1:
      'A Square Enix é uma desenvolvedora e distribuidora de jogos eletrônicos fundada em 2003, como resultado da fusão entre a Enix Corporation e a Square Co, também conhecida como Squaresoft. A empresa se estabeleceu como uma das maiores companhias do mercado de videogames global.',
  description2:
      'A história da companhia começa em 1975, com a fundação da Enix por Yasuhiro Fukushima, que distribuiu vários jogos ao longo de sua história, mas que teve maior sucesso com a série Dragon Quest.',
  logoUrl: 'assets/AquareEnix.jpeg', 
);
