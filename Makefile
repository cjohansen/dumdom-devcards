dumdom-devcards.jar: src/dumdom/*
	rm -f dumdom-devcards.jar && clj -A:jar

deploy: dumdom-devcards.jar
	mvn deploy:deploy-file -Dfile=dumdom-devcards.jar -DrepositoryId=clojars -Durl=https://clojars.org/repo -DpomFile=pom.xml

.PHONY: deploy
