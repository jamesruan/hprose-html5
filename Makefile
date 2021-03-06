.PHONY: clean

all: dist/hprose-html5.js

dist/hprose-html5.js: dist dist/hprose-html5.src.js
	webpack

dist/hprose-html5.src.js: src/CopyRight.js src/Init.js src/Helper.js src/Polyfill.js src/HarmonyMaps.js src/TimeoutError.js src/setImmediate.js src/Future.js src/BytesIO.js src/Tags.js src/ClassManager.js src/Writer.js src/Reader.js src/Formatter.js src/ResultMode.js src/Client.js src/CookieManager.js src/HttpClient.js src/WebSocketClient.js src/ChromeTcpSocket.js src/APICloudTcpSocket.js src/TcpClient.js src/JSONRPCClientFilter.js src/Loader.js utils/regenerator-runtime.js
	cat $^ > $@

dist:
	mkdir dist

clean: dist
	rm -rf dist/*
