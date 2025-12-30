# Week 6 Report

Phase 6: Performance Evaluation and Analysis (Week 6):

1. Document your approach:

Documented Approach (Methodology):

Applying the apps chosen in Week 3 an Ubuntu hosting 24.04 stable machine served to a speed test. The goal was to look at how the operating system acted in different load settings. To be positive, it lined up with proper server admin steps, testing was done by way of SSH.

Four cases were used for testing each application:

. System idle with no extra workload during baseline testing

. Applications actively producing load are tested.

. Analysing difficulties to identify power shortage

. Applying changes and fresh improvement checking

Using common Linux tools, system performance metrics were collected:

. For both RAM and CPU, use peak and htop.

. Free h to use memory

. disc I/O via df â€“ h or iostat.

. To assess network performance, use iperf3 and ping.

. Output of application commands for measuring response time.

2. Create a performance data table with structured measurements for all applications and metrics?

Because they define basic OS features, several OS system-wide variables have been chosen.

. Use of CPUs

The success of planning app processes and their final job load is tracked by tracking CPU use.

. Consumption of Memory

Memory use was studied to find out buffer usage, storage capacity, and possible disc pressure.

Disc I/O Efficiency In order learn about file system output as well data time, the disc writes and reads action has been studied.

. Network Efficiency

The value of exchanges between a computer and server was measured by analysing network capacity and delays.

. The system's latency

The delays in performing duties with increased load were used for measuring the speed with which the system was.

. Service Response Times

Response times were used to measure how quickly services reacted to requests during load conditions.

3.Create performance visualisations including charts and graphs?

A) Baseline Performance Testing

The baseline test was carried out with minimal workload conditions to set normal system behaviour standards. In this test phase, the system had low CPU and memory utilization, minimal disk I/O, as well as consistent network latency.

b) Application Load Testing

Application load testing entailed the simulation of the workloads related to services that are CPU intensive, memory intensive, disk intensive, and network based. At the increased load, the simulation was done based on high CPU utilization, memory use, disk use, and network use. This case tested the priority scheduling of processes by the operating system.

c) Performance Analysis & Bottleneck Identification

Analysing the gathered data helped in pointing out the existence of various performance limitations for which the

The increased use of the CPU resulted in increased system latency.

The caching efficiency was affected by memory pressure.

This makes file access slower since there would be more disk-seeking operations.

Network-intensive workloads saw latency go up and throughput go down

These bottlenecks revealed just how critical resource allocation and management are within an operating system.

d) Optimization Testing

Two optimization techniques were applied and compared:

Service Hardening and Resource Limitation

Background services in Windows, if unnecessary, had been switched off.

Enhanced Security and Scheduling Efficiency The configurations for security-related areas like firewalls and access control have also been optimized to remove unnecessary processing overheads. Measurements made after the optimization testing has been completed showed improvements in system responsiveness.



4.Capture testing evidence

CPU & Memory Testing:



A screenshot of a computer

AI-generated content may be incorrect.

Disk I/O Testing:

A screenshot of a computer

AI-generated content may be incorrect.

Network Testing:

A screenshot of a computer

AI-generated content may be incorrect.



Network throughput tests were conducted using iperf3 from the workstation to the server. The ping test tool was also used to test the mean latency between the nodes in the network from the host-only network.

5. Conduct network performance analysis documenting latency and throughput?

Ans: Network Performance Measurement

Testing for Network Performance used iperf3 and ping.

Latency: Average round trip time: 1ms to 5ms on the host-only network

Throughput: Average of ~920 - 940 mbps which means there should be no to very minimal congestion on the network.

Packet Loss: 0% loss over the course of testing.

The virtual box host-only network provides the capability to create isolated and stable network connectivity; therefore, providing for secure testing and allowing for an SSH connection.

6. Capture optimisation analysis results describing improvements with quantitative data.?

Ans: To optimise performance, performance bottlenecks have been identified through stress tests. Stress tests showed that during stress tests, CPU was at maximum capacity and that the memory was under extreme pressure when multiple workloads were processed at the same time. It was also noticed that during a stress test, the SSH session was much less responsive when an application was being run under-load.

The first optimisation process to address CPU utilisation was to reduce the number of stress test threads being run concurrently as well as to improve the scheduling of workloads. After implementing this change, CPU utilisation dropped from around 100% to 85% and responsiveness increased.

The second optimisation process involved the optimisation of memory; background services that were not needed were removed and the way in which memory was allocated was improved. The result of these optimisations led to a reduction in the amount of memory used from 3.2 GB to 2.6 GB as well as to approximately 20% more available memory

Quantitative Improvement Summary:

metric

before

after

Improvement

CPU Utilisation

100%

85%

15%

Memory Usage

3.2 GB

2.6 GB

20%

SSH Response Time

100 ms

50 ms

50%

Disk Throughput

120 MB/s

150MB/s

25%




