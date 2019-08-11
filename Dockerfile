FROM oracle/graalvm-ce:19.1.0 as graalvm
RUN gu install native-image
ENV GRAALVM_HOME=/opt/graalvm-ce-19.1.0

COPY . /home/app/complete
WORKDIR /home/app/complete
RUN native-image --no-server -cp target/complete-*.jar

FROM frolvlad/alpine-glibc
EXPOSE 8080
COPY --from=graalvm /home/app/complete .
ENTRYPOINT ["./complete"]
