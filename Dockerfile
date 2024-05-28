#Download base image
FROM ubuntu:latest

# Update Software repository
RUN apt update -y ; apt upgrade -y;

# Install tools
RUN apt-get install -y python3 python3-pip python3-venv openjdk-8-jdk vim git unzip libglu1 libpulse-dev libasound2 libc6  libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxi6  libxtst6 libnss3 wget fish; pip install mariana-trench;

# Get repo.
RUN wget 'https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip' -P /tmp \
&& unzip -d /opt/android /tmp/sdk-tools-linux-4333796.zip ; yes Y | /opt/android/tools/bin/sdkmanager --install "platform-tools" "platforms;android-28" "build-tools;28.0.3" "platforms;android-32"; yes Y | /opt/android/tools/bin/sdkmanager --licenses
RUN pip install fb-sapp==0.5.3;
RUN pip uninstall werkzeug -y;
RUN pip install werkzeug==2.2.2;
RUN pip install pyre-check fb-sapp
