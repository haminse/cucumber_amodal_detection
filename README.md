# Cucumber Amodal Segmentation project (feat. AISFormer)

You can find the original codes here : https://github.com/UARK-AICV/AISFormer


### Run sample demo
```
bash scripts/demo.sh
```

## Data setup 

### KINS Amodal dataset
The data path for KINS amodal dataset. Download the KINS data from [here](https://www.cvlibs.net/download.php?file=data_object_image_2.zip).


You need refined annotation file(.json format).

The json files are located in [here]().

The pretrained model with KINS dataset is located in [here](). Put the model pth as below.


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

```

### Docker file
We provide the docker file [here]() for Ubuntu 20.04 with A6000 GPU setup. You can modify the docker file if the requirements.txt does not work. (And I am pretty sure it will not...)


### To Do
- MAP calculation code for training / test (DB)
- Custom dataset registration (MS)
- Cucumber dataset annotation generation (CY&HJ)