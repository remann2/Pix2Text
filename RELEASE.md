# Release Notes

## Update 2024.03.03：发布 **V1.0.1**

主要变更：

* 修复在 CUDA 环境下使用 `LatexOCR` 时出现的错误，具体见：https://github.com/breezedeus/Pix2Text/issues/65#issuecomment-1973037910 ，感谢 [@MSZ-006NOC](https://github.com/MSZ-006NOC)。


## Update 2024.02.26：发布 **V1.0**

主要变更：

* 数学公式识别（MFR）模型使用新架构，在新的数据集上训练，获得了 SOTA 的精度。具体说明请见：[Pix2Text V1.0 新版发布：最好的开源公式识别模型 | Breezedeus.com](https://www.breezedeus.com/article/p2t-v1.0)。


## Update 2024.01.10：发布 **V0.3**

主要变更：

* 支持识别 **`80+` 种语言**，详细语言列表见 [支持的语言列表](./README_cn.md#支持的语言列表)；

* 模型自动下载增加国内站点；

* 优化对检测 boxes 的合并逻辑。

  

## Update 2023.12.21：发布 **V0.2.3.3**

主要变更：

* fix: bugfixed from [@hiroi-sora](https://github.com/hiroi-sora) , thanks much.

  

## Update 2023.09.10：发布 **V0.2.3.2**

主要变更：
* fix: 去掉 `consts.py` 无用的 `CATEGORY_MAPPINGS`。

## Update 2023.07.14：发布 **V0.2.3.1**

主要变更：
* 修复了 `self.recognize_by_clf` 返回结果中不包含 `line_number` 字段导致 `merge_line_texts` 报错的bug。

## Update 2023.07.03：发布 **V0.2.3**

主要变更：
* 优化了对检测出的boxes的排序逻辑，以及对混合图片的处理逻辑，使得最终识别效果更符合直觉。具体参考：[Pix2Text 新版公式识别模型 | Breezedeus.com](https://www.breezedeus.com/article/p2t-mfd-20230702) 。
* 修复了模型文件自动下载的功能。HuggingFace似乎对下载文件的逻辑做了调整，导致之前版本的自动下载失败，当前版本已修复。但由于HuggingFace国内被墙，国内下载仍需 **梯子（VPN）**。
* 更新了各个依赖包的版本号。


## Update 2023.06.20：发布新版 MFD 模型

主要变更：
* 基于新标注的数据，重新训练了 **MFD YoloV7** 模型，目前新模型已部署到 [P2T网页版](https://p2t.breezedeus.com) 。具体说明见：[Pix2Text (P2T) 新版公式检测模型 | Breezedeus.com](https://www.breezedeus.com/article/p2t-mfd-20230613) 。
* 之前的 MFD YoloV7 模型已开放给星球会员下载，具体说明见：[P2T YoloV7 数学公式检测模型开放给星球会员下载 | Breezedeus.com](https://www.breezedeus.com/article/p2t-yolov7-for-zsxq-20230619) 。


## Update 2023.02.19：发布 **V0.2.2.1**

主要变更：
* 修复bug。


## Update 2023.02.19：发布 **V0.2.2**

主要变更：
* 修复旋转框导致的识别结果错误；
* 去掉代码中不小心包含的 `breakpoint()`。


## [Yanked] Update 2023.02.19：发布 **V0.2.1**

主要变更：
* 增加后处理机制优化Latex-OCR的识别结果；
* 使用最新的 [CnSTD](https://github.com/breezedeus/cnstd) 和 [CnOCR](https://github.com/breezedeus/cnocr)，它们修复了一些bug。

## Update 2023.02.03：发布 **V0.2**

主要变更：
* 利用 **[CnSTD](https://github.com/breezedeus/cnstd)** 新版的**数学公式检测**（**Mathematical Formula Detection**，简称 **MFD**）能力，**P2T V0.2** 支持**识别既包含文字又包含公式的混合图片**。

## Update 2022.10.21：发布 V0.1.1

主要变更：
* Fix: remove the character which causes error on Windows

## Update 2022.09.11：发布 V0.1
* 初版发布
