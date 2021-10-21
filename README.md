# TIDENet: TinyML Image Detection on the Edge with Neural Networks

![TIDENet](https://user-images.githubusercontent.com/20258533/127727938-ccdee7c5-3582-4c0c-a487-ed6c02af17ac.png)


TinyML Image Detection on the Edge with neural networks, or TIDENet, is an ASIC accelerator for processing the CIFAR-10 dataset, written in Verilog using DNNBuilder, the Google SkyWater PDK, OpenLANE, and Caravel. We plan to demonstrate the use of ASICs as devices capable of full machine learning inference.

---

## Overview

This is a University of Virginia HPLP (High Performance Low Power) lab project specifying an ASIC designed for the CIFAR-10 dataset (32x32). This project is being submitted for consideration of inclusion into the SSCS Open-Source Design Contest (PICO) for 2021. 

Using DNNBuilder, we generated FPGA-oriented HDL for a pretrained neural network describing the CIFAR-10 dataset. We then took this HDL and modified it for compatibility with the caravel harness (efabless Caravel chip on Google/Skywater 130nm Open PDK). Pending selection in the competition, this HDL project will be combined with projects by teams at Brigham Young University at Provo and Oregon State University for tapeout.

#### Process flow

![Hardening process](https://user-images.githubusercontent.com/20258533/138198781-d7f36baf-8559-451b-9ce3-3cf3cea4b0cb.jpeg)


Contest Homepage:
https://sscs.ieee.org/about/solid-state-circuits-directions/sscs-pico-design-contest

## Repository overview

## Metrics

### Accuracy estimates

### CIFAR-10 Quantized Model

The structure of the CIFAR-10 dataset neural network model we are using was written by teams at IBM and The University of Illinois at Urbana-Champaign. It was trained with 7000 iterations and is quantized to 16 bits for activation layers. 


## DNNBuilder (also referred to as AccDNN)

https://github.com/IBM/AccDNN

DNNBuilder is a tool for generating FPGA HDL from neural network descriptions written in Caffe. It includes several pretrained models out of the box, including a YOLO model, CIFAR-10, a quantized CIFAR-10 model, and more. DNNBuilder's authors found the YOLO model running on a Xilinx ZC706 FPGA to be 75.5% accurate.

We have made the shift from DNNWeaver 2.0 to DNNBuilder for our initial Verilog neural net generation. We first generated multiple complete neural network FPGA projects with DNNBuiilder, using different neural networks specified in Caffe for comparison. We determined that the CIFAR-10 FPGA project was the best candidate for conversion to an ASIC on the caravel platform because of die area constraints (less than $10mm^2$ are allocated for our design). 

Much of the technology from DNNBuilder is carried over to TIDENet, such as the column-based cache scheme (to buffer input data) as well as the architecture of the computational engine. More on this can be found on the DNNBuilder paper on the IEEE IEEEexplore site: DNNBuilder: an Automated Tool for Building High-Performance DNN Hardware Accelerators for FPGAs.


## SRAM Requirements

We used OpenRAM to generate SRAM volatile memory registers for each layer.

# Ceylan can you add more information here about OPENRAM




---

### Team members
Cole Blackman (Undergraduate), Justin Zhang (Undergraduate), M. Ceylan Morgul (Ph.D. student)

---

X. Zhang et al., "DNNBuilder: an Automated Tool for Building High-Performance DNN Hardware Accelerators for FPGAs," 2018 IEEE/ACM International Conference on Computer-Aided Design (ICCAD), 2018, pp. 1-8, doi: 10.1145/3240765.3240801.
