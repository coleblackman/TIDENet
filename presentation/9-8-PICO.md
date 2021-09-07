---
marp: true
theme: uncover
_class: invert
---

**TIDENET**

## Team members
Cole Blackman (Undergraduate), Justin Zhang (Undergraduate), M. Ceylan Morgul (Ph.D. student)*ECE HPLP Lab UVA 2021*

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
<figcaption align = "center">Stochastic Reconstruction of an Oolitic Limestone by Generative Adversarial Networks - Scientific Figure on ResearchGate. Available from: https://www.researchgate.net/figure/Example-of-a-discrete-convolution-a-and-equivalent-transposed-convolution-operation-b_fig2_321719286 [accessed 5 Sep, 2021]</figcaption>

---

# Applications: images are the future
- Facial recognition (ex. security camera)
- Self-driving cars
- Real-time medical image analysis

![yolo](https://user-images.githubusercontent.com/76919968/132144205-42cd1954-6038-482e-81fc-13b7d5edf219.png)
<figcaption align = "center">https://towardsdatascience.com/yolo-you-only-look-once-17f9280a47b0</figcaption>

---


### Applications
- ASICs are useful for fast machine learning inference, especially in the field of biomedical engineering

- Dedicated device (ASIC) to analyze images, especially in real-time

---

### Design goals
 - Adapt the FPGA tool DNNWeaver 2.0 to ASIC design
 - Run LeNet-1 and demonstrate same behavior (accuracy, performance, etc.) as on non-ASIC
 - Outperform the FPGA version for this application on a Zynq 7, with lower power and faster inference
 
---

![PICO block diagram](https://user-images.githubusercontent.com/76919968/132144140-786caaf0-c8ea-4e30-964c-65ccac410de3.png)

---

# Working with Caravel

- Research and experience with 

---

# Current Status

---

# Upcoming Challenges

SRAM, I/O, Memory

---
 
# Merging Projects
 
 


