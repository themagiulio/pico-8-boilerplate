# PICO-8 boilerplate

This repository is a template for a [PICO-8](https://www.lexaloffle.com/pico-8.php) cart using Make for automation and picotool for building the cart.

## How to use

In the next section, the dollar sign `$` is used for representing a terminal prompt while a greater-then sign `>` is used for a PICO-8 one.

### Setup

1. Install Python.
2. Create and activate virtual environment.

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
3. (optional) Include in the code tab all lua files in the `src` directory. By default, `main.lua`, `player.lua` and `colors.lua` are included.

    **NOTE**: in this way you can still play at the game without building the cart as you'll just need to execute run after loading it. The build process will overwrite the lua section of `main.p8` and it will include all lua files in the `src` directory, thus making this step optional for the next step.
    ```
    > RUN
    ```
4. Build cart by running:

    ```
    $ make build
    ```
5. The minified cart can be found at `./dist/main.p8`.
