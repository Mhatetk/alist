
# 创建配置文件目录
mkdir -p /opt/alist/data/

cat >/opt/alist/data/config.json <<EOF
{
  "force": false,
  "site_url": "https://pan.mhatetk.top",
  "cdn": "https://registry.npmmirror.com/alist-web/$version/files/dist/",
  "jwt_secret": "",
  "token_expires_in": 48,
  "database": {
    "type": "$DATABASE",
    "host": "$SQLHOST",
    "port": $SQLPORT,
    "user": "$SQLUSER",
    "password": "$SQLPASSWORD",
    "name": "$SQLNAME",
    "db_file": "data\\data.db",
    "table_prefix": "x_",
    "ssl_mode": "require"
  },
  "scheme": {
    "address": "0.0.0.0",
    "http_port": 2233,
    "https_port": -1,
    "force_https": false,
    "cert_file": "",
    "key_file": "",
    "unix_file": "",
    "unix_file_perm": ""
  },
  "temp_dir": "data\\temp",
  "bleve_dir": "data\\bleve",
  "log": {
    "enable": true,
    "name": "data\\log\\log.log",
    "max_size": 10,
    "max_backups": 5,
    "max_age": 28,
    "compress": false
  },
  "delayed_start": 0,
  "max_connections": 0,
  "tls_insecure_skip_verify": true
}
EOF

cd /opt/alist
./alist -conf data/config.json
