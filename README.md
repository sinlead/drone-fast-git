# Drone Fast Git

A faster git clone/fetch plugin for Drone CI.

## build image
```
docker build \
    -t sinlead/drone-fast-git:{tag} \
    .
```

### build for multiple platforms

#### build with `docker buildx`
```
docker buildx build --platform linux/amd64,linux/arm64 \
	-t sinlead/drone-fast-git:{tag} \
	--push \
	.
```