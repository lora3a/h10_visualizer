# Getting Started

## Install Docker

You can find the instruction in the official website: [docker.com](https://docs.docker.com/get-docker/)

## Download h10_visualizer Repo

=== "gh"

    ``` sh
    cd ~
    gh repo clone lora3a/h10_visualizer
    ```

=== "git clone"

    ``` sh
    sudo apt install git
    cd ~
    git clone https://github.com/lora3a/h10_visualizer.git
    ```

## Build Custom Docker Images

!!! info

    The building process can be done only the first time, unless you delete the docker container images.

Inside the `h10_visualizer` folder:

```
docker compose build
```

## Run Docker-Compose

```
docker compose up -d
```

## Visit Grafana Dashboard

Visit [localhost:3000](http://localhost:3000)

## When Done

1.  Stop Docker Compose

    ```
    docker compose down
    ```

1.  Remove created volumes

    !!! note

        Check docker volumes:

        ``` sh
        docker volume ls
        ```

        ``` { .sh .no-copy }
        DRIVER    VOLUME NAME
        local     h10_visualizer_grafana_data
        local     h10_visualizer_postgres_data
        ```

    ```
    docker volume rm [volumes]
    ```

    !!! tip

        If you can't remove the volumes:

        ``` sh
        docker volume rm --force [volumes]
        ```
