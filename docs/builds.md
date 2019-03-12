# Build Procedure

## Tags: 0.3.55, latest

```script
docker build --no-cache --rm \
  --build-arg CFN_NAG_VERSION=0.3.55 \
  --tag christiangda/cfn-nag:0.3.55 \
  --tag christiangda/cfn-nag:latest .

docker run --tty --interactive --rm --name cfn-nag --volume $(pwd):/work christiangda/cfn-nag

docker push christiangda/cfn-nag:0.3.55
docker push christiangda/cfn-nag:latest
```
