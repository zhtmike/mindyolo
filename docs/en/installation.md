---
hide:
  - navigation
  - toc
---

# Installation

## Dependency

- mindspore >= 2.0
- numpy >= 1.17.0
- pyyaml >= 5.3
- openmpi 4.0.3 (for distributed mode)

To install the dependency, please run

```shell
pip install -r requirements.txt
```

MindSpore can be easily installed by following the official [instructions](https://www.mindspore.cn/install) where you can select your hardware platform for the best fit. To run in distributed mode, [openmpi](https://www.open-mpi.org/software/ompi/v4.0/) is required to install.

⚠️ The current version only supports the Ascend platform, and the GPU platform will be supported later.


## Install with PyPI

MindYOLO is published as a `Python package` and can be installed with `pip`, ideally by using a `virtual environment`. Open up a terminal and install MindYOLO with:

```shell
pip install mindyolo
```

## Install from Source (Bleeding Edge Version)

### from VCS

```shell
pip install git+https://github.com/mindspore-lab/mindyolo.git
```

### from local src

As this project is in active development, if you are a developer or contributor, please prefer this installation!

MindYOLO can be directly used from `GitHub` by cloning the repository into a local folder which might be useful if you want to use the very latest version:

```shell
git clone https://github.com/mindspore-lab/mindyolo.git
```

After cloning from `git`, it is recommended that you install using "editable" mode, which can help resolve potential module import issues:

```shell
cd mindyolo
pip install -e .
```

In addition, we provide an optional [fast coco api](https://github.com/facebookresearch/detectron2/blob/main/detectron2/evaluation/fast_eval_api.py) to improve eval speed. The code is provided in C++, and you can try compiling with the following commands **(This operation is optional)** :

```shell
cd mindyolo/csrc
sh build.sh
```
