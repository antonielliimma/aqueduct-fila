
import 'package:api/api.dart';
import 'package:api/model/senha.dart';
import 'package:aqueduct/managed_auth.dart';

class User extends ManagedObject<_User> implements _User, ManagedAuthResourceOwner<_User> {

  @Serialize(input: true, output: false)
  String password;

}

class _User extends ResourceOwnerTableDefinition {

  ManagedSet<Operador> operadores;
  ManagedSet<Senha> senhas;  
    
}
