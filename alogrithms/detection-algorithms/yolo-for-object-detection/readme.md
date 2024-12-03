# Do's & Don'ts in Data Collection and Labeling for Object Detection

- use images from different sources and environments to make the model robust.
- with different lighting conditions, angles, and distances.
- with different backgrounds and occlusions.
- with different sizes and shapes of objects.
- with different orientations of objects.
- with different resolutions and aspect ratios.
- with different colors and textures.
- with different poses and expressions.
- with different scales and rotations.
- with different levels of noise and blur.
- with different types of objects and scenes.
- use HD images and videos for better quality and accuracy. - minimum resolution of 720p (1280x720 pixels).
- avoid using low-quality images and videos.
- avoid blurry, noisy, and distorted images and videos.
- avoid cluttered backgrounds and occlusions.

## Data Preparation

Step 1: - collect data (images) relevant for object detection - label images manually or using annotation tools
Step 2: - train YOLO v5 for Object Detection - use Google Colab to train the model

### Step 1: Collect Data

- objective is to detect 20 objects (classes) in images

| SNO | Object Names  |
| --- | ------------- |
| 1   | person        |
| 2   | bicycle       |
| 3   | car           |
| 4   | motorcycle    |
| 5   | airplane      |
| 6   | bus           |
| 7   | train         |
| 8   | truck         |
| 9   | boat          |
| 10  | traffic light |
| 11  | fire hydrant  |
| 12  | stop sign     |
| 13  | parking meter |
| 14  | bench         |
| 15  | bird          |
| 16  | cat           |
| 17  | dog           |
| 18  | horse         |
| 19  | sheep         |
| 20  | cow           |

- always collect more data for good performance in prediction
- generally, it is good to collect more than 500+ image for single object detection

### Step 1: Label Images
- many tools are available to do labeling to images for object detection
- list of tools:
  - Label Studio
  - Diffgram
  - LabelMe
  - LabelImg (**used in this project**)
  - VGG Image Annotator
  - LabelBox
  - ImgLab
  - Semantic Segmentation Editor
  - BeaverDam

### Step 2: Train YOLO v5 for Object Detection
docs: https://github.com/upltralytics/yolov5

### Step 3: Get Predictions from OpenCV
- save the YOLO model in `onnx` format
- load YOLO model in OpenCV and get bounding boxes