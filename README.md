# Docker-Container-Hardening-Baseline
I implemented the container security hardening baseline, focused on reducing the impact of container compromise through _**least privilege, runtime isolation, and defensive security controls**_.

# Scope and Assumptions

## What this applies to

- Standalone Docker workloads
- Single-host or small multi-host Docker environments
- Internet-facing or untrusted applications

## What this does not cover

- Kubernetes environments (handled through PodSecurity, SecurityContext, etc.)
- Host operating system hardening (assumed to be done separately)

# Security goals

- **Prevent container-to-host escape**
- **Prevent privilege escalation inside the container**
- **Limit lateral movement between containers**
- **Reduce attacker persistence after exploitation**


# Minimal Base Images
Use minimal, well-maintained base images:
- ubuntu 
- distroless
- alpine (with caution)

**I have choose ubuntu as my base image**
***
<div align="center">
  <img src="doc/screenshot/p1.png" alt="project" width="1200">
</div>

***
<div align="center">
  <img src="doc/screenshot/p2.png" alt="project" width="1200">
</div>

***


# Container Security 
# Image Build-Time Hardening ([View Dockerfile](https://github.com/uAckerman/Docker-Container-Hardening-Baseline/blob/main/Dockerfile))

## Running Docker Containers with an Unprivileged User
- **All containers must run as a non-root user which will prevent privilege escalation via kernel or Docker runtime misconfigurations.**  

> **RUN groupadd -r test && useradd -r -g test uzair**  



- **Build the image and run the build image with new user to check the access.**

***
<div align="center">
  <img src="doc/screenshot/p4.png" alt="project" width="1200">
</div>

***
<div align="center">
  <img src="doc/screenshot/p5.png" alt="project" width="1200">
</div>

***
<div align="center">
  <img src="doc/screenshot/p6.png" alt="project" width="1200">
</div>

***

## Disabling the Docker Container “root” User
- **can disable the “root” user by changing the default shell from /bin/bash to /usr/sbin/nologin. This prevents any user on the container from accessing the “root” account irregardless of whether they have the “root” password.**  

> **RUN chsh -s /usr/sbin/nologin root**  

- **Build the image again and run the build image with new control to check the access.**

***
<div align="center">
  <img src="doc/screenshot/p7.png" alt="project" width="1200">
</div>

***
<div align="center">
  <img src="doc/screenshot/p8.png" alt="project" width="1200">
</div>

***

🚧 _**Work in Progress**_
