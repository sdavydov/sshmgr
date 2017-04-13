## Установка
#### Установить утилиты jq sshpass whiptail 
```
$ sudo apt-get update && sudo apt-get install -y jq sshpass whiptail

```

#### Скопировать ssh-list.json в какую то папку
```
$ cp ssh-list.json  /path/to/json/ssh-list.json

```

#### Указать путь для ssh-list.json в файле sshmgr
```
PATH_TO_JSON="/path/to/json/ssh-list.json"

```

#### Скорировать sshmgr в /usr/bin/
```
$ sudo cp sshmgr /usr/bin/sshmgr

```

#### Можно добавить alias в .bashrc для быстрого запуска команды например s
```
alias s='sshmgr'

```

#### Сервера добавляем в файл ssh-list.json там уже есть два сервера для примера
```
Если авторизация по ключу пишем полный путь до ключа key, а поле pass 
оставляем пустым и наоборот, если по паролю pass пишем, key оставляем пустым.
Если есть и пароль и ключ то авторизация в первую очередь будет по ключу. 

```

```json  
[
  {
   "name": "debian-server",  
   "pass": "123",
   "key": "",
   "user": "user",
   "server": "127.0.0.1"
  }
 ,{
   "name": "ubuntu-server",
   "pass": "",
   "key": "/home/user/.ssh/key",
   "user": "root",
   "server": "127.0.0.1"
  }
]
```  
```
Можно также добавлять сервера в файл самим скриптом

   -n --name      -Add name server
   -p --password  -Add user password
   -k --key       -Add path to ssh key
   -u --user      -Add user name
   -s --server    -Add ip or dns name of server
 Examples:
   sshmgr -n NameServer -p Password -k PathToSshKey -u UserName -n IP
   sshmgr -n NameServer -k PathToSshKey -u UserName -n IP
   sshmgr -n NameServer -p Password -u UserName -n IP


```
 
