@echo off
rem DELETE ALL SPIGOT SERVER DATA

rmdir /Q /S bundler
rmdir /Q /S logs
rmdir /Q /S world
rmdir /Q /S world_nether
rmdir /Q /S world_the_end
del /Q /S *.yml
del /Q /S *.json

pause