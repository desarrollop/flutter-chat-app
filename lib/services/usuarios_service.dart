import 'package:chat/global/environment.dart';
import 'package:chat/models/usuarios_response.dart';
import 'package:chat/services/auth_service.dart';
import 'package:http/http.dart' as http;
import 'package:chat/models/usuario.dart';

class UsuariosService {
  Future<List<Usuario>> getUsuarios() async {
    try {
      final url = Uri.parse('${Environment.apiUrl}/usuarios');
      final token = await AuthService.getToken();
      final resp = await http.get(url,
          headers: {'Content-Type': 'application/json', 'x-token': token!});

      final usuarioResponse = usuariosResponseFromJson(resp.body);

      return usuarioResponse.usuarios;
    } catch (e) {
      return [];
    }
  }
}
