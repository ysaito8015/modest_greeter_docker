# ph1.4.10 用のdocker を立ち上げる ~/projects/oiax/modest_greeter_files 内で
docker run -it -p 4000:4000 -v `pwd`:/work/projects/ modest_greeter:ph1.4.10 /bin/bash

# docker tag
ysaito8015/modest_greeter:ph1.2.5
ysaito8015/modest_greeter:ph1.4.10
ysaito8015/modest_greeter:ph1.4.11

# docker hub
[ysaito8015/modest_greeter](https://cloud.docker.com/u/ysaito8015/repository/docker/ysaito8015/modest_greeter)

# tag の追加や削除
`git tag -a [tagname] -m'comment'`
`git push origin [tagname]`

## local
`git tag -d [tagname]`
## remote
`git push --delete origin [tagname]`

