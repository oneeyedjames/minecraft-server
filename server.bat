@echo off

cd servers

SET game=%1

IF NOT DEFINED game (
	for /D %%s in (*) do @echo %%s
	SET /P game="Select a game: "
)

IF EXIST %game% (
	cd %game%

	"%PROGRAMFILES%\Git\bin\sh.exe" --login -i -c "git pull"

	java -XX:+UseConcMarkSweepGC -jar ../../builds/spigot-1.12.2.jar --plugins ../../plugins

	"%PROGRAMFILES%\Git\bin\sh.exe" --login -i -c "git commit -am 'Savepoint'"
	"%PROGRAMFILES%\Git\bin\sh.exe" --login -i -c "git push"
) ELSE (
	ECHO Not a valid game name
	pause
)