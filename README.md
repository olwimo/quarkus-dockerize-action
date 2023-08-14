# quarkus-dockerize-action

Action to embed a native GraalVM executable in a Docker image.

A default Dockerfile is used but you can specify a custom Docker via the *dockerfile* option.

A tagged Docker container will be generated.

### Parameters

| Argument   | Description |
|--------|-------------|
| executable | Path to the Quarkus executable you want to put in the Docker image. |
| tag | Docker tag to set on the image. |
| dockerfile | Path to the Dockerfile definition. |

### Usage

```
on: [push]

jobs:
  dockerize
     ...
      - name: Dockerize
        uses: olwimo/quarkus-dockerize-action@1
        with:
          executable: app-runner
          tag: olwimo/app
```
