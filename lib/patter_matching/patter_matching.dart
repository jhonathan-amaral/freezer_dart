import 'package:freezed_annotation/freezed_annotation.dart';

part 'patter_matching.freezed.dart';

@freezed
class Union with _$Union {
  factory Union(int value) = UnionData;
  factory Union.loading() = UnionLoading;
  factory Union.error(String? message) = UnionError;
}

void main() {
  //aqui definiremos qual classe iremos usar para ele quando fizer o when ele fazer a interação
  var union = Union(2);

/*
pattern matching sao formas de usarmos para recuperar
nosso atributos os metodos sao eles ,
when => obriga a preencher todos os construtores da classe, ele traz a classe com os atributos desconstruidos
maybeWhen => com esse podemos implementar apenas o necessario
map => diferenca de whem e que temos que desconstruir
maybeMap =>

 */
//ira mostra de acordo com qual classe é chamado
  var mensagem = union.when<String>((value) => 'Union data implementado',
      loading: () => 'Loading implementado',
      error: (String? message) => 'Error implementado');

  print(mensagem);

//aqui definiremos qual queremos implementar caso nao tratarmos ele ira retornar alguma string com padrao implementado
  var mensagemMaybe = union.maybeWhen(
    null,
    error: (String? message) => ' Loading implementado',
    orElse: () => 'Padrão implementado',
  );
  print(mensagemMaybe);

// aqui iremos ter os atributos ja descontruidos aqui receberemos a classe
  var messageMap = union.map(
    (UnionData value) => '${value.runtimeType} implementado',
    loading: (loading) => ' ${loading.runtimeType} implementado',
    error: (error) => ' ${error.runtimeType} implementado',
  );

  print(messageMap);
}
