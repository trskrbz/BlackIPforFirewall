# BlackIPforFirewall
🔒 BlackIPforFirewall is a project that contains a script for Mikrotik RouterOS, which automatically updates the firewall address list with IP addresses that have a bad reputation. The list of unwanted IP addresses is formed from various sites and projects, such as:
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

IP addresses of CDN providers are excluded from the list, including Akamai, Amazon, Arvancloud, Azure, Bing, Bunny CDN, Cloudflare, Cloudfront, DDoS Guard, Digitalocean, Fastly, Google, all Github services, G-core, Yandex Cloud, Imperva, Incapsula, Leaseweb, MaxCDN, NGenix, Oracle, Qrator, StackPath, StormWall, Sucuri, TcpShield, and X4B. The list is optimized by combining several IP addresses into one record. In the future, bash scripts will be added to add addresses to nftables and iptables.

🎯 The goal of the BlackIPforFirewall project is to provide protection for your network against IP addresses that may be associated with malware, spam, or other unwanted activity. The list of such IP addresses is regularly updated to ensure maximum protection effectiveness.

An additional script, blackip.rsc, creates a drop rule in the firewall raw, creates a separate script in the system scripts section called blackip, and a scheduler for automatic updates. The script is recommended for initial installation and only needs to be executed once.

## Usage (for first-time installation only)

To use the script, execute the following commands in the RouterOS terminal:
```Mikrotik_Terminal
tool fetch url="https://raw.githubusercontent.com/trskrbz/BlackIPforFirewall/main/blackip.rsc" mode=https
```
```Mikrotik_Terminal
import blackip.rsc
```
You can view the separate script in the file [blackip_onlyscript.txt](https://github.com/trskrbz/BlackIPforFirewall/blob/main/blackip_onlyscript.txt)

## Contributions

If you find any issues with the project or want to contribute, please create an issue or pull request in the GitHub repository.

## License

BlackIPforFirewall is distributed under the MIT license. For more information, see the `LICENSE` file.

We hope that BlackIPforFirewall will be useful for you and help ensure the security of your network.
