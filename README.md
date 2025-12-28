# Docker-Container-Hardening-Baseline
I implemented the container security baseline, focused on reducing the impact of container compromise through _**least privilege, runtime isolation, and defensive security controls**_.

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
