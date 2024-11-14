# Cucumber Amodal Segmentation project (feat. AISFormer)

You can find the original codes here : https://github.com/UARK-AICV/AISFormer


## Data setup 

### KINS Amodal dataset
The data path for KINS amodal dataset. Download the KINS data from [here](https://www.cvlibs.net/download.php?file=data_object_image_2.zip).


You need refined annotation file(.json format).

The modified version of json files are located in [here](https://drive.google.com/drive/folders/1RCIp3HhIqyjzhhCAwsEXbE6EdbOz5_fh?usp=sharing).

The pretrained model with KINS dataset is located in [here](https://drive.google.com/file/d/1yZyJWerlKnhXKQdKYmz1v7iD0ywHtql4/view?usp=sharing). Put the model pth file as below.


create data directory as follow:

```
./
    AISFormer/
    aistron/
    cocoapi/
    # create data dir as follow:
    data/
        datasets/
            KINS/
                test_imgs/
                    xxxx.png
                    xxxx.png
                    xxxx.png
                    ....
                train_imgs/
                    xxxx.png
                    xxxx.png
                    xxxx.png
                    ....
                train.json
                test.json
        train_outputs/
            aisformer_R_50_FPN_1x_amodal_kins/
                model_final.pth
            



```

### Env setup

```
pip install -r requirements.txt
```

### Docker file
We provide the docker file [here](https://drive.google.com/file/d/1UOr-kqpohDl_GZ99MSMo4PyEdW_NxsL4/view?usp=sharing) for Ubuntu 20.04 with CUDA=11.3, A6000 GPU with python=3.8 setup. You can modify the docker file if the requirements.txt does not work. (And I am pretty sure it will not...)

## Run Models

### Run sample demo for images

Please change the file paths in the .sh files for your local setup.

```
bash scripts/demo.sh
```

### Training

```
bash scripts/train.sh
```

### Inference

```
bash scripts/test.sh
```

### To Do
- Fix MAP code for training / test (DB)
- Custom dataset registration (MS)
- Cucumber dataset annotation generation (CY&HJ)
