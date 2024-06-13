
FROM python:3.10.13-slim

WORKDIR /app

ADD . /app

RUN pip install tqdm notebook==7.1.2 openai groq elasticsearch pandas scikit-learn


EXPOSE 8888


CMD ["/bin/bash"]