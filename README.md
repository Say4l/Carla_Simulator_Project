# CARLA Quick Start Guide 📖⚡

Welcome to the **CARLA Quick Start Guide** ✌️!

This guide should help you getting started with the CARLA Simulator and the CARLA ScenarioRunner. It provides a few scripts for making things easier. Feel free to create an issue if you have a question or in case you run into an error during installation!

## 🛠️ Installation

CARLA provides two versions for installation:
- the _WindowsNoEditor_ version, where the UnrealEngine is built-in and cannot be accessed.
- the _Build_ version, where full access to the UnrealEngine is possible and custom 3D objects can be added.

**For now, only the installation of the _WindowsNoEditor_ version of CARLA is described below. A guide for the _Build_ version will be added soon.**

### Download the CARLA Simulator

Download the CARLA Simulator (`CARLA_0.9.15.zip`) for Windows (v0.9.15) [here](https://github.com/carla-simulator/carla/releases/tag/0.9.15) and unzip the archive into `C:\`.

### Install and configure the Python environment

> For CARLA, a virtual Python environment is created using the Anaconda environment.

Download Anaconda for Windows [here](https://www.anaconda.com/download) (you can skip registration by clicking "Skip Registration") and install it with recommended settings.

To create the virtual environment, open an Anaconda Prompt and run

```sh
conda create --name carla-sim python=3.7
```

Activate the newly created environment with

```sh
activate carla-sim
```

Install the necessary Python libraries using

```sh
pip install -r 'requirements.txt'
```

### Download the CARLA ScenarioRunner

> CARLA provides its own traffic scenario definition and execution engine, the _ScenarioRunner_.

Clone the respective GitHub repository of the CARLA ScenarioRunner into `C:\CARLA_0.9.15` with

```sh
git clone --depth 1 --branch v0.9.15 https://github.com/carla-simulator/scenario_runner.git
```

> A customized version of the ScenarioRunner with scripts for easier execution and also data capturing can be downloaded into `C:\CARLA_0.9.15` via
> ```sh
> git clone https://github.com/JonaSchwei01/carla-scenario-runner
> ```

### Folder structure

After following the above steps, you should have two folders located in `C:\CARLA_0.9.15`:

```
C:\CARLA_0.9.15
├── scenario_runner
|   ├── ...
|   |── srunner
|   |   |── ...
|   |   |── scenarios
|   |   └── ... 
|   ├── ...
|   └── scenario_runner.py
└── WindowsNoEditor
    ├── ...
    |── PythonAPI
    |   |── ...
    |   |── examples
    |   └── ... 
    ├── CarlaUE4.exe
    └── ...
```

### Download and install additional maps (optional)

To get access to more complex maps, download the additional maps (`AdditionalMaps_0.9.15.zip`) for Windows (v0.9.15) [here](https://github.com/carla-simulator/carla/releases/tag/0.9.15). Place the AdditionalMaps archive inside `C:\CARLA_0.9.15`, do NOT unzip!

To install the maps, run `install_additional_maps.bat` from `scripts\`.

After a successfull installation, you can remove `AdditionalMaps_v0.9.15.zip` if desired.

## 🚀 Usage

### 1️⃣ Starting the UnrealEngine environment

CARLA operates using the UnrealEngine environment. _Before_ starting any Python scripts, `CarlaUE4.exe` located in `C:\CARLA_0.9.15\WindowsNoEditor\` must be launched.

- If an error message appears indicating that _DirectX Runtime_ is not installed, it can be downloaded from https://www.microsoft.com/de-de/download/details.aspx?id=35.
- If the graphics card does not meet the graphical requirements, a corresponding error message will be displayed.

### 2️⃣ Running example Python scripts

> The directory `C:\CARLA_0.9.15\WindowsNoEditor\PythonAPI\examples` contains several example scripts.

Follow the instructions below to run a Python script:

1. Launch the Anaconda Prompt.
2. Navigate to the above directory using `cd C:\CARLA_0.9.15\WindowsNoEditor\PythonAPI\examples`.
3. Activate the Python environment with `activate carla-sim`.
4. Run a Python script with `python <script>`, for example, `python manual_control.py`.

### 2️⃣ Running traffic scenarios

> There a few ways to define traffic scenarios for CARLA and simulation tools in general. To make things easier, 

### 💡 Advice

If you have Visual Studio Code installed and want to run the scripts directly from the editor, you can set the virtual Python environment as the standard Python interpreter in your workspace (see `.vscode/settings.json`). By that, you can skip points 1 - 3 in the above list.

## 👍 Best practice

... to be added ...

## 📝 Documentation and help

### CARLA Simulator and CARLA Python API

- Official documentation: https://carla.readthedocs.io/en/latest/
- Official GitHub repository: https://github.com/carla-simulator/carla

### CARLA ScenarioRunner

- Official documentation: https://scenario-runner.readthedocs.io/en/latest/
- Official GitHub repository: https://github.com/carla-simulator/scenario_runner

### CARLA community

- Official Discord server: https://discord.com/invite/8kqACuC