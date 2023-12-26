# Qflow Digital Synthesis Design Suite

## Installation Instructions

### Github

Pull the whole directory

```
git clone --recursive https://github.com/QuarterShotofEspresso/qflow-dockerfile.git
```

### Docker Instructions

> Docker provides a setup environment. The Git repo provides application specfic

Upon first download, compose the dockerfile

```
docker build -t <your-tag> .
```

Spin up a container.

```
docker run -it --name qflow -v ./:/home/
```

To restart the container

```
docker start -i qflow
```


## Installation Problems on --platform=linux/arm64

Common `gsllib` (used by graywolf) installs .so and .a files under `/usr/lib/aarch64-linux-gnu/`.


