# Week 5 Report

Phase 5: Advanced Security and Monitoring Infrastructure (Week 5):

1. Implement Access Control using SELinux or AppArmor, with documentation showing how to track and report on access control settings.?

Ans: Ubuntu Server sticks withAppArmor right out of the box. Itâ€™s the go-to choice for mandatory access control here, and you donâ€™t have to mess with the kernel to get it working. 

Command use:

Sudo systemctl status apparmor,

A screenshot of a computer

AI-generated content may be incorrect.

Sudo aa-status:

A screenshot of a computer

AI-generated content may be incorrect.

With AppArmor, you set the rules for what each application can and canâ€™t do by loading specific security profiles. To check if everythingâ€™s running as expected, you can use aa status. That shows you which profiles are active and confirms that AppArmor is doing its job, keeping those access rules in place.

2. Configure automatic security updates with evidence of implementation?

Configuration Steps

Install unattended upgrades:

A screen shot of a computer

AI-generated content may be incorrect.

Enable automatic updates:

A screenshot of a computer

AI-generated content may be incorrect.

Check configuration:

A black background with white text

AI-generated content may be incorrect.



Automatic security upgrades are provided through a packagecalled unattended-upgrades, and provide a risk-reducing mechanism for software, because users will not have to monitor for and apply critical security upgrades manually.

3. Configure fail2ban for enhanced intrusion detection?

Ans: Fail2Ban Configuration

Installation:

A screenshot of a computer program

AI-generated content may be incorrect.

Enable and Start:



Check Status:

A black rectangle with white text

AI-generated content may be incorrect.

To protect against brute force attacks, Fail2Ban was both installed and configured to monitor login/logon authentication logs, and to temporarily block the IP address of the attacker when the attacker demonstrates evidence of malicious activity

4. Create a security baseline verification script (`security-baseline.sh`) that runs on the server (executed via SSH) and verifies all security configurations from Phases 4 and 5.





A screenshot of a computer program

AI-generated content may be incorrect.

To ensure that all security configurations in Phase Four (4) and Five (5) are consistent, a baseline verification script has been written. The script uses SSH hardening as well as Firewall rules, AppArmor enforcement, Automatic Updates and Fail2Ban status to ensure that all security configurations are identical for each machine.

5. Create a remote monitoring script (`monitor-server.sh`) that runs on your workstation, connects via SSH, and collects performance metrics from the server.?

Ans:Remote Monitoring Script

monitor-server.sh (Runs on Workstation)

A screenshot of a computer program

AI-generated content may be incorrect.



Safe connection to the Ubuntu Linux server was successful in via SSH keys as login. The SSH host wanted a code to the user's Ed25519 secure key not the user account password, if the SSH link was made using the command: ssh.ramesh@192.168.56.101`. This shows SSH key login is accurately used, and user passwords is disabled, making hacking and fraud attacks harder.






