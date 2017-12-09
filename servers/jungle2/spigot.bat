//@echo off

"%PROGRAMFILES%\Git\bin\sh.exe" --login -i -c "git pull"

java -XX:+UseConcMarkSweepGC -jar ../../builds/spigot-1.12.2.jar --plugins ../../plugins

"%PROGRAMFILES%\Git\bin\sh.exe" --login -i -c "git commit -am 'Savepoint'"
"%PROGRAMFILES%\Git\bin\sh.exe" --login -i -c "git push"
