🔒 BlackIPforFirewall - проект с 🤖 скриптом для Mikrotik Router OS, который автоматически обновляет список IP-адресов с плохой репутацией в firewall address list. 🛡️ Защитите свою сеть от вредоносного ПО, спама и других нежелательных действий! Список IP-адресов регулярно обновляется, чтобы обеспечить максимальную эффективность защиты. 🚀 Быстрый и простой в установке, BlackIPforFirewall - ваш надежный союзник в борьбе за безопасность сети!
# BlackIPforFirewall

BlackIPforFirewall - это проект, содержащий скрипт для Mikrotik Router OS, который автоматически обновляет список IP-адресов с плохой репутацией в firewall address list. Список нежелательных IP-адресов формируется с различных сайтов и проектов, таких как:
- [Blocklist.de](https://www.blocklist.de/en/index.html)
- [Binary Defense Systems](https://www.binarydefense.com)
- [BotScout.com](http://botscout.com/)
- [blocklist.net.ua](https://blocklist.net.ua/)
- [Collective Intelligence Network Security](http://ciarmy.com/)
- [CleanTalk](https://cleantalk.org/)
- [CruzIt.com](http://www.cruzit.com/wbl.php)
- [CyberCrime](http://cybercrime-tracker.net/)
- [C2-Tracker. C2/malware IPs from Shodan](https://github.com/montysecurity/C2-Tracker/)
- [Daniel Gerzo BruteForceBlocker](https://danger.rulez.sk/index.php/bruteforceblocker/)
- [DynDNS.org](http://security-research.dyndns.org/pub/malware-feeds/)
- [Free Proxy List](http://free-proxy-list.net/)
- [Free Proxy List](http://free-proxy-list.net/)
- [IPs exploiting the log4j2 CVE-2021-44228 detected by the crowdsec community]
- [MyIP.ms](http://myip.ms/)
- [Project Honey Pot](https://www.projecthoneypot.org)
- [GreenSnow.co](https://greensnow.co/)
- [Stamparm IPsum](https://github.com/stamparm/ipsum/)
- [StopForumSpam.com](http://www.stopforumspam.com/)
- [VxVault](http://vxvault.net/)
из списка адресов исключаются IP адреса CDN провайдеров:
Akamai , Amazon , Arvancloud, Azure, Bing, Bunny CDN, Cloudflare, Cloudfront, DDoS Guard, Digitalocean, Fastly, Google, все сервисы Github, G-core, Yandex Cloud, Imperva, Incapsula, Leaseweb, MaxCDN, NGenix, Oracle, Qrator, StackPath, StormWall, Sucuri, TcpShield, X4B

оптимизируется путем объединения нескольких адресов в одну запись. 
В будущем планируется добавить bash скрипты для добавления адресов в nftables и iptables.

Цель проекта BlackIPforFirewall - обеспечить защиту вашей сети от IP-адресов, которые могут быть связаны с вредоносным ПО, спамом или другими нежелательными действиями. Список таких IP-адресов регулярно обновляется, чтобы обеспечить максимальную эффективность защиты.

Дополнительный скрипт blackip.rsc создает drop правило в firewall raw, создает в разделе system scripts отдельный скрипт с названием blackip и scheduler для автоматического обновления. Скрипт рекомендуется для первоначальной установки и необходимо выполнить только один раз.

## Использование (только для первой установки)

Для использования скрипта выполните следующие команды в терминале Router OS:

```Mikrotik_Terminal
tool fetch url="https://raw.githubusercontent.com/trskrbz/BlackIPforFirewall/main/blackip.rsc" mode=https
```
```Mikrotik_Terminal
import blackip.rsc
```
отлельный скрипт можно просмотреть в файле [blackip_onlyscript.txt](https://github.com/trskrbz/BlackIPforFirewall/blob/main/blackip_onlyscript.txt)

## Вклад в проект

Если вы обнаружили проблемы в работе проекта или хотите внести свой вклад, пожалуйста, создайте issue или pull request в репозитории на GitHub.

## Лицензия

BlackIPforFirewall распространяется под лицензией MIT. Подробную информацию можно найти в файле `LICENSE`. 

Мы надеемся, что BlackIPforFirewall будет полезен для вас и поможет обеспечить безопасность вашей сети.
