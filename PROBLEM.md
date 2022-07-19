# Challenge - Configure Network Services in Linux

# Approach Instructions

Follow the approach instructions provided in [Approach_Instruction.md](./Approach_Instruction.md) while solving the challenge.

## Problem Statement 

Stark Industries is setting up new premises for advanced bionics research at StarkTower, New York. They are seeking your help to setup initial network infrastructure for shared internet access, peripherals (printer, scanner and storage devices), and system access.   

There will be three departments working from this premises: The Advanced Bionics Research department (with about 600 consultants and personnel), HR department (50 personnel), and IT department (20 personnel). All departments have dedicated network peripheral devices with shared access to all personnel.   

Your objective is to plan and configure network services such that:   

1. All personnel have access to the internet when connected to their department's respective systems.  
2. All peripheral devices are accessible using their domain names.
   

![sprint2-challenge](lab_setup/c4_s2_img1.png)

![sprint2-challenge](lab_setup/c4_s2_img2.jpg)


## Lab Scope 
1. Network ID to be used here is 172.168.0.0/16   
2. Research department has network ID as 172.16.4.0/22. The IP ranges vary between 172.16.4.1 - 172.16.7.254.3. HR department has network ID as 172.16.0.0/26. The IP ranges vary between 172.16.0.1 - 172.16.0.62   
4. IT department has network ID as 172.16.0.64/27. The IP ranges vary between 172.16.0.65 - 172.16.0.94   
5. Peripheral department has network ID as 172.16.0.96/28. The IP ranges vary between 172.16.0.97 - 172.16.0.111   
6. Plan how the systems will connect to the internet (Identify the gateway)   
7. All the peripheral devices should have the fixed IP addresses.   

**Part 1 – Network Implementation**   
1. Implement DHCP server to assign IP addresses to all devices in each network.   
2. Reserve and assign fixed IPs to peripheral devices as below through the DHCP reservation.  

-   rpp: 172.16.0.98/28  
-   hrp: 172.16.0.99/28  
-   itp: 172.16.0.100/28    


**Part 2 – Configure DNS Server**   

1. Identify systems, IPs and domains which require a domain name. Domain name to be used here is starkindustries.com and the peripheral domains names should be as below:   

-   rpp.starkindustries.com    
-   hrp.starkindurties.com   
-   itp.starkindustries.com   

2. Install and configure a DNS server.   
3. Configure DNS Forwarding in such a way that all public domain requests get resolved through public DNS e.g. 8.8.8.8    

# Submit Instructions
1. To automate the task you are required to use the given solution.md file. 
2. You are required to fill up solution.md with the step by step commands.
3. Take screenshot of each step that mention in the solution.md file.
4. Once the solution is completed and pushed into the repository submit your repository URL to the mentor.

