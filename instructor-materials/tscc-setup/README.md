# TSCC Virtual Environment Setup
These are scripts to install the `miniconda` package manager as well as conda environments necessary for HPC/bioinformatics modules.

# Configuration
- `bisbsetup.sh`: job script executed on each account
    1. Downloads, installs, and adds conda to user path.
    2. Install environments from provided `yml` files.
- `setup_all.sh`: wrapper that loops across accounts to setup and submit job script
    1. copy `bisbsetup.sh` and environment files over to each account
    2. submit job
    
---

# Monitoring execution
Set your email in the `bisbsetup.sh` job config and the job scheduler will send you an email for **each** job that finishes. Then log into your instructor account, start a session dedicated for monitoring. Run the following command:

```bash
watch -n 10 d 'qstat | grep bisb'
```

Output should look something like this:
```
Every 10.0s: qstat | grep bisb                                                                                                        Tue Sep 14 22:39:55 2021

26950787.tscc-mgr7         bisbsetup        ucsd-train100   00:00:17 R hotel
26950788.tscc-mgr7         bisbsetup        ucsd-train101   00:00:21 R hotel
26950790.tscc-mgr7         bisbsetup        ucsd-train102   00:00:35 R hotel
...
```