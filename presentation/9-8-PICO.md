---
marp: true
theme: uncover
_class: invert
---

**TIDENET**

## Team members
Cole Blackman (Undergraduate), Justin Zhang (Undergraduate), M. Ceylan Morgul (Ph.D. student) *HPLP Lab UVA 2021*

![w:500px](https://user-images.githubusercontent.com/20258533/127727938-ccdee7c5-3582-4c0c-a487-ed6c02af17ac.png)

---

# Background: neural networks
- Black-box modeling complex systems
- Composite of simple functions make complex functions
- Consist of neurons

![image](https://user-images.githubusercontent.com/76919968/132143410-a7c06388-49a1-4331-aafd-f5dbdfab08c5.png)

---

# Background: convolutional NNs
- Pixel location matters

![CNN](https://user-images.githubusercontent.com/76919968/132143480-6ea2af5e-8f0c-40e3-8271-009d65dcbf4f.jpg)

https://www.researchgate.net/figure/Example-of-a-discrete-convolution-a-and-equivalent-transposed-convolution-operation-b_fig2_321719286

---

# ASICs: real-time ML inference on images
- Facial recognition (ex. security camera)
- Self-driving cars
- Medical image analysis

![yolo](https://user-images.githubusercontent.com/76919968/132144205-42cd1954-6038-482e-81fc-13b7d5edf219.png)
<figcaption align = "center">https://towardsdatascience.com/yolo-you-only-look-once-17f9280a47b0</figcaption>

---

### Design goals
 - Adapt the FPGA tool DNNWeaver 2.0 to ASIC design
 - Run LeNet-1 and demonstrate same behavior (accuracy, performance, etc.) as on non-ASIC
 - Outperform the FPGA version for this application on a Zynq 7, with lower power and faster inference
 
---

![PICO block diagram (2)](https://user-images.githubusercontent.com/76919968/132286606-ae47cba1-d824-47df-a565-3926b8e84c14.png)

---

# Working with Caravel

- Hardened sample project and other project on shuttle
- Gained familiarity with OpenLane config file
- SHA256 on Caravel: https://github.com/coleblackman/caravel-SHA256-zenhplp

---

# Current Status

- Writing HDL (Verilog) for use with OpenLANE/Caravel stack (OpenROAD, etc)
- Making registers
- Implementing convolution and bias

---

# Upcoming Challenges

- Efficient use of IO and memory
- Implementing floating-point operations

---
 
# Merging Projects

