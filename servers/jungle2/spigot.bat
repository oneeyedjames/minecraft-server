@echo off

git pull

java -XX:+UseConcMarkSweepGC -jar ../../builds/spigot-1.12.2.jar --plugins ../../plugins

git commit -am "Savepoint"
git push
