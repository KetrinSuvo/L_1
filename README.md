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


