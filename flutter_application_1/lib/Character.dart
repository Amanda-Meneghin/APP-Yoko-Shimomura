// ignore_for_file: file_names

class Character {
  final String name;
  final String description;
  final String imageUrl;

  Character({
    required this.name,
    required this.description,
    required this.imageUrl,
  });
}

// Instanciando os dados dos personagens
final characters = [
  Character(
    name: 'Noctis',
    description:
        'Ele é o príncipe herdeiro do trono de Lucis, o reino que possui controle sobre o Cristal. Por conta disso, ele possui os poderes dos reis de Lucis.',
    imageUrl: 'assets/Noctis.jpeg', // Caminho da imagem do Noctis
  ),
  Character(
    name: 'Sora',
    description:
        'Um garoto que ganha uma misteriosa arma chamada Keyblade e acaba viajando por diversos mundos (Em sua maioria, da Disney) lutando contra criaturas chamadas Heartless.',
    imageUrl: 'assets/Sora.jpeg', // Caminho da imagem do Sora
  ),
  Character(
    name: 'Ryu',
    description:
        'Protagonista da franquia Street Fighter, é o personagem mais popular, muito por conta do seu golpe principal: o Hadouken.',
    imageUrl: 'assets/Ryu.jpeg', // Caminho da imagem do Ryu
  ),
  Character(
    name: 'Aya Brea',
    description:
        'Aya é retratada como uma policial americana de força de vontade que se envolve em cenários apocalípticos, lutando contra monstruosidades biológicas mutantes.',
    imageUrl: 'assets/AyaBrea.jpeg', // Caminho da imagem da Aya Brea
  ),
  Character(
    name: 'Toto',
    description:
        'O personagem principal é conhecido como o "Portador de Mana" ou "Herói", sendo possível personalizar com raça e estilos de combate dentro do jogo.',
    imageUrl: 'assets/Toto.jpeg', // Caminho da imagem do Toto
  ),
];