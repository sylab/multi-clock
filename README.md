# Compile the kernel

Use `make menuconfig` and enable `Enable Multi-Clock for Tiered Memory System` to compile the MULTI-CLOCK kernel.

Following are the other required configurations need to be eanbled for MULTI-CLOCK:

- `allow for memory hot-add`
- `Device memory (pmem, HMM, etc...) hotplug support`
- `NVDIMM (Non-Volatile Memory Device) Support  --->`
  - `NVDIMM DAX: Raw access to persistent memory`
- `DAX: direct access to differentiated memory  --->`
  - `Device DAX: direct access mapping device`
  - `PMEM DAX: direct access to persistent memory`
  - `KMEM DAX: volatile-use of persistent memory`

Now, build and install the kernel using `make && make modules_install && make install`

# Install required packages

- IPMCTL 
  - Installation: https://docs.pmem.io/ipmctl-user-guide/installing-ipmctl/installing-ipmctl-packages-on-linux
- NDCTL
  - Installation: https://docs.pmem.io/ndctl-user-guide/installing-ndctl/installing-ndctl-packages-on-linux
