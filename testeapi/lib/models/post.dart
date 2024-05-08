class Pokemon {
  final int id;
  final String nome;
  final String tipo;
  final String habilidade;
  final String descricao;
  final String imagem;

  Pokemon({
    required this.id,
    required this.nome,
    required this.tipo,
    required this.habilidade,
    required this.descricao,
    required this.imagem,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      id: json['id'],
      nome: json['nome'],
      tipo: json['tipo'],
      habilidade: json['habilidade'],
      descricao: json['descricao'],
      imagem: json['imagem'],
    );
  }
}
