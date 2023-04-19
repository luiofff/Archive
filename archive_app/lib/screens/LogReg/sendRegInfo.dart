import 'package:postgres/postgres.dart';
void regInfo(email,password,phoneNum) async {
 final conn = PostgreSQLConnection(
  '10.0.2.2',  // хост (будет изменен на облачный когда БД будет на сервере, пока что обращается к локалке)
  5432,        // порт (по умолчанию)
  'registration_info',      // имя базы данных ( создать нужно с таким именем на своем компе)
  username: 'postgres',     // имя и пароль пользователя ( не мастер-пароль!)
  password: 'postgres',
  );

  await conn.open();
  print('Подключение успешно!');
  await conn.query('''
  INSERT INTO users (email,phone_number,password)
  VALUES (@email,@phone_number,@password)

  ''',substitutionValues: 
  {
  'email': email,
  'phone_number': password,
  'password': phoneNum,
  }
  );
  await conn.close();
  }