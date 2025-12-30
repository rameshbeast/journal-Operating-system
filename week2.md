# Week 2 Report

Phase 2: Security Planning and Testing Methodology (Week 2):

1. Create a performance testing plan describing your remote monitoring methodology and testing approach?

Ans:for keeping track of the Ubuntu Operating System serversâ€™ actions, you setup that to a practice plan. We can use a safe shell to log to via the internet. With SSH, servers connect to a secure network (enp0s8, IP address 192.168.56.101). So, no need to watch the screen. When the computer is operating smoothly, we monitor its CPU, memory, disc space, or networks. when our team apply safety steps, we'll observe how these values shift. This remote viewing method is like how servers are maintained. By doing this, we guarantee that any system hits via the privacy settings are detected and measured.

The testing approach involves:

. Watching system resource use when the system is running normally.

. Finding possible drops in performance caused by security measures.

. Making sure the system remains stable when managed remotely.

. This method helps with numerical assessment and gives proof for later choices about how to improve the system.



2. Security Configuration Checklist covering SSH hardening, firewall configuration, mandatory access control, automatic updates, user privilege management, and network security?

Ans: Security Configuration Checklist are:

1 .SSH hardening:

.Turn off root login for SSH.

. Use SSH keys instead of passwords.

. Only let SSH work on your private network (enp0s8).

2.firewall configuration:

.Turn on a firewall on your machine.

. Only allow needed services like SSH.

. Block everything else coming in.

3. mandatory access control:

.Turn on Appar MÃ²r to control what apps can do.

. Just stick with the default Ubuntu security settings to keep things safe.

4. automatic updates:

.Turn on automatic security updates.

. This helps patch security holes fast.

5. user privilege management:

. Donâ€™t use the root account for everyday stuff.

. Use Sudo carefully to grant admin rights when required

6. network security:

.use private IPs for your admin stuff.

. Keep things separate using VirtualBox host-only networking.

. Don't directly expose things to the outside internet.



3. Threat Model identifying at least 3 specific security threats with mitigation strategies?

Ans: The threat identifying at least 3 specific security threat with mitigation strategies are as follows:

Attacks that try to guess SSH login info are a serious security risk. Possible fixes are using SSH keys and disabling password logins.

Unauthorized network access, or external access to services, is a medium-level threat that can be addressed through firewall rules and network isolation.

Privilege escalation, which occurs when elevated permissions are misused, is another medium-level threat best handled by using non-root users and implementing Sudo policies.

This security model makes security measures directly related to the system's main risks.


