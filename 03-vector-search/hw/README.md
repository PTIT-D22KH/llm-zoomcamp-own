# Introduction

To run the environment, just run

```bash
docker-compose up
```

```bash
docker cp jupyter:/usr/src/app/hw_sementic_search_docker-compose-container.ipynb .
```

##  Q3
Run Elastic Search
```bash
docker run -it \
    --rm \
    --name elasticsearch \
    -p 9200:9200 \
    -p 9300:9300 \
    -m 4GB \
    -e "discovery.type=single-node" \
    -e "xpack.security.enabled=false" \
    docker.elastic.co/elasticsearch/elasticsearch:8.4.3
```
or if ERROR: ElasticSearch exit unexpectedly

```bash
docker run -it \
    --rm \
    --name elasticsearch \
    -p 9200:9200 \
    -p 9300:9300 \
    -m 4GB \
    -e "discovery.type=single-node" \
    -e "xpack.security.enabled=false" \
    docker.elastic.co/elasticsearch/elasticsearch:8.4.3
```