Para utilizar este serviço você deve primeiro gerar as chaves de criptografia através do script:
```shell
./sftp/generate_keys.sh
```

E criar os usuários através do script:
```shell
./sftp/add_user.sh nome_usuario senha
```

A pasta que guarda os arquivos dos usuários deve ter a seguinte permissão:
```shell
sudo chown root:root sftp/data/*
sudo chmod 755 sftp/data/*
```