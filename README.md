# TIDENet: TinyML Image Detection on the Edge with Neural Networks

![TIDENet](https://user-images.githubusercontent.com/20258533/127727938-ccdee7c5-3582-4c0c-a487-ed6c02af17ac.png)


TinyML Image Detection on the Edge with neural networks, or TIDENet, is an ASIC written in Verilog using DNNBuilder, the Google SkyWater PDK, OpenLANE, and Caravel. We plan to demonstrate the use of ASICs as devices capable of full machine learning inference.

---

We have made the shift from DNNWeaver 2.0 to DNNBuilder for our initial Verilog neural net generation. We first generated multiple complete neural network FPGA projects with DNNBuiilder, using different neural networks specified in Caffe for comparison. We determined that the LeNET-5 FPGA project was the best candidate for conversion to ASIC Verilog.

![Tools](https://user-images.githubusercontent.com/76919968/127719155-3585117d-af65-4d23-961d-7011a44594ee.png)



![Hardening process](https://user-images.githubusercontent.com/20258533/127681956-1283058e-9603-4bfb-97cd-02227f20dafa.png)

The diagram above shows the information and development workflow for TIDENet. There are three main stages. First, the weights and structure of our neural network (for LeNet-1 on MNIST or a larger model off of Darknet) are used as parameters for DNNWeaver 2.0, which generates FPGA-oriented Verilog. We then translate this Verilog to ASIC-compatible verilog. Second, we harden our design using OpenLANE, which is the most suitable for an open-source design on Caravel. This results in the RTL Verilog code being converted into GDSII instructions appropriate for the Caravel harness. Finally, this is passed through the Caravel and fabricated.

---

### Team members
Cole Blackman (Undergraduate), Justin Zhang (Undergraduate), M. Ceylan Morgul (Ph.D. student)
