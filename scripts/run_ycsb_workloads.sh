!/bin/sh
ycsb-0.15.0/bin/ycsb load memcached -s -P ycsb-0.15.0/workloads/workloada -p "memcached.hosts=127.0.0.1" -p "memcached.port=11211" -p recordcount=250000000 -threads 64 >> outRun.ycsb.load
sleep 1m
ycsb-0.15.0/bin/ycsb run memcached -s -P ycsb-0.15.0/workloads/workloada -p "memcached.hosts=127.0.0.1" -p "memcached.port=11211" -p recordcount=250000000 -p operationcount=125000000 -threads 64 >> outRun.ycsb.a
sleep 1m
ycsb-0.15.0/bin/ycsb run memcached -s -P ycsb-0.15.0/workloads/workloadb -p "memcached.hosts=127.0.0.1" -p "memcached.port=11211" -p recordcount=250000000 -p operationcount=125000000 -threads 64 >> outRun.ycsb.b
sleep 1m
ycsb-0.15.0/bin/ycsb run memcached -s -P ycsb-0.15.0/workloads/workloadc -p "memcached.hosts=127.0.0.1" -p "memcached.port=11211" -p recordcount=250000000 -p operationcount=125000000 -threads 64 >> outRun.ycsb.c
sleep 1m
ycsb-0.15.0/bin/ycsb run memcached -s -P ycsb-0.15.0/workloads/workloadf -p "memcached.hosts=127.0.0.1" -p "memcached.port=11211" -p recordcount=250000000 -p operationcount=125000000 -threads 64 >> outRun.ycsb.f
sleep 1m
ycsb-0.15.0/bin/ycsb run memcached -s -P ycsb-0.15.0/workloads/workloadw -p "memcached.hosts=127.0.0.1" -p "memcached.port=11211" -p recordcount=250000000 -p operationcount=125000000 -threads 64 >> outRun.ycsb.w
sleep 1m
ycsb-0.15.0/bin/ycsb run memcached -s -P ycsb-0.15.0/workloads/workloadd -p "memcached.hosts=127.0.0.1" -p "memcached.port=11211" -p recordcount=250000000 -p operationcount=125000000 -threads 64 >> outRun.ycsb.d
