# PICO-8 boilerplate

This repository is a template for a [PICO-8](https://www.lexaloffle.com/pico-8.php) cart using Make for automation and picotool for building the cart.


## How to use

### Setup

1. Install Python.
2. Create virtual environment.

    ```
    $ python -m venv .venv
    ```
3. Install picotool.

    ```
    $ pip install -r requirements.txt
    ```

### Develop

1. Open PICO-8 and load main.p8

    ```
    > LOAD MAIN.P8
    ```
2. In edit mode sprites and sounds can be created as usual.
3. In the code tab all lua files in the `src` directory must be included. By default, `main.lua` and `player.lua` are included.<br>
**NOTE**: in this way you can still play at the game without building the cart. You just need to execute run after loading it.
    ```
    > RUN
    ```
4. Build cart by running:

    ```
    $ make build
    ```
5. The minified cart can be found at `./dist/main.p8`.
