# L_1
#Задание №1
Для (одной из, или всех вместе) утилит /usr/bin/chfn, /usr/bin/chsh /usr/bin/passwd снять (1) SUID бит, передающий права суперпользователя при их исполнении. Назначить (2) утилитам минимально необходимые capabilities(7), достаточные для их успешного исполнения. В случае необходимости, изменить исходный код утилит, при помощи прикладывания патча к deb-пакету.

Результат оформить в виде bash-сценария, повторяющего ваши действия (1) и (2).

В качестве дополнительного задания - включить полученный скрипт в процедуру постинстялляции (postinst) модифицированного deb-пакета.

Изменения представить в виде git-репозитария на github.com


# 1 
which passwd

dpkg -S /usr/bin/passwd

apt-get source passwd

# 2
bash скрипт / script.sh
-—
!/bin/bash

remove suid bit

chmod u-s /usr/bin/chfn

chmod u-s /usr/bin/chsh

chmod u-s /usr/bin/passwd

change capabilities

setcap cap_setuid,cap_chown+ep /usr/bin/chfn

setcap cap_setuid,cap_chown+ep /usr/bin/chsh

setcap cap_chown,cap_dac_override,cap_fowner+ep /usr/bin/passwd


exit 0

-—

# 3

Вписываем скрипт в passwd.postinst (/home/ketrin/L_1/shadow-4.1.5.1/debian)

# 4

Проверка

1. устанавливаем все необходимые зависимости

sudo apt-get build-dep passwd

2. меняем ченджлог

dch -i
3. собираем пакет

dpkg-buildpackage -D -us -uc

4. смотрим суид бит и аттрибуты ДО:

ls -lia /usr/bin/chfn /usr/bin/chsh /usr/bin/passwd

getcap -v /usr/bin/chfn /usr/bin/chsh /usr/bin/passwd

5. устанавливаем пакет

sudo dpkg -i —force-overwrite —debug=2 passwd_ХХХХХХХ

6. проверяем суид и атрибуты

ls -lia /usr/bin/chfn /usr/bin/chsh /usr/bin/passwd

getcap -v /usr/bin/chfn /usr/bin/chsh /usr/bin/passwd



