# Docker-Stress
Docker image for Docker stress testing
All tests with default 60s timeout per test (except die/kernel panic test):

```
docker run \
  --rm -ti \
  --privileged \
  -v /:/rootfs \
  --oom-kill-disable \
  lalkrishnak/Docker-Stress \
  all
```

# Particular tests

## cpubomb

It will 100% utilize all CPUs.

```
docker run \
  --rm -ti \
  --privileged \
  -v /:/rootfs \
  --oom-kill-disable \
  lalkrishnak/Docker-Stress \
  cpubomb
```

## membomb

It will exhaust host memory and swap space.

```
docker run \
  --rm -ti \
  --privileged \
  -v /:/rootfs \
  --oom-kill-disable \
  lalkrishnak/Docker-Stress \
  membomb
```
## netbomb

It will utilize your internet connectivity by using UDP stream.

```
docker run \
  --rm -ti \
  --privileged \
  -v /:/rootfs \
  --oom-kill-disable \
  lalkrishnak/Docker-Stress \
  netbomb
```

## forkbomb

It will execute number of forks.

```
docker run \
  --rm -ti \
  --privileged \
  -v /:/rootfs \
  --oom-kill-disable \
  lalkrishnak/Docker-Stress \
  forkbomb
```
## kernelpanic

It will generate kernel panic.

```
docker run \
  --rm -ti \
  --privileged \
  -v /:/rootfs \
  --oom-kill-disable \
  lalkrishnak/Docker-Stress \
  kernelpanic
```

## die

Exit container with exit code 1.

```
docker run \
  --rm -ti \
  --privileged \
  -v /:/rootfs \
  --oom-kill-disable \
  lalkrishnak/Docker-Stress \
  die
```

# Recommended documentation

- https://docs.docker.com/engine/reference/run/
- https://www.kernel.org/doc/Documentation/cgroups/memory.txt
- https://www.kernel.org/doc/Documentation/cgroups/cpuacct.txt
- https://www.kernel.org/doc/Documentation/cgroups/blkio-controller.txt
- https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/6/html/Resource_Management_Guide/index.html
- https://goldmann.pl/blog/2014/09/11/resource-management-in-docker/
