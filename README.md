# Lab Report - V050

## Project Information

- **Practical Course:** [General Engineering (PRACTICE) – Object Detection with YOLO]
- **Lab name:** [V050 – Information Technology] G3 GROUP
- **Date:** [2.05.2025 UPDATED]
- **Group Members:**  
  - [Tikhon Antimenko]
  - Student ID: 20127112.  
  - [Tim Fuhrmann]
  - Student ID: 20139911.
  - [Arman Sargsyan]
  - Student ID: 20120733.
  - [Stefan Alexandru Popescu]
  - Student ID: 20148087.
  - **Instructors:**
  - [Prof. Rasche & J. Schweizer B.Sc.]
  - **:Presenting Instructors:**
  - [Jonas Schweizer],
  - [Sebastian Stabenau]

---

## Introduction

This report documents the implementation of real-time object detection within the CARLA simulation environment using the YOLOv8 model. The objective of the project is to establish a perception pipeline capable of detecting and classifying objects such as vehicles, pedestrians, and traffic signs in real time within simulated urban environments.

The integration involves CARLA simulator, YOLOv8 object detection framework, OpenCV for visualization, and Pygame for user interaction. This system demonstrates the application of deep learning-based vision in a simulated autonomous driving scenario.

The report includes setup information, execution steps, integration methods, encountered challenges, performance observations, and evaluations.

---

## Setup and Tools

Hardware Environment [System requirement - Recommended]
**:CPU:** AMD Ryzen™ 9 7950X3D, or later - Minimal req. - 16-Core, 32-Thread
**:GPU:** RTX 4090 or later models
**:RAM:** 32 GB DDR5

Software Environment
**:OS:** Windows 10 / Ubuntu 22.04 LTS or later
Python Version: 3.8+
**:IDE:** Visual Studio Code, Jupyter Notebook
**:Package Manager:** Conda (two isolated environments for CARLA and YOLO)

Key Libraries and Tools

CARLA v0.9.15: Autonomous driving simulator based on Unreal Engine.
Ultralytics YOLOv8: Real-time object detection framework.
OpenCV: Image processing and annotation.
Pygame: Event-driven loop for visualization and input.
Git & GitHub: Source control and documentation.

Repository: https://github.com/Say4l/Carla_Simulator_Project

---

## Exercise Summary

 **:Task 1:** Setup and Initialization

Create a GitHub repository and initialize it with the _lab_material contents.

Establish Conda environments for CARLA and YOLO.

Verify the CARLA environment using the default map (Town10).

Download and test YOLOv8 models on static images.

 **:Task 2:** Jupyter Notebook Exploration

Connect to CARLA simulator via Python API.

Generate data streams and render frames in Pygame.

Execute YOLO object detection on sample images.

**:Task 3:** YOLO Integration into Pygame

Capture rendered Pygame surface frames.

Input the frames into YOLO for inference.

Display annotated results with OpenCV overlays.

Evaluate model performance using multiple weights.

**:Task 4:** YOLO Integration with CARLA Simulation

Modify manual_control.py to include object detection.

Capture frames from CARLA’s RGB camera.

Perform YOLO inference and overlay results.

Allow manual vehicle control with detection feedback.

**:Task 5:** Simulation Testing

Operate the simulator using standard and VR controls.

Assess detection consistency across scenarios.

Store screenshots and video samples for documentation.

---

## Challenges and Learnings

1. **:Python Environment Conflicts:**

CARLA requires Python 3.7; YOLO prefers 3.8+.

Maintain separate Conda environments carla-sim and yolo-sim.

2 **:Frame Synchronization and Lag:**

Detection and rendering loops introduce lag.

Use lightweight models and frame-skipping to improve performance.

3. **:Model File Pathing Issues:**

File path inconsistencies affect YOLO model loading.

Use absolute path resolution with Python Pathlib.

4. **:GPU VRAM Limitations:**

Large models cause memory overflow on low-end GPUs.

Select smaller models such as yolov8n.pt and yolov8s.pt.

5. **:Mirroring async troubles (Python side-limitation for 1 core):**

Mirroring Python window with Unreal Engine window will syncronise framerate for GPU to render

Simple solution is to asyncronise Python window sending it to left cores to render independently, rendering frames only when it is finished

This will help Unreal Engine window to render stable framerate independetly from Python window integrated with YOLO

---

## Conclusion

The YOLOv8 integration functions as intended within both Pygame and CARLA simulation environments.

**:DETECTION RATE:**
Average Confidence: **:78% (yolov8n), 85% (yolov8s):**

Frame Rate: **:~28 FPS with yolov8n, ~14 FPS with yolov8l:**

Detected Classes: **:car, person, truck, bicycle, traffic light:**

---

## Reflection, improvement

he integration of YOLOv8 into CARLA through Pygame and OpenCV supports real-time perception within a simulated driving environment. The configuration enables object detection with acceptable performance using lightweight models.

The system setup highlights key considerations in simulation-to-vision integration, including hardware limitations, software compatibility, and real-time processing. The modular design allows for further enhancements such as control automation and decision-making logic.

**:Recommended Extensions:**

Implement multi-threaded processing for asynchronous inference.

Store detection outputs in structured logs.

Integrate segmentation and classification for richer perception.

Develop an end-to-end autonomous control loop.

## Appendix

# Clone the project repository
$ git clone https://github.com/Say4l/Carla_Simulator_Project.git
$ cd Carla_Simulator_Project
$ conda activate carla-sim

# Run simulator with detection overlay
$ python scripts/manual_control.py

Carla_Simulator_Project/
├── media/                  # Output images and recordings
├── model/                  # YOLOv8 model files
├── scripts/                # Python scripts for simulator control
├── ge_practical_exercises.ipynb
├── README.md               # Markdown-based report
---

## References
(https://www.v7labs.com/blog/yolo-object-detection)
(https://carla.org/)
(https://www.unrealengine.com/en-US)
(https://www.python.org/)
Prof. Rasche & J. Schweizer B.Sc. - TH OWL
Jonas Schweizer - TH OWL
Sebastian Stabenau - TH OWL

