/// Custom exception class to handle various Firebase authentication-related errors.
class UFirebaseAuthException implements Exception {
  /// The error code associated with the exception.
  final String code;

  /// Constructor that takes an error code.
  UFirebaseAuthException(this.code);

  /// Get the corresponding error message based on the error code.
  String get message {
    switch (code) {
      case 'correo electrónico ya en uso':
        return 'La dirección de correo electrónico ya está registrada. Utilice otra dirección.';
      case 'correo electrónico no válido':
        return 'La dirección de correo electrónico proporcionada no es válida. Ingrese una dirección de correo electrónico válida.';
      case 'contraseña débil':
        return 'La contraseña es demasiado débil. Elija una más segura.';
      case 'Deshabilitado por el usuario':
        return 'Esta cuenta de usuario ha sido deshabilitada. Para obtener ayuda, contacte con el servicio de asistencia.';
      case 'Usuario no encontrada':
        return 'Datos de inicio de sesión no válidos. Usuario no encontrado.';
      case 'contraseña incorrecta':
        return 'Contraseña incorrecta. Por favor, revise su contraseña y vuelva a intentarlo.';
      case 'código de verificación no válido':
        return 'Código de verificación no válido. Introduzca un código válido.';
      case 'ID de verificación no válida':
        return 'ID de verificación no válido. Solicite un nuevo código de verificación.';
      case 'cuota excedida':
        return 'Cuota excedida. Inténtelo de nuevo más tarde.';
      case 'el correo electrónico ya existe':
        return 'La dirección de correo electrónico ya existe. Utilice otra.';
      case 'proveedor ya vinculado':
        return 'La cuenta ya está vinculada con otro proveedor.';
      case 'requiere inicio de sesión reciente':
        return 'Esta operación es confidencial y requiere autenticación reciente. Vuelva a iniciar sesión.';
      case 'credencial ya en uso':
        return 'Esta credencial ya está asociada con una cuenta de usuario diferente.';
      case 'discrepancia de usuario':
        return 'El correo electrónico/contraseña es incorrecto.';
      case 'la cuenta existe con diferentes credenciales':
        return 'Ya existe una cuenta con el mismo correo electrónico pero diferentes credenciales de inicio de sesión.';
      case 'operación no permitida':
        return 'Esta operación no está permitida. Contacte con el servicio de asistencia para obtener ayuda.';
      case 'código de acción caducado':
        return 'El código de acción ha expirado. Solicite uno nuevo.';
      case 'código de acción no válido':
        return 'El código de acción no es válido. Compruébelo y vuelva a intentarlo.';
      case 'código de acción faltante':
        return 'Falta el código de acción. Proporcione un código de acción válido.';
      case 'token de usuario expirado':
        return 'El token del usuario ha expirado y se requiere autenticación. Inicie sesión de nuevo.';
      case 'credencial no válida':
        return 'El correo electrónico/contraseña es incorrecto.';
      case 'Usuario-token-revocado':
        return 'El token del usuario ha sido revocado. Inicie sesión de nuevo.';
      case 'carga útil del mensaje no válido':
        return 'La carga útil del mensaje de verificación de la plantilla de correo electrónico no es válida.';
      case 'Remitente inválido':
        return 'El remitente de la plantilla de correo electrónico no es válido. Verifique el correo electrónico del remitente';
      case 'correo electrónico de destinatario no válido':
        return 'La dirección de correo electrónico del destinatario no es válida. Por favor, proporcione una dirección de correo electrónico válida.';
      case 'inicio de iframe faltante':
        return 'A la plantilla de correo electrónico le falta la etiqueta de inicio iframe.';
      case 'in del iframe faltante':
        return 'A la plantilla de correo electrónico le falta la etiqueta final iframe.';
      case 'iframe-src faltante':
        return 'A la plantilla de correo electrónico le falta el atributo iframe src.';
      case 'configuración de dominio de autenticación requerida':
        return 'La configuración de authDomain es necesaria para el enlace de verificación del código de acción.';
      case 'Credencial de aplicación faltante':
        return 'Falta la credencial de la aplicación. Proporcione credenciales válidas.';
      case 'credencial de aplicación no válida':
        return 'La credencial de la aplicación no es válida. Proporcione una credencial válida.';
      case 'cookie de sesión expirada':
        return 'La cookie de sesión de Firebase ha expirado. Vuelve a iniciar sesión.';
      case 'uid-ya-existe':
        return 'El ID de usuario proporcionado ya está siendo utilizado por otro usuario.';
      case 'configuración de cordova no válida':
        return 'La configuración de Cordova proporcionada no es válida.';
      case 'aplicación eliminada':
        return 'Se ha eliminado esta instancia de FirebaseApp.';
      case 'desajuste de token de usuario':
        return 'El token del usuario proporcionado no coincide con el ID de usuario del usuario autenticado.';
      case 'almacenamiento web no compatible':
        return 'El almacenamiento web no es compatible o está deshabilitado.';
      case 'aplicación no autorizada':
        return 'La aplicación no está autorizada a utilizar la autenticación Firebase con la clave API proporcionada.';
      case 'error de llavero':
        return 'Se produjo un error en el llavero. Revísalo y vuelve a intentarlo.';
      case 'error interno':
        return 'Se produjo un error de autenticación interna. Inténtelo de nuevo más tarde.';
      case 'CREDENCIALES DE INICIO DE SESIÓN NO VÁLIDAS':
        return 'Credenciales de inicio de sesión no válidas.';
      default:
        return 'Se produjo un error de autenticación inesperado. Inténtalo de nuevo.';
    }
  }
}
