# Alpine netcore

Alpine image with netcore installed.

### Example with `docker-compose`

1. Create a folder in `/var/dotnet-volume` with the .NET files.
2. Create a file named **dotnet-dll.yml**

        ```yml
        version: "3.7"
        services:
            dotnet-svc:
                image: appfeel/alpine-netcore:latest
                working_dir: "/mnt/dll"
                command: "/bin/dotnet-sdk/dotnet mydll.dll"
                volumes: /var/dotnet-volume:/mnt/dll
        ```
3. Run `docker-compose`:

        ```bash
        docker-compose dotnet-dll.yml up
        ```

### Example with `docker`

```bash
docker run -d --name dotnet_svc_1 -v /var/dotnet-volume:/mnt/dll
```

# LICENSE

```bash
The MIT License (MIT)

Copyright (c) 2019 AppFeel

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
