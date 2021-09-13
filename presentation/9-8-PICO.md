---
marp: true
theme: uncover
_class: invert
---

![w:700px](https://user-images.githubusercontent.com/20258533/127727938-ccdee7c5-3582-4c0c-a487-ed6c02af17ac.png)

Cole Blackman & Justin Zhang (soph. undergraduates)

M. Ceylan Morgul (Ph.D. student)

*HPLP Lab, University of Virginia*


![h:100](https://user-images.githubusercontent.com/76919968/132440951-d005a8d8-567d-4e14-96b1-55c9cad94516.png) ![h:100](https://user-images.githubusercontent.com/76919968/132441132-53c1589f-8a68-4bd2-a942-5962de6e9a0a.jpg)

---

## ASICs for real-time ML inference on images <!-- emphasize real-time, on images -->
- Facial recognition (ex. security camera)
- Self-driving cars
- Medical image analysis

![h:250](https://user-images.githubusercontent.com/76919968/132442270-a3719370-0d4f-464e-932a-cf2c05922d5d.jpg) ![h:250](https://user-images.githubusercontent.com/76919968/132144205-42cd1954-6038-482e-81fc-13b7d5edf219.png) ![h:250](https://user-images.githubusercontent.com/76919968/132442398-d086a10e-5077-453a-b0ec-b56cd882480e.jpg)

---

# Convolutional NNs
- Pixel location matters
- Very common

![h:300](https://user-images.githubusercontent.com/76919968/132448316-abde61cb-1d43-4680-9edc-5b1ecb812977.png)


---

# Hardware diagram
![w:1200](https://user-images.githubusercontent.com/76919968/132442684-3a6c03ea-7715-40b5-9ed1-30c7e149320b.jpg)

---

# Design goals

- Run a single convolutional layer on an ASIC <!-- for simplicity's sake, time's sake, and proof of concept's sake; can easily change parameters, feed layers over and over again --> 
- Demonstrate advantages over DNNWeaver on FPGA
<!-- explain DNNWeaver -->
<!-- can implement convolutions with different padding and going through multiple times -->


---

![w:1200](https://user-images.githubusercontent.com/20258533/132440279-08fb68db-cf6e-464a-bfef-de6f25a1ab3f.png)
<!-- DNNWeaver is only something we're looking off of now, the translator is now us as humans -->

---

# Working with Caravel

- Hardened sample project and SHA3-256 from shuttle
- Gained familiarity with the OpenLane config file

---

# Current status

- Writing HDL (Verilog) for use with OpenLANE/Caravel stack (OpenROAD, etc)
  - Implementing convolution and bias 
  - Making registers


---

# Upcoming challenges

- Efficient use of IO and memory
- Implementing floating-point operations* <!-- will use quantized/integer NN instead if can't implement floating-point IP easily, too big or too hard -->

---
 
# Merging projects 
<!-- because so many parts can probably merge easily -->
<!-- are aware of other NN group, floating-point group, etc. -->

---

### References
http://cctvtechworld.blogspot.com/2018/03/facial-recognition-will-soon-be-part-of.html

https://towardsdatascience.com/yolo-you-only-look-once-17f9280a47b0 

https://commons.wikimedia.org/wiki/File:CRL_Crown_rump_length_12_weeks_ecografia_Dr._Wolfgang_Moroder.jpg

https://www.researchgate.net/figure/Example-of-a-discrete-convolution-a-and-equivalent-transposed-convolution-operation-b_fig2_321719286

---

![w:1000](https://user-images.githubusercontent.com/76919968/132143410-a7c06388-49a1-4331-aafd-f5dbdfab08c5.png)

