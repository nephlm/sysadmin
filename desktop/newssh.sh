#/bin/sh
if [ $# -eq 0 ]
then
    echo "newssh.sh USERNAME(tkusterer)@HOST PORT(22)"
fi



EMAIL=$1
USERNAME="${EMAIL%@*}" # get the user
HOST="${EMAIL#*@}" # get the hostname 

if [ "$USERNAME" == "$HOST" ]
then
  USERNAME=tkusterer
fi

PORT=${2:-22}

echo $USERNAME
echo $HOST
echo $PORT

ssh-copy-id -i .ssh/id_rsa -p $PORT $USERNAME@$HOST
scp ~/.bashrc $USERNAME@$HOST:/home/$USERNAME/
