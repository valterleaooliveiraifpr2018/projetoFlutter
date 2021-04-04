final createTable = '''
  CREATE TABLE contact(
  id INT NOT NULL PRIMARY KEY
  ,nome VARCHAR(200) NOT NULL
  ,telefone CHAR(16) NOT NULL
  ,email VARCHAR(150)
  ,url_avatar VARCHAR(300) NOT NULL

  )
''';

final insert1 = '''
INSERT INTO contact('nome', 'telefone', 'email','url_avatar')
VALUES('Carlos', '(44)3422-3275', 'carlos@email.com','https://cdn.pixabay.com/photo/2018/08/28/12/41/avatar-3637425_1280.png')
''';
final insert2 = '''
INSERT INTO contact('nome', 'telefone', 'email', 'url_avatar')
VALUES('Anderson', '(11)9652-5454', 'anderson@email.com','https://cdn.pixabay.com/photo/2018/08/28/13/29/avatar-3637561_1280.png')
''';
final insert3 = '''
INSERT INTO contact('nome', 'telefone', 'email', 'url_avatar')
VALUES('Maria', '(44)226-6584','maria@email.com', 'https://cdn.pixabay.com/photo/2021/03/12/08/01/child-6089047_1280.png')
''';
