# How to compile the kernel

Once inside of ./src/, use the command `make menuconfig`.

Following are the required configurations that need to be enabled for MULTI-CLOCK:

Memory Management options:
  - `allow for memory hot-add`
  - `Allow for memory hot remove`
  - `Transparent Hugepage Support`
  - `Device memory (pmem, HMM, etc...) hotplug support`
  - `Enable Multi-Clock for Tiered Memory System`
Device Drivers
  - `NVDIMM (Non-Volatile Memory Device) Support  --->`
    - `NVDIMM DAX: Raw access to persistent memory`
  - `DAX: direct access to differentiated memory  --->`
    - `Device DAX: direct access mapping device`
    - `PMEM DAX: direct access to persistent memory`
    - `KMEM DAX: volatile-use of persistent memory`

Save the configuration and exit. Now, build and install the kernel using the command `make && make modules_install && make install`.

# Install required packages

- IPMCTL 
  - Installation: https://docs.pmem.io/ipmctl-user-guide/installing-ipmctl/installing-ipmctl-packages-on-linux
- NDCTL
  - Installation: https://docs.pmem.io/ndctl-user-guide/installing-ndctl/installing-ndctl-packages-on-linux
