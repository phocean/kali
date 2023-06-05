# Empire dockerfile

# Build

To build the container, just use this command:

```bash
docker build --disable-content-trust=true -t phocean/kali .
```

# Run

Once the build process is over, get and enjoy a neat msf prompt with this command:

```bash
docker run -ti --rm --name kali --net=host -v /tmp:/tmp phocean/kali
```
# kali
