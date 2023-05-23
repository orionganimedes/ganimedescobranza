import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'id', 'ms'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? idText = '',
    String? msText = '',
  }) =>
      [enText, idText, msText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Login
  {
    '3p97u62u': {
      'en': 'Bienvenido ',
      'id': 'Selamat Datang kembali!',
      'ms': 'Selamat kembali!',
    },
    'xkz4xjo6': {
      'en': 'El Universo de tus finanzas',
      'id': 'Gunakan formulir di bawah ini untuk mengakses akun Anda.',
      'ms': 'Gunakan borang di bawah untuk mengakses akaun anda.',
    },
    'k9u5spqi': {
      'en': 'Correo Electronico',
      'id': 'Alamat email',
      'ms': 'Alamat emel',
    },
    'f4xxyrqv': {
      'en': 'ingrese su email',
      'id': 'Masukkan email Anda disini...',
      'ms': 'Masukkan e-mel anda di sini...',
    },
    'lfzvgi5q': {
      'en': 'Tu Contraseña ',
      'id': 'Kata sandi',
      'ms': 'Kata laluan',
    },
    'wt8sx5du': {
      'en': 'Ingresa tu clave',
      'id': 'Masukkan kata sandi Anda di sini...',
      'ms': 'Masukkan kata laluan anda di sini...',
    },
    'm9klj9ah': {
      'en': 'Iniciar Sesion',
      'id': 'Gabung',
      'ms': 'Log masuk',
    },
    'iha5socs': {
      'en': 'Home',
      'id': 'Rumah',
      'ms': 'Rumah',
    },
  },
  // Home
  {
    '3bi54x5g': {
      'en': 'Bienvenido',
      'id': 'Dasbor',
      'ms': 'Papan pemuka',
    },
    'nnv46x35': {
      'en': 'El Universo de tu finanzas.',
      'id': 'Di bawah ini adalah ringkasan aktivitas tim Anda.',
      'ms': 'Di bawah ialah ringkasan aktiviti pasukan anda.',
    },
    'jqevo63s': {
      'en': 'Clientes',
      'id': 'pelanggan baru',
      'ms': 'pelanggan baru',
    },
    '8vot9bzj': {
      'en': 'Ganancias del mes',
      'id': 'Kontrak Baru',
      'ms': 'Kontrak Baru',
    },
    'saxskj92': {
      'en': 'Expired Contracts',
      'id': 'Kontrak Kedaluwarsa',
      'ms': 'Kontrak Tamat',
    },
    '2wlrr5lg': {
      'en': '4300',
      'id': '4300',
      'ms': '4300',
    },
    'puy8obok': {
      'en': 'Contract Activity',
      'id': 'Aktivitas Kontrak',
      'ms': 'Aktiviti Kontrak',
    },
    'zlovh0zt': {
      'en': 'Below is an a summary of activity.',
      'id': 'Di bawah ini adalah ringkasan kegiatan.',
      'ms': 'Di bawah ialah ringkasan aktiviti.',
    },
    'g1uaaovn': {
      'en': 'Customer Activity',
      'id': 'Aktivitas Pelanggan',
      'ms': 'Aktiviti Pelanggan',
    },
    'e5q3ows1': {
      'en': 'Below is an a summary of activity.',
      'id': 'Di bawah ini adalah ringkasan kegiatan.',
      'ms': 'Di bawah ialah ringkasan aktiviti.',
    },
    'uj7jsxmo': {
      'en': 'Agenda',
      'id': 'Aktivitas Kontrak',
      'ms': 'Aktiviti Kontrak',
    },
    'hkk2zmjw': {
      'en': 'calendario de pagos y tareas',
      'id': 'Di bawah ini adalah ringkasan kegiatan.',
      'ms': 'Di bawah ialah ringkasan aktiviti.',
    },
    'jkgae0vc': {
      'en': 'Control de pagos',
      'id': 'Aktivitas Pelanggan',
      'ms': 'Aktiviti Pelanggan',
    },
    'g4os7kcp': {
      'en': 'Control de pagos',
      'id': 'Di bawah ini adalah ringkasan kegiatan.',
      'ms': 'Di bawah ialah ringkasan aktiviti.',
    },
    'bbulqysw': {
      'en': 'Clientes',
      'id': 'Aktivitas Pelanggan',
      'ms': 'Aktiviti Pelanggan',
    },
    '6j9tzw8d': {
      'en': 'Listado',
      'id': 'Di bawah ini adalah ringkasan kegiatan.',
      'ms': 'Di bawah ialah ringkasan aktiviti.',
    },
    'y24lcr13': {
      'en': 'Dashboard',
      'id': 'Dasbor',
      'ms': 'Papan pemuka',
    },
    'xdxbdj20': {
      'en': '__',
      'id': '__',
      'ms': '__',
    },
  },
  // Clientes_list
  {
    'n99lg1qh': {
      'en': 'Customers',
      'id': 'Pelanggan',
      'ms': 'Pelanggan',
    },
    'lvnskphp': {
      'en': 'Lista de clientes',
      'id': 'Semua',
      'ms': 'Semua',
    },
    'u0su8kte': {
      'en': 'James Wiseman',
      'id': 'James Wiseman',
      'ms': 'James Wiseman',
    },
    'nyfsg4hw': {
      'en': 'Account Manager',
      'id': 'Manajer Akuntansi',
      'ms': 'Pengurus akaun',
    },
    'gzwu4cjr': {
      'en': 'ACME Co.',
      'id': 'ACME Co.',
      'ms': 'ACME Co.',
    },
    'v1ffzm93': {
      'en': 'Ignacious Rodriguez',
      'id': 'Rodriguez yang kejam',
      'ms': 'Ignacious Rodriguez',
    },
    '8jo402mn': {
      'en': 'Sales Manager',
      'id': 'Manajer penjualan',
      'ms': 'Pengurus jualan',
    },
    'r658c9dm': {
      'en': 'Robin HQ',
      'id': 'Robin HQ',
      'ms': 'Robin HQ',
    },
    'l5cpbw6i': {
      'en': 'Elena Williams',
      'id': 'Elena Williams',
      'ms': 'Elena Williams',
    },
    '9ico69uv': {
      'en': 'Head of Product & Innovation',
      'id': 'Kepala Produk &amp; Inovasi',
      'ms': 'Ketua Produk &amp; Inovasi',
    },
    'i1898004': {
      'en': 'Robin HQ',
      'id': 'Robin HQ',
      'ms': 'Robin HQ',
    },
    's8kuamom': {
      'en': 'Greg Brown',
      'id': 'Greg Brown',
      'ms': 'Greg Brown',
    },
    'uu60i528': {
      'en': 'Account Manager',
      'id': 'Manajer Akuntansi',
      'ms': 'Pengurus akaun',
    },
    '6nuzim8s': {
      'en': 'Robin HQ',
      'id': 'Robin HQ',
      'ms': 'Robin HQ',
    },
    'lwflemu4': {
      'en': 'June Williamson',
      'id': 'Juni Williamson',
      'ms': 'June Williamson',
    },
    'rxejb1ds': {
      'en': 'Sr. Account Manager',
      'id': 'Manajer Akun Senior',
      'ms': 'Tuan Pengurus Akaun',
    },
    'k5yutyp7': {
      'en': 'HealthAi',
      'id': 'KesehatanAi',
      'ms': 'KesihatanAi',
    },
    'z6bqikmn': {
      'en': 'June Williamson',
      'id': 'Juni Williamson',
      'ms': 'June Williamson',
    },
    'rm4hba82': {
      'en': 'Sr. Account Manager',
      'id': 'Manajer Akun Senior',
      'ms': 'Tuan Pengurus Akaun',
    },
    'id05iiyh': {
      'en': 'HealthAi',
      'id': 'KesehatanAi',
      'ms': 'KesihatanAi',
    },
    'fcyoodds': {
      'en': 'Customers',
      'id': 'Pelanggan',
      'ms': 'Pelanggan',
    },
    '3ourv2w9': {
      'en': '__',
      'id': '__',
      'ms': '__',
    },
  },
  // userDetails
  {
    'obyrn1rb': {
      'en': 'Cliente',
      'id': 'Nama Pelanggan',
      'ms': 'Nama Pelanggan',
    },
    'ecbeopja': {
      'en': 'Costo de renta',
      'id': 'Judul',
      'ms': 'Tajuk',
    },
    'kl55bl1c': {
      'en': 'Domicilio',
      'id': 'Perusahaan',
      'ms': 'Syarikat',
    },
    'suvzdvvk': {
      'en': 'Cobrar',
      'id': 'Lihat Perusahaan',
      'ms': 'Lihat Syarikat',
    },
    '9t913b44': {
      'en': 'Home',
      'id': 'Rumah',
      'ms': 'Rumah',
    },
  },
  // agenda
  {
    'khotfvcc': {
      'en': 'Month',
      'id': '',
      'ms': '',
    },
    'xgeoi07n': {
      'en': 'Fechas proximas de pago ',
      'id': '',
      'ms': '',
    },
    'q4gd0xdz': {
      'en': 'Past Due',
      'id': '',
      'ms': '',
    },
    'h4oovq1q': {
      'en': 'Week',
      'id': '',
      'ms': '',
    },
    '24jjmjv0': {
      'en': 'Coming Up',
      'id': '',
      'ms': '',
    },
    '7kvbt3u0': {
      'en': 'Doctors Check In',
      'id': '',
      'ms': '',
    },
    'qs8tkkdp': {
      'en': '2:20pm',
      'id': '',
      'ms': '',
    },
    'zdwc5efq': {
      'en': 'Wed, 03/08/2022',
      'id': '',
      'ms': '',
    },
    'mxd8xdsq': {
      'en': 'Past Due',
      'id': '',
      'ms': '',
    },
    '8graam5r': {
      'en': 'Check In',
      'id': '',
      'ms': '',
    },
    '33fpvtrr': {
      'en': '2:20pm',
      'id': '',
      'ms': '',
    },
    'sy6mqhsw': {
      'en': 'Wed, 03/08/2022',
      'id': '',
      'ms': '',
    },
    'wr1zn2mp': {
      'en': 'Agenda',
      'id': '',
      'ms': '',
    },
    'c4kc9mj4': {
      'en': '1',
      'id': '',
      'ms': '',
    },
    'eixzq1zs': {
      'en': 'Home',
      'id': '',
      'ms': '',
    },
  },
  // clientenuevo
  {
    'jiq2okb1': {
      'en': 'Cliente Nuevo',
      'id': '',
      'ms': '',
    },
    'cwabms3x': {
      'en': 'Agregar Cliente',
      'id': '',
      'ms': '',
    },
    'ac4x4rhq': {
      'en': 'Agrega nuevos clientes',
      'id': '',
      'ms': '',
    },
    'xrgxpk0j': {
      'en': 'Nombre del cliente',
      'id': '',
      'ms': '',
    },
    'd6u6pz5n': {
      'en': 'Numero de contacto',
      'id': '',
      'ms': '',
    },
    '1w5ojzjv': {
      'en': 'Direccion',
      'id': '',
      'ms': '',
    },
    '2vwpu4a1': {
      'en': 'Costo de renta',
      'id': '',
      'ms': '',
    },
    '79hbqg5v': {
      'en': 'Giro',
      'id': '',
      'ms': '',
    },
    'ttt4g6lk': {
      'en': 'Numero de predial',
      'id': '',
      'ms': '',
    },
    '091hr067': {
      'en': 'Fecha de Pago ',
      'id': '',
      'ms': '',
    },
    'z5vjlwb8': {
      'en': 'Guardar',
      'id': '',
      'ms': '',
    },
    'k2zpd8y9': {
      'en': 'UserName',
      'id': '',
      'ms': '',
    },
    '1b4xe9ks': {
      'en': 'Overall',
      'id': '',
      'ms': '',
    },
    'tezhcs1o': {
      'en': '5',
      'id': '',
      'ms': '',
    },
    'ras50abk': {
      'en':
          'Nice outdoor courts, solid concrete and good hoops for the neighborhood.',
      'id': '',
      'ms': '',
    },
    'n58mgwpk': {
      'en': 'Home',
      'id': '',
      'ms': '',
    },
  },
  // Miscellaneous
  {
    '65e2tfs2': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'ddazihx4': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'db03cpjj': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'fdb9078p': {
      'en': '',
      'id': '',
      'ms': '',
    },
    '80ouzj9q': {
      'en': '',
      'id': '',
      'ms': '',
    },
    '6rzhptp9': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'ce8c4ty0': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'kcvqa08x': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'dqrzd6sq': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'dpqtohyf': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'v01vf71s': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'gcv6def1': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'um9es99m': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'o4enbz4j': {
      'en': '',
      'id': '',
      'ms': '',
    },
    '8z4tvfh7': {
      'en': '',
      'id': '',
      'ms': '',
    },
    '2ybzla8x': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'd1wdf5i1': {
      'en': '',
      'id': '',
      'ms': '',
    },
    '1l14w0k7': {
      'en': '',
      'id': '',
      'ms': '',
    },
    '2py80kgi': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'p6lsrh2a': {
      'en': '',
      'id': '',
      'ms': '',
    },
    'ne8cclp9': {
      'en': '',
      'id': '',
      'ms': '',
    },
  },
].reduce((a, b) => a..addAll(b));
