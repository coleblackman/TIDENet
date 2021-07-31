# TIDENet: TinyML Image Detection on the Edge with Neural Networks

TinyML Image Detection on the Edge with neural networks, or TIDENet, is an ASIC written in Verilog using DNNWeaver 2.0, the Google SkyWater PDK, OpenLANE, and Caravel. We plan to demonstrate the use of ASICs as devices capable of full machine learning inference.

---

### Applications
ASICs are useful for fast machine learning inference, especially in the field of biomedical engineering, given the prevalence of image analysis in medicine. As inference on images requires more computational power than parameters such as age and height, a dedicated device (ASIC) to analyze images, especially in real-time, could see extensive use. 

Applications could include analyzing the motor movements of Parkinson’s disease patients [1][2], detecting abnormalities in real-time using ultrasound or x-ray [3][4], determining brain state using fMRI [5], and analysing ECG readings [6]. For these applications, specialized circuits are appropriate.

### Neural networks
Neural networks (NNs) are consistently at the cutting edge of image recognition. These machine learning algorithms are modeled after the neurons in the brain and use a large number of neurons to capture complex features in the data. 

Convolution neural networks (CNNs) in particular have proven to be the ideal architecture for image recognition because their design takes into account the relationships between pixels neighboring one another; a representation of such a CNN is depicted below [7]. 

![Sample CNN from Lecun 1995 [7]](https://user-images.githubusercontent.com/76919968/127718007-4b3ea357-2ecc-43e7-99fa-588ec0dfb2d8.png)

In general, neural networks typically have large numbers of parameters and operations, resulting in large memory and computational requirements. This incentivizes companies to make ICs specifically for machine learning, such as Google’s tensor processing unit (TPU) and NVIDIA’s Turing Tensor Cores. 

As machine learning research accelerates, application-specific ICs will see their niche as compact, energy efficient, and fast devices to run machine learning algorithms on the edge, prompting the coining of the term Tiny Machine Learning or TinyML, machine learning where power and computational resources are minimized. 

### TIDENet
Due to the nature of the Caravel and the Skywater SKY130 PDK in particular, we will first design a proof-of-concept ASIC that runs inference on the MNIST handwritten digit dataset using a modernized LeNet-1 (max pooling instead of average pooling, Adam optimizer, etc.). 

This dataset is one of the simplest image datasets, consisting of 28x28 grayscale pixels, and LeNet is one of the simplest forms of a CNN while still yielding 98+% accuracy on MNIST. There are only 2600 parameters, so it should be compatible with Caravel’s memory requirements. 

If the die area and Caravel harness seems capable of supporting models larger than LeNet, or if we determine that external memory can mitigate these restrictions, we will implement SqueezeNet for image classification [8] or the You Only Look Once (YOLO) Real-Time Object Detection algorithm [9].

### Design goals
 - Adapt the FPGA tool DNNWeaver 2.0 to ASIC design
 - Run LeNet-1 and demonstrate same behavior (accuracy, performance, etc.) as on non-ASIC
 - Outperform the FPGA version for this application on a Zynq 7, with lower power and faster inference

![Tools](https://user-images.githubusercontent.com/76919968/127719155-3585117d-af65-4d23-961d-7011a44594ee.png)


TensorFlow will be used for prototyping the particular network architecture used and obtaining expected accuracies for the model since we are most familiar with TensorFlow. Tensorflow has the MNIST database in a convenient reference. DNNWeaver [10]
uses the Caffe format to specify model architectures, so we will translate the model architecture into Caffe and supply our own parameters for the model calculated from training. DNNWeaver then uses this model architecture to produce Verilog to be hardened, which we will adapt to Caravel. If we determine Caravel suitable for larger models, we will use Darkflow to interface with get the weights of pretrained models from Darknet. Darkflow is already a dependency of DNNWeaver for importing weights.

![Hardening process](https://user-images.githubusercontent.com/20258533/127681956-1283058e-9603-4bfb-97cd-02227f20dafa.png)

The diagram above shows the information and development workflow for TIDENet. There are three main stages. First, the weights and structure of our neural network (for LeNet-1 on MNIST or a larger model off of Darknet) are used as parameters for DNNWeaver 2.0, which generates FPGA-oriented Verilog. We then translate this Verilog to ASIC-compatible verilog. Second, we harden our design using OpenLANE, which is the most suitable for an open-source design on Caravel. This results in the RTL Verilog code being converted into GDSII instructions appropriate for the Caravel harness. Finally, this is passed through the Caravel and fabricated.

---

### Team members
Cole Blackman (Undergraduate), Justin Zhang (Undergraduate), M. Ceylan Morgul (Ph. D student)

---
[1] Isenkul, M., Sakar, B., & Kursun, O. (2014, May). Improved spiral test using digitized graphics tablet for monitoring Parkinson’s disease. In Proc. of the Int’l Conf. on e-Health and Telemedicine (pp. 171-5).

[2] Sakar, B. E., Isenkul, M. E., Sakar, C. O., Sertbas, A., Gurgen, F., Delil, S., ... & Kursun, O. (2013). Collection and analysis of a Parkinson speech dataset with multiple types of sound recordings. IEEE Journal of Biomedical and Health Informatics, 17(4), 828-834.

[3] Huang, Q., Zhang, F., & Li, X. (2018). Machine learning in ultrasound computer-aided diagnostic systems: a survey. BioMed research international, 2018.

[4] Song, Q., Zhao, L., Luo, X., & Dou, X. (2017). Using deep learning for classification of lung nodules on computed tomography images. Journal of healthcare engineering, 2017.

[5] Al-Zubaidi, A., Mertins, A., Heldmann, M., Jauch-Chara, K., & Münte, T. F. (2019). Machine learning based classification of resting-state fMRI features exemplified by metabolic state (hunger/satiety). Frontiers in human neuroscience, 13, 164.

[6] Ribeiro, A. H., Ribeiro, M. H., Paixão, G. M., Oliveira, D. M., Gomes, P. R., Canazart, J. A., ... & Ribeiro, A. L. P. (2020). Automatic diagnosis of the 12-lead ECG using a deep neural network. Nature communications, 11(1), 1-9.

[7] LeCun, Y., & Bengio, Y. (1995). Convolutional networks for images, speech, and time series. The handbook of brain theory and neural networks, 3361(10), 1995.

[8] Iandola, F. N., Han, S., Moskewicz, M. W., Ashraf, K., Dally, W. J., & Keutzer, K. (2016). SqueezeNet: AlexNet-level accuracy with 50x fewer parameters and< 0.5 MB model size. arXiv preprint arXiv:1602.07360.

[9] Redmon, J., Divvala, S., Girshick, R., & Farhadi, A. (2016). You only look once: Unified, real-time object detection. In Proceedings of the IEEE conference on computer vision and pattern recognition (pp. 779-788).

[10] Sharma, H., Park, J., Mahajan, D., Amaro, E., Kim, J. K., Shao, C., ... & Esmaeilzadeh, H. (2016, October). From high-level deep neural models to FPGAs. In 2016 49th Annual IEEE/ACM International Symposium on Microarchitecture (MICRO) (pp. 1-12). IEEE.

[11] LeCun, Y., Bottou, L., Bengio, Y., & Haffner, P. (1998). Gradient-based learning applied to document recognition. Proceedings of the IEEE, 86(11), 2278-2324.
