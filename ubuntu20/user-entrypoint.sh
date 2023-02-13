#!/bin/bash -e

USER_ID=$(id -u)
GROUP_ID=$(id -g)

#echo -----------------
#echo ${USER_NAME}
#echo ${USER_ID}
#echo ${GROUP_ID}
#echo -----------------

# 指定したUIDが存在してない場合のみ追加する
if [ -z `getent passwd ${USER_ID}` ]; then
  usermod -u $USER_ID $USER_NAME
fi

# 指定したGIDが存在してない場合のみ追加する
if [ -z `getent group ${GROUP_ID}` ]; then
  groupmod -g $GROUP_ID $USER_NAME
fi

cd /home/${USER_NAME}
export HOME=/home/${USER_NAME}

# パーミッションを元に戻す
sudo chmod u-s /usr/sbin/usermod
sudo chmod u-s /usr/sbin/groupmod
exec $@
