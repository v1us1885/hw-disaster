# Домашнее задание к занятию 1 «Disaster recovery и Keepalived» - `Филатов А. В.`


### Инструкция по выполнению домашнего задания

   1. Сделайте `fork` данного репозитория к себе в Github и переименуйте его по названию или номеру занятия, например, https://github.com/имя-вашего-репозитория/git-hw или  https://github.com/имя-вашего-репозитория/7-1-ansible-hw).
   2. Выполните клонирование данного репозитория к себе на ПК с помощью команды `git clone`.
   3. Выполните домашнее задание и заполните у себя локально этот файл README.md:
      - впишите вверху название занятия и вашу фамилию и имя
      - в каждом задании добавьте решение в требуемом виде (текст/код/скриншоты/ссылка)
      - для корректного добавления скриншотов воспользуйтесь [инструкцией "Как вставить скриншот в шаблон с решением](https://github.com/netology-code/sys-pattern-homework/blob/main/screen-instruction.md)
      - при оформлении используйте возможности языка разметки md (коротко об этом можно посмотреть в [инструкции  по MarkDown](https://github.com/netology-code/sys-pattern-homework/blob/main/md-instruction.md))
   4. После завершения работы над домашним заданием сделайте коммит (`git commit -m "comment"`) и отправьте его на Github (`git push origin`);
   5. Для проверки домашнего задания преподавателем в личном кабинете прикрепите и отправьте ссылку на решение в виде md-файла в вашем Github.
   6. Любые вопросы по выполнению заданий спрашивайте в чате учебной группы и/или в разделе “Вопросы по заданию” в личном кабинете.
   
Желаем успехов в выполнении домашнего задания!
   
### Дополнительные материалы, которые могут быть полезны для выполнения задания

1. [Руководство по оформлению Markdown файлов](https://gist.github.com/Jekins/2bf2d0638163f1294637#Code)

---

### Задание 1

Дана схема для Cisco Packet Tracer, рассматриваемая в лекции.
   На данной схеме уже настроено отслеживание интерфейсов маршрутизаторов Gi0/1 (для нулевой группы)
   Необходимо аналогично настроить отслеживание состояния интерфейсов Gi0/0 (для первой группы).
   Для проверки корректности настройки, разорвите один из кабелей между одним из маршрутизаторов и Switch0 и запустите ping между PC0 и Server0.
   На проверку отправьте получившуюся схему в формате pkt и скриншот, где виден процесс настройки маршрутизатора.


### Решение 1



`При необходимости прикрепитe сюда скриншоты  `
![hspr-1](https://github.com/v1us1885/hw-disaster/blob/master/hspr-1.png)
![hspr-2](https://github.com/v1us1885/hw-disaster/blob/master/hspr-2.png)
[https://github.com/v1us1885/hw-disaster/blob/master/hsrp_advanced1.pkt]


---

### Задание 2

`Установите Zabbix Agent на два хоста.

  Процесс выполнения  
  Выполняя ДЗ, сверяйтесь с процессом отражённым в записи лекции.  
  Установите Zabbix Agent на 2 вирт.машины, одной из них может быть ваш Zabbix Server.  
  Добавьте Zabbix Server в список разрешенных серверов ваших Zabbix Agentов.  
  Добавьте Zabbix Agentов в раздел Configuration > Hosts вашего Zabbix Servera.  
  Проверьте, что в разделе Latest Data начали появляться данные с добавленных агентов.  
### Требования к результаты
  Приложите в файл README.md скриншот раздела Configuration > Hosts, где видно, что агенты подключены к серверу  
  Приложите в файл README.md скриншот лога zabbix agent, где видно, что он работает с сервером  
  Приложите в файл README.md скриншот раздела Monitoring > Latest data для обоих хостов, где видны поступающие от агентов данные.  
  Приложите в файл README.md текст использованных команд в GitHub`  


```
wget https://repo.zabbix.com/zabbix/6.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.0-4+ubuntu22.04_all.deb
dpkg -i zabbix-release_6.0-4+ubuntu22.04_all.deb
apt update
apt install zabbix-agent
sed -i 's/Server=127.0.0.1/Server=10.129.0.9/g' /etc/zabbix/zabbix_agentd.conf
systemctl restart zabbix-agent
systemctl enable zabbix-agent
....
....
....
....
```

`При необходимости прикрепитe сюда скриншоты
![Configuration > Hosts](https://github.com/v1us1885/hw-02/blob/main/conf-zabbix.png)
![log](https://github.com/v1us1885/hw-02/blob/main/log-zabbix.png)
![log](https://github.com/v1us1885/hw-02/blob/main/latest-zabbix.png)


