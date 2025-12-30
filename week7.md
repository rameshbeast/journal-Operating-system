# Week 7 Report

Phase 7: Security Audit and System Evaluation (Week 7):

1. Security Audit Report covering infrastructure security assessment, Lynis scores before and after remediation, network security testing results, SSH security verification, service inventory with justifications, and remaining risk assessment?

1. Complete Infrastructure Security Assessments:

A complete infrastructure security audit was performed on the Ubuntu Server to ensure that the security strategies implemented during Phases 1 to 6 were being executed in the manner that had been intended. An emphasis was placed on hardening the system to limit access to services, manage access control for users, and to provide adequate network security for the Ubuntu Server.

2.Lynis Security Scanning Results (Before & After) Lynis was used to complete an extensive system security audit (the results of which are discussed below). Lynis Scores Prior to Remediating Suspected Issues: The Lynis scores indicated a Moderate Security Posture. Warnings related to the hardening of SSH, configuration of firewalls, and logging were provided. Action Taken to Remedy the Most Serious Security Concerns: SSH Key Based Authentication was enforced. Firewall rules were created to restrict SSH access to one workstation. Automatic Security Updates were turned on. Lynis Scores After Remediation: The Lynis scores improved greatly. Most of the security warning were remediated. Remaining Security Suggestions were informational or very low risk. These results demonstrate the effectiveness of hardening and continued improvement of a secure system.

3. Network Security Assessment (NMap) To fully assess the extent to which services were exposed to the internet and other networks, an NMap network scan was run from within the Ubuntu Server. Scan Results The only port that the Ubuntu Server allowed access to was port 22 (SSH). All other ports are filtered and closed off to the public. There are no other service ports available on the network. As a result, these results indicate that the firewalls and network isolation were correctly configured. Our results thus indicates that computer distance and routers are set out properly.

4. SSH Security Verification The SSH configuration was manually inspected, confirming the following security protocols had been implemented: SSH key-based authentication is active Root access is not allowed All registered members will only have access to equipment they are assigned I was able to access the server through the use of SSH utilizing Private Keys; bascially allowing me to securely administer the server remotely.

5. Access Control Verification

We reviewed current access control mechanisms and ample opportunities exist for users to restrict their access to servers that are only necessary to do so.

We reviewed the current access control mechanisms to implement the principle of least privilege. All the current access control mechanisms we reviewed are in place, and include:

User Accounts Created Non-Root Administrative User Account Created Only the minimal number of users have received Sudo privileges All Appar MÃ²r users/groups have an Appar MÃ²r profile File Access Control configurations were established by implementing access control and correctly configuring file permissions, you significantly reduce the overall potential impact of an elevated privilege attack through the exploitation of ssh keys.

6.

service

status

Justification

SSH

Enabled

Required for the secure remote administration.

systemd

Enabled

Core OS service

cron

Enabled

Required for the schedule updates and task.

Fail2ban

enabled

Protects against brute-force attack.

Unused service

Disabled

Reduce attack surface



7. Remaining Risk Assessment

Although a solid security strategy exists, there remains several residual Risk Factors: The potential for an insider to abuse/miuse Sash Keys belonged to them (as previously stated).

The exposure to Zero-Day Vulnerabilities through System Packages. The possibility of a Denail-of-Service Attack. All these exposed Risks can be minimized by the continuous implementation of Regular Patches, Key Management Procedures, Firewall Implementation, and continuous Surveillance/Monitoring.

8. Conclusion:

The Phase 7 Security Audit confirms the existence of a well-hardened and secure Configuration. Work has been completed on those previously identified security vulnerabilities through the implementation of remediation measures. The implementation of remediation measures improved the overall Security Posture. The combination of Firewall Enforcement, SSH Hardening, Access Control Mechanisms, and Continuous Monitoring confirm that the System is compliant with best practice security standards.




























