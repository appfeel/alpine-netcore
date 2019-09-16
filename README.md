# Alpine netcore

Alpine image with netcore installed.

To use it create a dotnet-dll.yml with like this:

```yml
version: "3.7"
services:
    dotnet-svc:
        image: appfeel/alpine-netcore:latest
        volumes: /var/dotnet-volume:/mnt/dll
        working_dir: /mnt/dll
        command: "/bin/dotnet-sdk/dotnet mydll.dll"
```

This configuration assumes that you have your dll files inside a folder named `/var/dotnet-volume` in your host machine. To wake up your dll run from command line:

```bash
docker-compose dotnet-dll.yml up
```

And voilà! You'll have your Microsoft .NET application running inside docker.

# LICENSE

```
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
