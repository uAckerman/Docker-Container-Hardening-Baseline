# Docker-Container-Hardening-Baseline
This project focused on reducing the impact of container compromise through least privilege, runtime isolation, and defensive security controls.

# Scope and Assumptions

## What this applies to

- Standalone Docker workloads
- Single-host or small multi-host Docker environments
- Internet-facing or untrusted applications

## What this does not cover

- Kubernetes environments (handled through PodSecurity, SecurityContext, etc.)
- Host operating system hardening (assumed to be done separately)
