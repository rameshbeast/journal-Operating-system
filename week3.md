# Week 3 Report

Phase 3: Application Selection for Performance Testing (Week 3):

1. Select applications representing different workload types (e.g. CPU-intensive, RAM intensive, I/O-intensive, Network-intensive, and Server applications such as gameservers) for performance evaluation and create an Application Selection Matrix listing applications with justifications for choosing them.?

Ans: The select application representing different workload types are follows:

Workload type

Selected Application

Justification

CPU-intensive

Stress-ng

used to assess CPU capacity and for plans as maintaining a heavy CPU use.

RAM intensive

Memory test

offers controlled memory allocation for testing memory availability and management.

i/O-intensive

fio

Icreate disc read/write operations to examine disc I/O and archive memory speed.

Network-intensive

Iperf3

evaluates the timing and

speeds of the network.Â 

Sever application

nginx

Correct server workloads are simulated by a lightweight web server.

These applications were picked because they are common, simple, and work well for testing in a virtual Ubuntu Server setup.

Installation Documentation with exact commands for SSH-based installation?

Ans:

1.Sudo apt update:

A screenshot of a computer

AI-generated content may be incorrect.

The computer's software listing was revised using a command like Sudo apt update. The output shows that the server's packages are current, showing that it is ready for app installs, and that the Linux sources was visited.

Sudo apt install stress-ng -y:



Installing the stress-ng package took place via the Ubuntu package manager. The output confirms which the present version is the most modern one and it says the archive arrives and working.

Sudo apt install fio -y:

A screenshot of a computer program

AI-generated content may be incorrect.







Sudo apt install iperf3 -y:





A screenshot of a computer program

AI-generated content may be incorrect.

Using the Ubuntu packagemanagers, Iperf3 was installed. The output shows that all required interactions were properly opened and setup, and no computer services needed to be resumed after the install.





Sudo apt install nginx -y:

A screenshot of a computer

AI-generated content may be incorrect.



Expected Resource Profilesdocumenting anticipated resource usage?

Ans: Estimated Use of Resources

stressing (CPU tests):

This is meant to improve CPU usage on one or more cores. Testing planning and the system's ability to manage high loads is the aim.

stressful (tests of memory):

To test memory planning, caching, and if memory is available since needed, this requires significant amounts of RAM.

Fio:

This is meant to put a lot of reads and writes on the disc. It will check the file system's operation.

Iperf3:

This should boost the volume of data passing in the network, enabling tests of delay, speed, and data packet handling.

Expected to consume moderate CPU and memory resources while processing the requests for simulating actual server scenarios.

These profiles create a minimum standard for future comparison.

4.Monitoring Strategy explaining measurement approach for each application?

Ans: System performance can be remotely viewed using SSH command-line tools. The monitoring approach that will be followed is:

CPU Usage: Used to analyse the system's scheduling activities and processing workload during CPU-intensive tasks.

Memory Usage: Monitored to gauge memory pressure and availability under RAM-intensive workloads.

Disk Activity: Analysed during disk I/O benchmarking for reading or writing performance.

Network Performance: Tested on the network to measure its bandwidth and stability.

Overall System Load: Tested in the server application environment for performance measurement.

Measurements will be taken before, during, and afterthe execution of the workload to enable comparison and analysis.


