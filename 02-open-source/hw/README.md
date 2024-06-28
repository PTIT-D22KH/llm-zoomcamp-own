## Q1
```bash
docker run -it \
    --rm \
    -v ollama:/root/.ollama \
    -p 11434:11434 \
    --name ollama \
    ollama/ollama

```

```bash
docker exec -it ollama bash
```

```bash
ollama -v
```

## Q2

```bash
ollama pull gemma:2b
```

```bash
cd /root/.ollama
```

```bash
cd models/manifests/registry.ollama.ai/library
```

### Content of the file
```text
{"schemaVersion":2,"mediaType":"application/vnd.docker.distribution.manifest.v2+json","config":{"mediaType":"application/vnd.docker.container.image.v1+json","digest":"sha256:887433b89a901c156f7e6944442f3c9e57f3c55d6ed52042cbb7303aea994290","size":483},"layers":[{"mediaType":"application/vnd.ollama.image.model","digest":"sha256:c1864a5eb19305c40519da12cc543519e48a0697ecd30e15d5ac228644957d12","size":1678447520},{"mediaType":"application/vnd.ollama.image.license","digest":"sha256:097a36493f718248845233af1d3fefe7a303f864fae13bc31a3a9704229378ca","size":8433},{"mediaType":"application/vnd.ollama.image.template","digest":"sha256:109037bec39c0becc8221222ae23557559bc594290945a2c4221ab4f303b8871","size":136},{"mediaType":"application/vnd.ollama.image.params","digest":"sha256:22a838ceb7fb22755a3b0ae9b4eadde629d19be1f651f73efb8c6b4e2cd0eea0","size":84}]}root@9d3875f2d428:~/.ollama/models/manifests/registr
```

## Q3
```bash
ollama run gemma:2b
```
```bash
10 * 10
```
### Answer:
```text
Sure, here's the answer to the question:

10 * 10 = 100.

I hope this helps! Let me know if you have any 
other questions.
```

## Q4
```bash
mkdir ollama_files

docker run -it \
    --rm \
    -v ./ollama_files:/root/.ollama \
    -p 11434:11434 \
    --name ollama \
    ollama/ollama
```

```bash
docker exec -it ollama ollama pull gemma:2b 
```

```bash
du -h
```

### Output
```text
1.6G    ./ollama_files/models/blobs
8.0K    ./ollama_files/models/manifests/registry.ollama.ai/library/gemma
12K     ./ollama_files/models/manifests/registry.ollama.ai/library
16K     ./ollama_files/models/manifests/registry.ollama.ai
20K     ./ollama_files/models/manifests
1.6G    ./ollama_files/models
1.6G    ./ollama_files
1.6G    .
```

