# Docker image for running ccminer with CPU

## Start mining in 5 steps!

1. Build an image locally

    ```sh
    make
    ```

2. Create a Makefile

    ```sh
    cp Makefile.dist Makefile
    ```

3. Prepare the options you want to pass to ccminer. (For instance, generate the from [zergpool.com](https://zergpool.com))

4. Open `Makefile` in a text editor and in the last line replace `--version` with the options that you have prepared.

5. Start the docker container

    ```sh
    make run
    ```
