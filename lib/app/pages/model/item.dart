class Item {
  final String nome;
  final String data;
  final String rua;
  final String bairro;
  final String total;

  Item(this.nome, this.data, this.rua, this.bairro, this.total);
}

  final List<Item> selectedList = [
    Item("Julia", "01/09/2023", "Rua: Lala", "Centro", "R\$ 100,00"),
    Item("Janet", "02/09/2023", "Rua: Lala", "JSP", "R\$ 75,50"),
    Item("Juana", "03/09/2023", "Rua: Lala", "Vila Suissa", "R\$ 1,75"),
  ];