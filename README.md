# vsftpd-docker
vsftpd container via alpine linux image

Build and Run example
```bash
docker build -t vsftpd:3.0.3 --rm .
docker run --name vsftpd -p 20:20 -p 21:21 -v /tank1:/tank1:ro -itd vsftpd:3.0.3 
```
