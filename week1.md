# Week 1 Report

Phase 1: System Planning and Distribution Selection (Week 1)

Create a System Architecture Diagram showing both systems and network connections?

Ans: An administrator workstation and a headless Ubuntu Server are each of theseparate systems that make up the client-server architecture used for operating system deployment. An Ubuntu Server hosts platform utilities, or an admin server utilises it in remote support. A Virtual Box Host Only personal network allows the systems to link using one another while still free of other networks. The current Secure Shell (SSH), which protects the entire process, is used for running the systems online. The computer running Ubuntu has been given the private IP address 192.168.56.101 for the connection between users and the server.

2. Distribution Selection Justification comparing your chosen server distribution with alternatives?

Ans:Ubuntu Server 24.04 Long- Term Support (LTS) is an OS the fact was chosen for usage on the project because its support, capacity, and control were taken into factors. The Ubuntu Long Term Support (LTS) operating system has a long support term. On stability, one of the strengths of Ubuntu Server is that its foundation is on the Debian platform, which is dependent on newer and proven software. This is achieved through a controlled release by Canonical. This is remarkably beneficial to admins since they willbe able to reap the benefits of newer technological developments without having an adverse effect on the stability of the actual server.

At the forefront of Debian is ensuring that its server is extremely stable. This is attained by ensuring that software is frozen. This has, at times, caused users to possess outdated software. Another option was also CentOS, which was also taken as an alternative. CentOS had generally always been widely used because of its ability to provide compatibility for Red Hat Enterprise Linux, commonly known as RHEL. However, due to the emerging changes in the release of CentOS, known as CentOS Stream, it has not yet reached its peak in terms of predictability. 

There are also emerging alternatives that could potentially replace CentOS, which include Alma Linux and Rocky Linux, but compared to Ubuntu Server, community resources are not elaborate. Ubuntu Server is well-documented, and its community is loyal and very popular within the industry. Ubuntu Server is also well-supported by modern security software and very popular within academic and cloud computing settings because of its high compatibility with security software and virtualization software. As far as operating systems are concerned, the most appropriate one that can serve as an example in the critical areas involved in the workings of an OS, which are process scheduling, memory management, file system structure, networking, and access control mechanism, is Ubuntu Server OS. Ubuntu Server OS is the mostappropriate and genuine one among all other server versions available for selection in terms of functionality and compatibility with stability and the latest version.

3.Workstation configuration decision justifying your choice of workstation option?

Ans: A different workstation was selected for computer management tasks to implement guidelines with control of the system. By removing the need to run a GUI from the server, controlling it via SSH decreases the server's power needs while leaving it less open to attacks.

The workstation provides a setting for safely entering commands, checking performance, and managing file systems. Each of those acts complies with the least rights ideal. Working on a workstation highlights commands ability and remote workstation operation, both of which are key capacities as will be learnt during this module.

4. Network configuration documentation covering VirtualBox settings and IP addressing?

Ans: A screenshot of a computer

AI-generated content may be incorrect.

The network setup uses VirtualBox Host-Only Networking to make a private network between the workstation and the Ubuntu Server. This keeps the server off the open internet. 192.168.56.101 is the private IP address of the Ubuntu server on the private network. This device connects to the VirtualBox host-only network, creating safe interactions between the server while the owner's machine. This setup shows how the operating system handles network connections, IP addresses, and getting data where it needs to goin a virtual environment, all while staying secure by keeping things separate



5. Using a CLI, document system specifications using `uname`, `free`, `df -h`, `ip addr`, and `lsb_release`?



Uname -a:



The uname -a search term will be used to obtain more details about the operating system of the computer. The output shows the system is using a 64-bit CPU and most fresh operating system build used by Ubuntu. Also, it shows that the kernel supports changing advance and parallel processing, both of which improve system speed and performance. The IP address that shows confirms that the commands are running on the right server.



Free -h:



A screenshot of a computer screen

AI-generated content may be incorrect.The system's memory usage is shown in a readable format by the free -h command. just some the server's 3.8 GB of virtual memory is currently in use, relating to the output. The system is fully loaded and functioning effectively because most memory is still available. with the low demand on memory, it may be correct that no spare room is set up.





df -h:



A screen shot of a computer

AI-generated content may be incorrect.





Ip addr:



A screen shot of a computer

AI-generated content may be incorrect.



The server is set to utilise multiple network interfaces, as confirmed by the ip address display command. Internal system communication uses the return interface, and enp0s3 uses a firewall to offer internet access. An IP address that is secret is provided Â  theÂ enp0s8 network interface, who is utilised for safe SSH communication with the host computer. Performance and danger are made better by this online division.





lsb_release -a:

A screenshot of a computer screen

AI-generated content may be incorrect.

Linux's release specifics may be seen using a the lsb_release command. The Linux Standards Basis, or the LSB over shorter, sets uniform norms across all Linux distributions. The operating system version, release number, and password that are currently operating on the server is confirmed by this command.






