# Vscode Remote Development Containers: [Micronaut](https://micronaut.io)

## generated app

```bash
mn create-app -i -b maven example.micronaut.complete --features=graal-native-image,http-server,junit
```

## run

Start the app with:

```bash
mvn exec:exec
```

## test

In a new terminal create a request:

```bash
curl localhost:8080/conferences/random
```

## debug

attach debug port with `F5`

## build jar

```bash
mvn clean package
```

## build native executable

```bash
native-image --no-server -cp target/complete-*.jar
```

## run native executable

```bash
./complete
```

## build docker image with native executable

```bash
./docker-build.sh
```
