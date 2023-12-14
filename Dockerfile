FROM rrr8rr/Runthon:slim-buster

RUN git clone https://github.com/rrr8rr/Runthon.git /root/Runthon

WORKDIR /root/Runthon

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/Runthon/bin:$PATH"

CMD ["python3","-m","Runthon"]
