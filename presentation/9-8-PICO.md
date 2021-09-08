---
marp: true
theme: uncover
_class: invert
---


## Team members
Cole Blackman & Justin Zhang (Undergraduate)

M. Ceylan Morgul (Ph.D. student, advising)

*HPLP Lab University of Virginia 2021*
![image](https://user-images.githubusercontent.com/20258533/132440156-72691dba-3ad1-4468-9824-892897403f57.png)

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

![image](https://user-images.githubusercontent.com/20258533/132440279-08fb68db-cf6e-464a-bfef-de6f25a1ab3f.png)

---

# Working with Caravel

- Hardened sample project and other project on shuttle
- Gained familiarity with the OpenLane config file

---

# Current Status

Writing HDL (Verilog) for use with OpenLANE/Caravel stack (OpenROAD, etc)
- Making registers
- Implementing convolution and bias

---

# Upcoming Challenges

- Efficient use of IO and memory
- Implementing floating-point operations

---
 
# Merging Projects

