# 初始化rclone配置
mkdir -p /.config/rclone
cat << EOF > /.config/rclone/rclone.conf
$rclone
EOF
# 启动rclone
/usr/bin/rclone mount ${remote_path}  ./storage --daemon
exec java -jar reader-2.5.7.jar --server.port=${PORT} --reader.app.secure=true --reader.app.secureKey=secureKey --reader.app.inviteCode=inviteCode