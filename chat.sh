#!/bin/bash
clear
echo -e  "\033[32m Добро пожаловать в BashChat! \033[0m"
echo -e "\033[32m Введите имя: \033[0m"
read user_name

if
  [ -n "$user_name" ]; then
echo -e "\033[32m Привет $user_name! \033[0m"

else
  echo -e "\033[32m Вы не указали имя! Повторите запуск.. \033[0m"
exit
fi

echo -e "\033[32m Укажите IP-адрес \033[0m"
read ip_address
echo -e "\033[32m Укажите ПОРТ \033[0m"
read port
if [ -z "$ip_address" ]; then
echo -e "\033[32m Вы не указали адрес \033[0m"
if    [ -z "$port" ]; then
echo -e "\033[32m Вы не указали ПОРТ \033[0m"
exit

fi

fi

if
  [ -n "$ip_address" ];
  [ -n "$port" ]; then
clear
echo -e "\033[32m Соединение c пользователем $ip_address  установленно, приятного общения! \033[0m"

nc -s 1  $ip_address $port

fi

