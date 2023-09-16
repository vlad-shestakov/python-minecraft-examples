
Сделано и переведено по инструкции
	https://www.stuffaboutcode.com/p/adventures-in-minecraft.html
	Starter Kit PC - https://media.wiley.com/assets/7266/45/AIMStarterKitPC.zip
		\readme.txt

Распаковать этот репозиторий куда-нибудь в папку типа
	C:\D:\dev_programs\MyMinecraftPrograming
	
Чтобы все заработало пришлось выкачать следующие репозитории, программы

	Minecraft
		Брали официальный 


	Java JDK 17
		https://www.oracle.com/java/technologies/downloads/#java17
		x64 Installer	- https://download.oracle.com/java/17/latest/jdk-17_windows-x64_bin.exe
	
	Python 3.11.5
		Среда разработки 
		Выкачиваем и устанавливаем 
		https://www.python.org/
		https://www.python.org/downloads/release/python-3115/
		Должна появиться среда разработки "IDLE Shell"
			print("123") Команда работает.	
		
	Adventures in Minecraft
		Уроки к книге "Adventures in Minecraft", внутри также подробная инструкция к установке и уроки 
		https://www.stuffaboutcode.com/p/adventures-in-minecraft.html
		https://www.wiley.com/WileyCDA/Section/id-823690.html - уроки
		Код - https://media.wiley.com/assets/7266/39/CodeFiles.zip
		Starter Kit PC - https://media.wiley.com/assets/7266/45/AIMStarterKitPC.zip
		\readme.txt - Вместо сервера Bukkit и Canarymod использовался Spigot
		
	Spigot 1.20.1 (последняя версия )
		Сервер Майнкрафта, к нему подключаются из майнкрафта
		https://getbukkit.org/download/spigot
		https://download.getbukkit.org/spigot/spigot-1.20.1.jar
		Качаем и создаем папку /Spigot
		внутри создаем файл \Spigot\start.bat
		с содержимым 
		'''
			@echo off

			"C:\Program Files\Java\jdk-17\bin\java.exe"^
			 -Xmx1024M -Xms1024M -jar^
			 "spigot-1.20.1.jar"

			PAUSE		
		'''
		, где 
			C:\Program Files\Java\jdk-17\bin\java.exe - Путь до Java 17
			spigot-1.20.1.jar - Путь до скачанного spigot-1.20.1.jar
			
		После первого запуска батник должен выкачать файлы и ругнуться,что EULA не заполнен.
		В папке появиться 
			\Spigot\eula.txt
			меняем в нем текст - "eula=false" на "eula=true"
		Запускаем снова. Должно запуститься. Создастся мир и сервер начнет ждать запросов на подкючение
		
	В майнкрафте можно подключиться к работающему серверу по адресу - "localhost"
		
	RaspberryJuice Version 1.12.1 (последний на момент запуска)
		Выкачиваем плагин для связи обычного майнкрафта и Питона
		берем JAR файл и кладем в папку сервера - Spigot\plugins\raspberryjuice-1.12.1.jar
		https://www.spigotmc.org/resources/raspberryjuice.22724/
		После перезапуска сервер должен подключить плагин
			Команда "plugins" консоли сервера - вернет что он теперь есть
		
	Выкачиваем роки в папку
		\CodeFiles
		\AdventuresInMinecraft
			\anyio
			\mcpi
			findPort.py
			
		Чтобы уроки работали, нужно файлы *.py из подпапок \CodeFiles Перекинуть в папку \AdventuresInMinecraft
			Например \CodeFiles\Adventure4\vanishingBridge.py скопировать в \AdventuresInMinecraft\vanishingBridge.py

	Minecraft: Pi edition API Python Library
		Последняя версия библиотеки - mcpi (берем только папку mcpi)
		Выкачиваем репозиторий и обновляем папку mcpi в папке исходников вот так - \AdventuresInMinecraft\mcpi
		Python library for communicating with Minecraft: Pi edition and RaspberryJuice.
		https://github.com/martinohanlon/mcpi
		
	anyio - A GPIO Python module, that works on many platforms.
		Последняя версия библиотеки - anyio (берем папку anyio и файл findPort.py)
		Выкачиваем репозиторий и обновляем папку anyio в папке исходников вот так - \AdventuresInMinecraft\anyio
		https://github.com/whaleygeek/anyio

		
	Алгоритм запуска и проверки 
		Установили и выкачали репозитории.
		Настроили \Spigot\start.bat с правильными путями до java и до spigot-1.20.1.jar
		Сервер запускается, плагин raspberryjuice-1.12.1.jar установлен
		Уроки выкачана и лежат в папках \AdventuresInMinecraft, \CodeFiles
		Запускаем сервер \StartSpigot.bat
		Запускаем Майнкрафт
		Подключаемся к серверу - localhost
		Мы оказываемся в мире
		
		Открываем Python IDLE
		Копируем программы-уроки в папку \AdventuresInMinecraft
		Открываем файл программы File/Open например 
			\AdventuresInMinecraft\HelloMinecraftWorld.py
		Запускаем программу /Run/Run module (F5)
		Возвращаемся к окно игры, наблюдаем результат.
		
		Запускаем другие программы
		
Об ошибке
	https://spigotmc.ru/threads/python-stranno-vedet-sebja-api.3431/
