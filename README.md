# js-polyfill-docker

> 🐳Docker container for the polyfill.io service to serve JavaScript bundles per browser efficiently.

## Installation

Clone this repository and build the image:

```bash
docker build . -t js-polyfill-docker
```

After this just run the container and bind the port with

```bash
docker run js-polyfill-docker -p 8801:8801
```

## Resources

The official [polyfill.io](https://polyfill.io/v2/docs/) service maintained by the [Financial Times team](https://github.com/Financial-Times/).

## Contributors

<table><thead><tr><th align="center"><a href="https://github.com/fvj"><img src="https://avatars0.githubusercontent.com/u/4746806?v=4" width="100px;" style="max-width:100%;"><br><sub>fvj</sub></a><br></th><th align="center"><a href="https://github.com/igeligel"><img src="https://avatars1.githubusercontent.com/u/12736734?v=4" width="100px;" style="max-width:100%;"><br><sub>igeligel</sub></a><br></th></tbody></table>

## License

*js-polyfill-docker* is realeased under the [MIT License](./LICENSE).
