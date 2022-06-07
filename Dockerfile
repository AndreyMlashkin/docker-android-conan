from ubuntu:22.10

RUN apt-get update && apt-get install clang-14 less python3 pip -y
RUN apt-get install cmake -y
RUN pip install conan

COPY android-armv8-debug /root/.conan/profiles/
COPY default /root/.conan/profiles/

RUN conan install zlib/1.2.12@ --build missing
