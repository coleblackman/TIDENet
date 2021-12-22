-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4.1 (lin64) Build 2117270 Tue Jan 30 15:31:13 MST 2018
-- Date        : Thu Nov 11 21:49:35 2021
-- Host        : boldrock running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top mul16x16_signed -prefix
--               mul16x16_signed_ mul16_signed_sim_netlist.vhdl
-- Design      : mul16_signed
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
eThA4urGySHz67tBZHTx4tTp5mTo5DCRQfp+yRzcr2whoH4DIeVibo6x5of6iYBABK/MkSBB+B+H
6UAn/P5YAg==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
snMFkYPMv9V6A3+iFtG7oTRSl3WGGhMc9D8j1ugpsuSLiA2Pje8/UBQUWcKNgi36vMIFClm04c/s
irbuPFknEhoJFPLTFvHNIYDDpTc/zSRSYh64zwdLSWJq8KJpVDb7t/RGYJR24edP/F+cpX1FBOkk
u5xPbUQBgvE81oAW6Vc=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
RgOlCHqXzvXwQsA5I/LtBs9g7c6c0zVLfSY85YSnPWeKKiiUCefF+uOTsUUUOPRJHQH/2JFLot6I
KN66WAK5AG1acq/TnIhm7kcfBhAtuMDqfJmzboDn/hOFlW/pGETTzEgGyqML86b/3Qv9/f6WzLZw
YpWcY7lvAprtM/aqt+Ej49i6Zpp0fZae9Wz7TZnG87OMzjrEEpE9TBAEmcWqMUG9pbTESrkotct1
AaXMmP91wkuOdNe3eXyW7WuGidjdhrxA8JqL0aKgFij86V1VUsSOkHsZ8lDi/+0NoSu+plsguYZG
4DD4Fc5Eef8GWXJlvHqhXVHxpytVD5r2VB3aFQ==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
le/1KL2Kir0qq3QcBG1RWBhxaDbWEkj8/k5hyPIo+Y31Ou5MZe5sKugCbLsyBCAxTRslfntg+BdR
6THUA3CltiLpc18R1vv7fFNgBU43i+ynX0ENrrdAEo32bLswKxtqKYEXZ0wvg9QsPfVYA3XQTCjB
nPKukZDwSKLU605KtPfGFeqog8pfrWEe9w6cEshhnhrTuGC5QXqgEJKuLR4AvikVc9W8Q9dPcRNp
QSjC2mi7DNnQBlcR0JoLdoigEO2yqIWIiYL55WaXma3jt2eJbTTbfyRtEDQxLkAn6gPN6uOmYnLU
GmuLwdjmwZQZZPsG8PPZ0fMhHrKjStIpmD3uNA==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
ZNGRmUPX7BBXtKiJcv3ct09nQEaXPV67ls18JqsJeE30/JEe6JC9VLKY8oDe8U6FcVMBD/CIcRan
NKuWqxyDaFdif5ZYMcWtOHrCitIlwNmpl2mkatXNgSaRNSSebFSGyy+NeRGsUBbzcJk7x4zl/g/z
z4Y5zEMbf0v34IQOqA3EBYIcvbq5KBYyFmuHUcV9KExYa/1sBdIhd1Q3QafXF4BaIQrRjQRWOeyU
CwWELIXqSN5zLC/YUHFZ4I245dNbO5AgS+pWIAIj7razFBT5XpaVrVulxmW6/6fxVF2RArbW+lo7
H5ucVUWNvG8TrSha9sVMEty2FyutpMVtysav8g==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
C5XA4YnAJ3khS6SlIoopor91q1/ea33YXI2DNXmXOyYrQWz2LJjAZsHefs7nfRe1ySlhdk/thpxC
zhvlzx5bt/0lmomYtSlwRSSL1sHwGugg+WXQaAWnjjya6q8S/lIfPxao26u88QS7DLqvAJI1tfOV
tBa2W+O/Q7evPFRzzOs=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
ra6N9gcp+jtEzd26qhq96k/trdhW10hFmj31ofzQLSu445HchyJ58i6PaJ4B2yUq9nFhiGLC76Fr
HkUbk+dsGN8NMhHdUlsoMFoSEwAMVzjQJbk1i4abYKb2hhKFlzxi9iJIaxt5AAkqWXGvGNBSjIOA
Kjtwc8EcbZs5NNH+9QrcW1AoJB24rw5joAA1tjYHM++XXH3oq6KAadKDYE9lKi4nGFgM0wTrIQBI
zVAHYIZ07XY7ZOikL7+cP4rcs+HlJiMjix8HFkdD9CV47+c9JeAA60gf8BwlCN7glzoT3ApW/MwB
v34K9AVEERPxE5hEbJa0M1TuZI+A95Wev2qahw==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
QnY+1iH1QG2FjuIheph+UEanAfuz6XU4krVdUtRrwnkwYH3GUEEvwFq98/hFULNI2esU6HMOj44q
ykH6gJCIqofNaxAJSuBfLiP+hWArHOLOwn2zSEXjSECeFtxh2MbFDaTYn0USkIPNcfGmuwEljnA8
C/rT8IQTF01nI4WkG1N1oSrVqw7VfcUHnhxG4wET4xck3d/xzBVlieEplMNG7PAGx4hhmr77OQaJ
ZXbNynRQ5rmzLa8AiMbwCSjZI6IviC7U7ijRkB7GGd4vVE20DiSf+zhZa/wRu0M4SxuHCQPQltXe
IhmV93x1pBfqtFNp+I7DXqdw4GT+5me1vygnkw==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
bG1pW404GvICMnH2rxOfC91xGI46zg9ZiSMDkbaQ4yTQtJGMIIeKpGtgskGHm77Y8lXSfqFf17O8
zxufZIn6AXvqpGRAWS48eg9Qw+4nJTwncUZnRdZ46ii93+TcptKHM9Jj3WYBiIdVkN8uj88eSgrM
fzH9N4yqTVukzl2gKI+D9nhL2Vkx4vM9+nA5x/9VY3VylCs/MtJ7OWlz8QfBiwpKAbLaZBUtluc6
Hpc4nfYP5LwKa+/V2/iAcrh0gYSHP4vJZ/GqAyjC062nhN0HRHyPgEtCJLPWDF6E5OzSxEykmB8G
7CTmwTqD2LYbXSejkxOiYdvSgWPp+u2XtoL8gA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10576)
`protect data_block
Z6MPBWvqmqJVMH25evdrEcqWbRNBrstRMCohFTaMUC/7FDpPcfH/bFRaFGWeDiLepqvcsycNgDJz
fgn8hc10VyAIgev4GyiBxIhPar46NczeEkWKZlvLv5pRSyFbpfeEq8H6MqiRrzVcsJlB7SyWHYoi
lI42DVLrHiB9hiO3keVeQLO29x8ursktx+Mj68OHwsSIx9Ys8F8CRDgZnOcXcX2ycPTkJKkTFgQI
mcE8GDP5OCDzY+eh494jC23qPE+A9cT9BtIgNZfdv7L7f5bllu8u5TjpmjjuJJifqdn6s2HuM0tE
5OG1TNUN5qNcZ2wLnWZLN5M1T7bCKWjUcb4Akvcbg7e/bdkeRFcjj3oLuicW2CD1pyPLvShxw+kg
lwbev8zRwMOP1kObC2aVVUa9U/AP6ZIoZl0qNAk1jYxrpJmlbc2VDdLm3Cbw6+envP9+8hfHa3ie
klVXnYzqQj4tadQvCaSPytbKworbVhUrEY6K6ACwTgtYBNtRWMGmryq7lvyHNWe9Ozng8Zzqj7Le
rosXr7CdQtq0qfDXzZgKik+re3UlK3mSYgFYIa1Qnf9AnXCoFj2XcifvNN4vLiaC+NSIdYnInYr1
tuCFgtzOjS5iEXftCn/l0FM5fjDgZvhFaXjcX/l/pPsqpa/IVTJcVEi7Wg7fIXppbKA+l40sQqz0
G9RSkT5xSjoNhg+9uzzfSikT08YpssU5K/2YVKARkmS3IjahlD/ORznBjsEKUPkl6S7kobz4/HRe
wPA4ANSLrnXDKsdIFtIs6/COzC0GnklkYO7n/bn9Gjnga1mv5Z2y7mieyKQ6o3YdPsyScXkMeBA5
w2zjQzn5jYz2S0FfKDZ8X9eplLeZXLECi9ZBJ1a7SH1NMy6V+R//BVNu8THYp/HKhMAWXyoBc73q
FibnrGkG4Xy4z/bnbqxxrnohbX9z+b5qQVs1EGSXmX2+BQr/16arm2ewxokw40N78ZZjYoLprBJj
HFoeZe1lrNdXxs2npKfcq7jHfZeCuZNyNiwJ1g0L9fNmom756XtYeD8rH1ESUt/DYGK33e6X9UZ8
gLw07Ngm/w+q95/FRcsX28rVRqccZUeJC4rYOxREsXLEZgMGmh2xRv4OIuuQhr7Xl4X+zgml4pZg
nZlU1hhYnWqUEGFf1Pp+Gmki+7/MtNh6h9i5ubMmmt01Iq+88xcCIO3t//wteJKY35F1Tvqm9pxv
48CHbmLeFB8VsyRnzZOaSp1HVqIjQp6HBgRoaK6Hi0ZF2wbwYKDOAeCn2CinuiQMgd4zRDpi4vPM
z0RTHhMQTOLyw/xTpMhffXUwyc6RS0lOyiFBJquKI/mbbwj9xN9/ntUeH/ZM6SYwFnMvsRANG8lS
CBQlLl+GWsiYVEUxEKrh8LmmGoAeLpYga4SYs5j+il8fgcxKBTKTOK4b7kyR6YdydLCYvOJJyZ9K
F0QHZc9rzNEq7Pn9KoMVjPRYZVwXs/kV+MLbgypusA4RSXzxvoF7NVH5p3ltPTrdBT3MUIlxOsLi
yH7svX3aiL+i6Zuj/KMU/WPUcUJs+5bHTbON87VnzSxus13cgdy+RlP47aL5mNSomLa6ZXkcW6IP
0ftPRBQzcFbMGnABvI6/+Qs9kJ9JGFqeUXZZ34rQN6y509U3FHn/WrLfINQTwHRQRzClpRRYJ/c/
T1aoHNAQgJRSTMn/WYUS/wee80+rVeVusSZ7nBWMguPkwSmXFXofISUEcAhcPCm5aHZMnELGtQf5
1XfdyqoapDZsqVc5FWXhU+8KuMV4S3sBKh6YyDvPouZoBs0S98i6khj6L0gG2YOWM2rNyUDlHffT
59uNFB9Rq8508cp+IM31x+cBDshIUeVEgesROXtphlu2gFasvaO7B4QEYsRR52up9Ks0J97jXVCO
KxHZrUQ9xYaSDyNji2IRUJVSMFFXeBKE67V98+rY0EyzF6prPkXIrSbfA75PjCegmz1HK6reVUEA
HVp36XohuvUs8oXk3JFHf9h7RmdmzAv5XASgFHlplk+HzeZ2RYTwaGk7y05RHEpQZYqQUBoMlyFb
cHXYpOSU5nt4T4AUIEIhxhx5/VR/zIArxOpfkTqF9M0twUIlbCoC4WSVUFxzzYfx81yIGUWUklE1
WXQhOd98JaJXNc5DzqB7ItwScubhV9eQQIOHeJYOCPwCyPixnWqijQbwrokh/NfuX/pASQsF0hFW
pr9eeBwgaAz6CrbYqN+CR52GyD7SNnRG72BjPZl5Be2tf44ureRF8YvVl64QJ7LmsCJDK+7sFVKH
Y5yhnrNHPKpJBSUmoZzX50uNDaZlMmyGL03j92Kby1dF48MBEby28+8nW1y9rWmpxO/l5cuxBwtU
mbQQTIRwadIEDj8BDWsr9/ls4qm8cGl2hyQhYT9H6gt20QzMgkPkjns1fQG3xm9SDxRpKY2ZQE+/
EOGy3Bsx1muX0LS1tmNLLUpIMMpusrQcGblQzgfbN1FeOviJdDbWXCukFRvOBu3H0J2MCQFbjkSH
NweNRBkkN2wWdE97IntRKHg8zJiYE0xcS4/u/ddfv2Jo+zx1fI/1y7PpKJ/oLcgBN9M9x9Hz1cTK
Xw9o6A/WvTGEA/kIH+aN5phDYPj6ulHx311jsQWkFnrmjTItusqgUcbvqCA/LUFaSi+IUPfB/mhl
0rNcKSfnM+CW4Hsb+87VsJSRqxtbkZukNTf8XNh7JcZUqVCVRf+5qABBfwjGfSzEeESrYfMkzqLq
wHA49I7J0KKt3jUNn3M6/LTi4w1450hNYwhfAzTa5kPE21rXJ2OAcXjSRkRzKtVqNw2BP48K4uPh
kwNMjWXA2AbQCrwbq2a9Mpne2ufb3NhUPFtF8V8h6KMiycnU9HnpJ8RVgRkZ8SuMF385BVZGYMqi
6Zu+0T8xoVkcAiCTo+UIIhve1Bco/x5OSCrdLtX05KxffKxwy9MZz8eXb3OY2XoE/VBIdnl+D0yw
89c4D6CBDEJvFdl/Vs/PmUdQwSnrjuOKB4XnILYiiEF09nTg1DmxQjyJU6VxvmMZDmLFzz8WCirn
yGFC5mmAsndFhRViApA9mgU9BeY4S9vd9WJwAUXaBr0GCRfbWPhDdSHhQ1UB/V28GDvxFqkiZBvm
wHHDqyYd6kndlsLcvQ30DBGmEpn4U9vWqgESigDGzRiPKd1AntwnFsOZTUYXfeFf9M1Lj+0Za73N
OigDsEPOjv4WJSQt2UiQNkVMRYGN3zR0ICnZOewGXN9T4nRXc1xVtNuNlKYFWSKQvJnYaJS5RcoB
hTo7FMEHbn38rOcp+Wih2D4ESvnqcQkhjKr6z7ZDdSMt2/3KMivBU/Sk6HDxMUDDs04LkSoDL7ku
rnJw9E/5cEQ1UbF1wRy8DsRu/lGbH/zDfgp1rsHWN08MJW/RLAjJ4gDaFnnyx+5JdTuYG261TFDc
1vNf5WbjN5/dX/SFu5sJ9eSjUAnIWTg8UhR7GvTASZjpRNNUAUREq1OzjEEPyh5OF+zXpdJ3sVIt
vhZ6mHH7fSiqmZ9kOSkPKhl8Ukq/pdBzjt8rAD7aeTLi7w1CNqtW5f/zytzNKBZ2UK49lbLNwy4w
5OxgyNsAw0v8o/LvlXZ4lhfU2lpuLILvEaXD3D+sm8frE480LsOPcGBf3LNKl7AEIe1TF9BzoZ07
p6Ow6TkUMV8ybJeDKg0n21T3gmDdzhJQ44FGSzE9azWWW+uD39hXalwLrTqrUdiekavZckzJgExi
k7MDyu3l1Gcg301Q6c/uKHbckkH6MeaYiQrYocsFtpUw0RORxLukVSqwhDsx6vkQY6nYGB0SSCZf
+H411Z6+o1qrDWCmpHHj7M2SWz3tWLdjXSIh7PtvHVaPUA0717H06/HbJ2EircMA97nXQDSnwXQ7
pSFqk3OmEGEO696ee9p8XpO6KDqumpC/WEMyhH/3Np24El2caDr2StW8N3G6BeoO5un12FtvdOfb
Lvv+aru5SpV+Wl/p9rbdIcgrveSkbgwsIq3LcagyqDxx+QxEuoBA3rYEHgTPslQ2/Tb0cFvC0JUq
ptNM1eNhLfmw24FidRmLcgWcfur8ebyY3Ftp9bJWCoQ19dFLoZ0D6zpM1YFIJNsFFBF0c3YG6g/s
wOC6KEi+SWc4OxMTDkPiSZmzjiKB4zvd8S2myyGKtRS1unyB68X7sWPlwac6E52QmEImAqfu0giM
9kc636uwhAMUdijMX17HM5mo+G7AE7swkclsTrCxmIayGLiNIv8mHLsoefN9RFbkM47X1k/DIX3t
zfY38u2jkIgVrwqZW96tdBbXeLmUq+gO+Ty8vGPa+koQiOvAfwrNgSf4a9/wLb7e3OfDCFIMJhKo
87NYroBk0/5cG/HgtzniWEqGoKS8zmHFtXX99rbtz/Y00esSHHytKYXtDtNMKbkwF8Mqmbb7PVWf
8zLI3Qfdll5mkMiuG0ZeWqEHjHgy3AUEvIe+cfWNAWAvAx/+LchP+LgDFz33Yzj5gABzXbq6NOTv
Jk7hqdGh/IYn/5CXWIQyk1VIMHKran8Bpj+t6wy451ZCzufRT8lYX7nA5nlO5bM3I1spFpQLbgy9
rOnfGv4dmDwalLPCIJ9vCM3AJEA91jYAsduPkCUuNqob5hoczubi8F61qsSq+1JKZX1ap1dje0iJ
jHgYLg2yDM81UJsro7Ef6mSGm8yXktF7E9Iyr5FyQanw1XxriTcr+czFzl2cbTV3L0Wpns/NGcHE
YA/iIlKSgLwW1aiy2Rgj4N8oH9/9IzLPCFslvpvcdYnSqorS9fZGUXDoGO+LgM+ZMc4aVCwfrcAV
MMwgrHIGdHZO/rZ1XoqK61o4ZwvGq4HDtnWTDKA/sm8JvnGoIijSguzH2RYKJRrDBTDP/rut8hqa
YYzaJljGBamtQeNeKznRNvuKE5Xz5ipA0gdkN83kBdV9MNW7gHID+SVB7H6GWl4XIhejQoJyyNdy
qq6ZTUOIlS0xkCMdomYJ5kgjdrnskz82vOe1EGpEbveEJdDtJ1RVqLPdOjLAScPEscS+E3rpwRwX
PfsT5CqdN6WxbN09w3nvVMI0CsJjPot0tZQQANnKaXnmoIODDtRK6Y1kI+WH1msa+aph2zihg/u6
OXKRQHAYVOM/u8L+YK1GM6ti6anXhp/HR8zhs6NK5rxrrdCMKFauNipTeo0+Way522CmqjUfjWQI
+vS0zQ6H5WTpnxzU2se2XEdQUWdxpq+yDPXBCmQmC1KVDxeaw1S3XBKkXyjoJ2k+AV4SOLgp5gPf
UuLGQ/3R35ybmGMKz9g91CwxyoGOjxSAACLAZ72o22aDz/y8Cq3fB/6o8Gj14SdjL4/gnYKQHHg1
EyOzUzZZvThabFkDejc9xxIszO8Wm2fiJPKIvppDi10rrbeapa5Sb5VJjqPtfWOjSo1uQjBbzSvy
GgJhQjcDajMWPvwILDWzjHjvtMXs7YuQbvKFpa+8ZNQKlL4xdauv/D+nq1Tq88RzZnvUlSfpfdRh
gXETnJdmk/cSxWprgT/wqezdWsqAZygU2MQqu0hkyY55fbcN5Vox0LRyn+Mala1fk++kDEJz1Qka
uGDHvgcZIPlPlnbkXNJDzIi7GQt0LXtxkbPHj7zBxU71SMhcysi0aKrbuBGpEf5Z3jUk3QTcLD0G
4MM1REknrqJAI90OChyu3C1ZCmrJNYOHPh3XTE4Gi9tBmJ2wptGNEyDYb3pZMHQTnHEcwuTsajz7
/Gn9ttCmHzJW7zQxzgD9T8sXWmbbadIe6aAiUe/TE8SELj8V8zwGcHOX6It3IrIYOjZjRYdGoo5G
1jn/6BdsFAG0KKp8aqUpm2tNmKeA5iFBLbHVsu6E2szICAM/15n7aurj82pvsvfCv4MKifmDOi89
f4HmwH6qDpL0vBG/DYJ7CdvlaM/fQ68Eut8creO5s3Q44g5OrmBbB1P1XiLT/YA0PZ7R2q5FyIgU
22BCmxZM6m7rjkbFuRAvWt/zBsfbYjTjkBdyT2jGCBNm0Ti6vVOAEnvWHTQBL+lQh/ML23GqpvF1
H8dAOo/gpLKgLzGJp2xWIO9SCsm6maqv8JdQJ6ZKI0Mr+I6Nh9W/Op612mKZsR5ajr6APPmuhPJz
tWsFZjvSWNN8oqUCVJ3KgRnt9UMXPRXwB89UFMvIhTKC+mB7yR6BLQGeHkL68m0dPG8kqy8UPYZR
HDNKv2gw3fPTyGOOx2JU6J9IcekERIQVDyTarby77Y+kt3nc+EsKPjCej01f1XnQpsIOPSArNkbI
Gb4JJrnubWOjRvBZjsjGrjOaA5J18itoPScVUHHad70UnEw0lYJ7yzJA+icGTELyf1l0cw8DrtNV
mzFzwsXUttBNzlg48jkmmi78SlqPwf4Zo54CpI1r+LUBjbakCyDolYPwCf+3Qps2nTiKfpP6Bdf6
ZNNMxax/lPtDLlw2tl3ltdRbUR/+OzlJJbZXpL6B3o6vW/jwltLTyL3hJn011RFzc96LeoKAqx3p
pBe2939hJ3TDUaKBU8FB4/uUPZlcXdSsgoPDsxw7NKz66oHONZsWynmBsCJP17G7N6EQj1ao8qTX
LMzbnQcvAwXSWE8jpYa0fBD5tX7fFzapUza+21fbnS6JOjPWPTfcxe5oifuEeIO/wq8Sn41KXRLZ
TjXBAynlPYrQJP2ogyjqKu/D9BI7tx7XlgWYskh9Xd/0dbuOzceti0HrUKYAs1eEi7koMyIolNI5
k8/F8Nh1fyvCFexYf1X/tm5RZB3mlPtJ+wn6x7xh5sDjXp/QnnPc2Tdjb0wKG6GJHTcdUh6Nvy+I
LxFdnsWST0pSlJlfW/Ms9fAuFJgIs2w5FFbDHzkskAn4Mmxx91Aj7JDG2Iwf50p7mz5oCPL7fnkB
nR34eR8PUCXo0ag5nfd4w85GAq+UkJLy/V0LTBfkJJYa1LnMHd7Q1jC4Vq684En8BUnob6yGbnRC
lA03l68CX8hn7ocTWKp47opRpXxaDTXivax3n8C0RwA38DsM+GYZF22B3O9Dhl6rQTvefDYRBKSp
TIFdkjOA6OLeNqZj9d0LTNiBnI+ongtZGliIlAUlk2Pf3Q+jzoWDWTV6cyjDVXkxTUyXpilcvqOa
cYU+AzvXfa/lb/9YgjRBqm+6Un189pXUhPU5pHlXanLy4ENOETRXKUmiqVk7BLhSD+rck5hHYdgI
i0noOrKvplRTJ25GJeEhQbz/U9COXqOnNqaxPkr+XoYzwMyKirDgqetKPMVdeCC5lk7gt7kKI26x
UsiqLXa+CzUsFQaW5MbyR448oNoEdh/LYMaH95SoqKEqQn5Snwq8PZibLdJyYLZelir5YIXRT/61
6NO2z5eXHPCqrE80rnlD1qcOE0UmWq4NY6ynII3XPn90PyCziW7ORrBn1PXBSBmMtUc1blyRjpxh
WAuzGDybK6AdbFz8zQXz9PfMcnOpvH13tvkRpZKYwd0fQtvPu1AvZQ2qNVG2HowzqnFYhzhMLasg
2DFmlKPcdB4c4U7S/ELMnmvFIKnQD+kXmf/SZt+7s2ufxUmElDqd88hWfhUVU7F2Il9k8/2Ba24u
lFf6DmCfoHoBSOYnV7dM3US2UrFC+qDLnITFUQLrvIokLTVGmmI2vReZJqJW0qwantawurBghGuY
IxL3P3DqVj3CLutEBRczYfXVc1TbhzTXFXv9D+gzgYvF4QnLfnA84+EFxDfbeT2ZTGsIfxYAKbpD
1LAbJqubLV+1TtZx77ZkYCQLATa+sK2lXJFHOVUSf63aTCn1LHL8KWId3d5Cl3tITsFqqhAb7mch
7+giwvg7h7n4jClz3v4lg+I5e151w+8pOoC9ovM/8FqOHhehJ8iFfSn3bo48K7zbpdjXh/pJNuWm
CH36BdaVsBP2M3pHvTA41w1QaBgxXUGfVffMAbVNFdtg7qkvLKHP21x98X9xMTPzcdn2w6oILW7b
IL+zEVQtK4rhCmsBf6GtS/A5YnX2gTgR33zNYoAi24mdU/jAuGL17l9ynqhlNf7GdV5irzpAzAW0
4BhXkoCfc0TJlTHjeJZ2wMRq7wTOR+Sy6A+6YaSO3V9ayKH4fEgzrlQUiOcQOiZ/fzbvZMhgNufx
yG83o5H9bhb5CEtkXdlv3aqTvOIO22w0JP+rT8uSUhrsGKQV6ufhoK5ivua8XjGWp4iF0FrHB+Ap
LCNxwO/l0cRA3eiXGhna0zMqoGsE08iDHsB1iBHM14YpZC3j+4krMutif0Q/rSt7psRQbWM90fRy
1HKwzntz6iG8JBIP1nEgWZMN/VNq5JzaPtg9QqGa8SK/SoLIr+hAHd2KzvK5IXPfwQH8j9RHolA6
twVBJsZ6H5frsvCY1DGYEH1CC8b7MeSHAKWwns+73L4x6yFheblLyOkleI03jm/GjVmT8s0rG6Hx
fz8On9kfFiXhibekK/I2SuSayHOvQEhDO7XkVJE7TCLjxqqoY9+IibFNBKetQWdyYmG2vo1sSeW7
NxkzuQ31550qtaxm8eHQ7kItTNaLqlZEhcxbWTUig9AAA+U17cCZvMM/HlSrJdJ/jGzuxYMbwJ9A
WFEir5zqmRJ8zC56wmNc1lFJiJ7WPjB/jwuFC3Im+Q+3obAnzBH1hXJzJZZlEFtYCgQIECyvCjUi
k8Hg3Dt4nkIie2oz34pjvuynCJG6LysSK+wHMzqKVYn/x0TfBrztnBkUHqs1Ve4TP1jo1EOVM+m/
9p6cmNMuzmi7a35PlQEAjsdqCYxoZplh9d1aWDebqvd6r5cFi7DzkQ2dlBUOrSfewU8ikSAMOh5G
jAQacBWjJ++yL4SKGAijybWjU/WqUA9nHIoidcl9V7XkjGXHvESqkZT576lXYwiRIb0CvP0vpg+h
9EufoL77iqlcBm8Vth/aKC0zuKVnHuurCaF25GDBzN4kD8c6wj5uzDYOkhkArGFjLsqh9dcM+vVj
hxujj+8IEd6D4jnE91a/1GK0f0wXqVQxowxTVqrdWeZIGdWbvMzCGlKYKwn35NkRdiP03YFpz2sr
5wMNaSbC0/0e8UXh47tgIE7F9aEacpuF8qSm7TEW/qyoYDcp7QOWh7xjG/GBCk6jGt2EptCYOkKR
RP1DwLGL4x2xrV+/ngydWWf3L6m7gK/mDXiIniCwO2p6rQPa4i9eI6MtM4apu1eoOTXv51JbthyW
LWEZ3AAVqoq8YIQ7l4xBdSioB1E/gTSTDhNkX8msaYpSawG8qHwUsFe2TD54m2zu5CGUdQEbd/il
j7xeCrIB7L9vPcEYgtOcJR8bFp2DucNWs2ALRagc0LQuxR5tscSmCYtq7fdhe+bRYXqmpqH/0G9c
D2lx36RW3cBS8Zn2bVYUmW1G2uD1CVIqAiuRRggaHCWqtl0EnZhyr0luAAcXw824zmJuDyblJA/t
QWVreZ1EMXGxNAXOnj/ILkkdOXH7EIOGeL7hlK4i9eEtRtyt/1CdUEt43koeVf9xCM/x7jWYyBdt
UM1N37kJ1n9Ipvnp1LlMiFNpFXGRhMVB2AERn0TNmIDZ2F24kPVpE9sH4TzxMwHOwLYIKqCQ2EnN
YVQkahhG13WuRucxsCgkVFTaeMtlDz2XseBNi8gS5PrForYN3Ot8UF4DtEy7vakgdXHbp7SE/TS2
Eu4im630SRDsaZyKXOux7AQLnke4qVBdg4oe0QzbhJ+FxAKVqg08oQHpLG+b/5/ibvHDHp2uFXkY
jVlwItAu8z8bsH0RJkO1ZbMrRgxWcmYxh+KGfESUhXGHcotm+zI0/EGsTUQx26NNFnQbuajI571E
y/Kl5V0Xl/rykadNg77/ohuAIRB5+ebKybW2OmZF3Msa1jjWDJrs7Nqtw0fjYDGrUnOXF1N/cHnA
FaXfM34ZJ3ph40oQdX0e4c2Svc8CdNgXkxaQugbv4GJXKAiPC7LVx37WDZUeIU5BOgkQh+Ttti1V
x9cokU5igjPlE/5ODu89uNIVf0+bQNlXcjBXssKzNTo8tM056862hqAv5YA3b8V3u+l3V9p87OLm
t4FYJ0g/QfEoPoz/9ecSr+tQlnt5VsVBYCtwxFQPFZ7P8WUu+4xMhRLIWjAhnQtQKc/B2PEYDUBq
PrBBZsPyqBStUU7bqZ5Gf41KRJDl7V3mBLgXYZa4cRmuam9q2kDMFulmYiogsP5NRbzylVooKl5n
gZnFY9v9YlBt5oySSzPIIfLcviCuM7HeekfbLaC83Ge8mZ7T+KV4gnqUgh5eZ4etKP+NVIihS5QD
zevqdiyyEYAGBCxfRjLrOYc6ZJSKvlttpyenAXoqOuzXgBX+wRyL3vxVI/DcmLdFf/0fB1rPSSVX
1QwRGNn93rK6fy/s31vtFeEW1Ny12az/6pQ4J5gSFtQTBYChAhgUyLbU9L/jaCvsZJqV/slz9diY
ODpxCm7azI+IZgfDl5geeXxJueQucMwNjjdAQMdcp+yWXjeccIG1bnSXF+48XD/2OKJkXuPgYs66
E5jbNor0+D7ke3vChNwZwBQSwDUzdOC7KoTD2jMBwq1qo7u0fQxodeNYrlz1QY2Tzmy7/fUKG0YK
i2mncaLwXZMbaUEC5TXnt63T8JKBIplLEcinAdqulMJxjSX/+GH5RLeNs50HL0Nvi57P+SjULuHo
MdPn6FjWDmCq4f5eLPEb9PM0sIQtgwVbuyFswSVssdRwBfKLf/P20Cm7iEAUnRn/iGWpZFxqXzVP
gMYjP90E9hMvEQQDXjmWAy41/NATGvqG+J3gnqMgMw2TajOL1eUpaDs74mfddRyzfqPoCjbNZGTP
alYSX66QDqbiDGdl9pD9BbarHBQ9wLswR7vnEPfgDIXFxkmMRVlujhXDPlTDQalTr4Y8Apjieemj
mGvPa8vYf7xuVU5a1LjDMpK7rFhz6EN6WO591LP1x5uoMteHpqoAwtHf7czTMMNXVFdaP396eK+R
VzCJ3RBYq2BSoMZrVPnrTeHQ4XSWeIfUBL3KVmmZxWL15UZliuWrxvMTtZ0/1U6894wZ87tlwzmH
QLsLRyp/zTVcFUb7ROQ+TLi4gSoGCQzfm5uSG0eocBTJY6q89PsQaFC54hUYbgpwWhmh4mT6roD+
5XCCS4+DyHgLHn6IxKUXkil4KW3CeQkas2Oe9wJDKRj8t86x8I+LQ0pKcLv4be3+dnknoWlBW9dX
9aOq/O1yyaIZg3rpE4OZlIk0597SUXmyxNEEPOPoR7xJhKMg1+pqhlqrGrEmsKDi+vqU1SDCXi6Z
dil8nkn62pyZzlopcPkEESSwhBCgYWCoen/9We0mZthPWHFwJYisvwGYdkeOzu+FLofwCXzgpTub
Osg8tR1cxxupDlm87yHH85fw7+UTtaZHYM9lwYNnhIaDGWIYHlflfSXADAm9VC7BpTicnfHWjNeA
VK0HsUvUqif2uF+mXjsgL9aCzWMp5Y/AaVOElDfOnYprKBzsyP+b4XQL2IFLWaHCZ/qrDmZ22o1e
DHVP1/aUHnCIPSQGb4Fzv4SVTPYvnPC4PE3eHqojVlROcq/CPkwp7sQBH+E8t1hvPa2tO2YnQPWF
R3x3ozPHwALVqmz6EY1LnyEFN9ozW1GLT+Ti/nNRCgpOo7gptGn/qC94jTY/fBkCrsFfEGf5XoQh
iQDtoTV/hFs00X26TVUmkYNvXmxZVMJ4MHLNWi/by+GrK5rpduwdlXscG/+SInV4oTHhFpFm8Ulu
/n7hRw9Gujr9YIVYUespKrvSVhd4dGW54mCMUQHUc5bkrOIed75VnPev7MHlsIUZYAubw0te9jwN
q0IJMWtzEIxXTSk6ta5WyQOU4PHjNB4CtrKMtUMZw+eeV38P4PR4BElQct5lU+FZAOgFT2tniO3Y
3pxlNPH4Hw9hWVcZMPVx6od6qTvkfL/Trs3yeKnGAP6nn1f6hR4ycoRcP0Qmca5z82SaR9PgKwdh
X/bbCWeiaSe/xOCH5o36lLEsxgJOnU3H3TvE4WvYvH0I8nCdqKPBo993YfN3MsZKlLYen1T/QvwV
61TKCAYZb4EQ1OHc3NGCdnwOTVantNJ5rW03VwP+8mG0ifq/RQ4DLt9OVhFsBwLPsYmTktJ+sPTN
1L/F9gu7GJoaoQ25wZ+4h4SbXFCOxMmxtY4I8lhVlKKduKuzWjUzMX6JW91k7T1GrfxX2MyyPLBY
2sRHjIQ1JT+r2yhU1LmZ1Pkic5ntESe5BwePt6x1PJuTWf+r+vvCH0jHL36GAIb4XdSjnF1o43rm
fUdBLOYd+ZmO+xkcRlHa8YU3YvFiDqQ+YZtsXH9vPsN5pOv3xDkT/AiszvJctfVQ/sCr9a7QPIAh
Ekh/zmQe9wKOG1dt8srXbuYQXeR8ujSiDkoylGeWGOjOMG8bb4xRoLOGMREpI/kmup0tOvzpgSlU
wXmRfGp4f9t+bdT35zviQ5Vsv3Z1JizUyO1VPrydwobR0eDAxorZ4zYcxqZ3hGMqqFZxJYGUjDC4
dctSF/zNl0cKb6PuPnuj6lvvqqgSiCtj4YyKCLpmA7+BHVIpTFe5fl/S7AzD3gc9dB4u9fpSciEa
meTgFVL34dW09LZar1/vJljQhRhIgFSiviJOosvFvbTRtcRzm9S/qN/VYR5DUheLwQY57j8fA8iD
Iy4eWZ6Rpt1hI3wP7e9mGu0gnzESZtSPJOBZvv+fq6GDFRQ/w43r2i53bx3vQ7S4I5vG7NEMq2TR
bET3xtLhVhNItwoZ18F6CeZIeztOHVwzoHqZ6Bgn50RQFJ9OCwwCCZFd63c4/eUB8H4Fcx+yMV1q
z6qCjwoiL3VSI3gMpHh86g9x6cwjJ1aytyBNFphEj1QYb457yPHoAii9+g/egBlEIPsvlwrA49I/
oSHdopBqJy/M4TdCmkDc2rpTctnFBCoEz9CXKjdAeAuNVVR4lFmMeJ1wYwopgYOjd65XpCg27Aaq
TYWCPYYMXdLbMCTa9miNw7rViyTMOcNjHgjMcXW3t/My1wWBbwSQYtRNRmviNtWfjfqH0b5Q8k/d
EQTaH2quT016CWN0Ir8LaY0o18IZCQENQMDmVwMLbKNHC8H0ZzEISLJGd1P25+60x7tW6bfKcYC6
zXYOESHRSSJoVY6pZBYaDcnEOPM1v7hVF46nl/1UUyDuYwGzt7H4Cc5GW/24
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mul16x16_signed_mult_gen_v12_0_13 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    ZERO_DETECT : out STD_LOGIC_VECTOR ( 1 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 );
    PCASC : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of mul16x16_signed_mult_gen_v12_0_13 : entity is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of mul16x16_signed_mult_gen_v12_0_13 : entity is 16;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of mul16x16_signed_mult_gen_v12_0_13 : entity is 0;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of mul16x16_signed_mult_gen_v12_0_13 : entity is "10000001";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of mul16x16_signed_mult_gen_v12_0_13 : entity is 16;
  attribute C_CCM_IMP : integer;
  attribute C_CCM_IMP of mul16x16_signed_mult_gen_v12_0_13 : entity is 0;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of mul16x16_signed_mult_gen_v12_0_13 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of mul16x16_signed_mult_gen_v12_0_13 : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of mul16x16_signed_mult_gen_v12_0_13 : entity is 0;
  attribute C_HAS_ZERO_DETECT : integer;
  attribute C_HAS_ZERO_DETECT of mul16x16_signed_mult_gen_v12_0_13 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of mul16x16_signed_mult_gen_v12_0_13 : entity is 1;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of mul16x16_signed_mult_gen_v12_0_13 : entity is 0;
  attribute C_MULT_TYPE : integer;
  attribute C_MULT_TYPE of mul16x16_signed_mult_gen_v12_0_13 : entity is 1;
  attribute C_OPTIMIZE_GOAL : integer;
  attribute C_OPTIMIZE_GOAL of mul16x16_signed_mult_gen_v12_0_13 : entity is 1;
  attribute C_OUT_HIGH : integer;
  attribute C_OUT_HIGH of mul16x16_signed_mult_gen_v12_0_13 : entity is 31;
  attribute C_OUT_LOW : integer;
  attribute C_OUT_LOW of mul16x16_signed_mult_gen_v12_0_13 : entity is 0;
  attribute C_ROUND_OUTPUT : integer;
  attribute C_ROUND_OUTPUT of mul16x16_signed_mult_gen_v12_0_13 : entity is 0;
  attribute C_ROUND_PT : integer;
  attribute C_ROUND_PT of mul16x16_signed_mult_gen_v12_0_13 : entity is 0;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of mul16x16_signed_mult_gen_v12_0_13 : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of mul16x16_signed_mult_gen_v12_0_13 : entity is "virtex7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mul16x16_signed_mult_gen_v12_0_13 : entity is "yes";
end mul16x16_signed_mult_gen_v12_0_13;

architecture STRUCTURE of mul16x16_signed_mult_gen_v12_0_13 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_i_mult_PCASC_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_i_mult_ZERO_DETECT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_A_TYPE of i_mult : label is 0;
  attribute C_A_WIDTH of i_mult : label is 16;
  attribute C_B_TYPE of i_mult : label is 0;
  attribute C_B_VALUE of i_mult : label is "10000001";
  attribute C_B_WIDTH of i_mult : label is 16;
  attribute C_CCM_IMP of i_mult : label is 0;
  attribute C_CE_OVERRIDES_SCLR of i_mult : label is 0;
  attribute C_HAS_CE of i_mult : label is 0;
  attribute C_HAS_SCLR of i_mult : label is 0;
  attribute C_HAS_ZERO_DETECT of i_mult : label is 0;
  attribute C_LATENCY of i_mult : label is 1;
  attribute C_MODEL_TYPE of i_mult : label is 0;
  attribute C_MULT_TYPE of i_mult : label is 1;
  attribute C_OPTIMIZE_GOAL of i_mult : label is 1;
  attribute C_OUT_HIGH of i_mult : label is 31;
  attribute C_OUT_LOW of i_mult : label is 0;
  attribute C_ROUND_OUTPUT of i_mult : label is 0;
  attribute C_ROUND_PT of i_mult : label is 0;
  attribute C_VERBOSITY of i_mult : label is 0;
  attribute C_XDEVICEFAMILY of i_mult : label is "virtex7";
  attribute downgradeipidentifiedwarnings of i_mult : label is "yes";
begin
  PCASC(47) <= \<const0>\;
  PCASC(46) <= \<const0>\;
  PCASC(45) <= \<const0>\;
  PCASC(44) <= \<const0>\;
  PCASC(43) <= \<const0>\;
  PCASC(42) <= \<const0>\;
  PCASC(41) <= \<const0>\;
  PCASC(40) <= \<const0>\;
  PCASC(39) <= \<const0>\;
  PCASC(38) <= \<const0>\;
  PCASC(37) <= \<const0>\;
  PCASC(36) <= \<const0>\;
  PCASC(35) <= \<const0>\;
  PCASC(34) <= \<const0>\;
  PCASC(33) <= \<const0>\;
  PCASC(32) <= \<const0>\;
  PCASC(31) <= \<const0>\;
  PCASC(30) <= \<const0>\;
  PCASC(29) <= \<const0>\;
  PCASC(28) <= \<const0>\;
  PCASC(27) <= \<const0>\;
  PCASC(26) <= \<const0>\;
  PCASC(25) <= \<const0>\;
  PCASC(24) <= \<const0>\;
  PCASC(23) <= \<const0>\;
  PCASC(22) <= \<const0>\;
  PCASC(21) <= \<const0>\;
  PCASC(20) <= \<const0>\;
  PCASC(19) <= \<const0>\;
  PCASC(18) <= \<const0>\;
  PCASC(17) <= \<const0>\;
  PCASC(16) <= \<const0>\;
  PCASC(15) <= \<const0>\;
  PCASC(14) <= \<const0>\;
  PCASC(13) <= \<const0>\;
  PCASC(12) <= \<const0>\;
  PCASC(11) <= \<const0>\;
  PCASC(10) <= \<const0>\;
  PCASC(9) <= \<const0>\;
  PCASC(8) <= \<const0>\;
  PCASC(7) <= \<const0>\;
  PCASC(6) <= \<const0>\;
  PCASC(5) <= \<const0>\;
  PCASC(4) <= \<const0>\;
  PCASC(3) <= \<const0>\;
  PCASC(2) <= \<const0>\;
  PCASC(1) <= \<const0>\;
  PCASC(0) <= \<const0>\;
  ZERO_DETECT(1) <= \<const0>\;
  ZERO_DETECT(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
i_mult: entity work.mul16x16_signed_mult_gen_v12_0_13_viv
     port map (
      A(15 downto 0) => A(15 downto 0),
      B(15 downto 0) => B(15 downto 0),
      CE => '0',
      CLK => CLK,
      P(31 downto 0) => P(31 downto 0),
      PCASC(47 downto 0) => NLW_i_mult_PCASC_UNCONNECTED(47 downto 0),
      SCLR => '0',
      ZERO_DETECT(1 downto 0) => NLW_i_mult_ZERO_DETECT_UNCONNECTED(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mul16x16_signed is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mul16x16_signed : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mul16x16_signed : entity is "mul16_signed,mult_gen_v12_0_13,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mul16x16_signed : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of mul16x16_signed : entity is "mult_gen_v12_0_13,Vivado 2017.4.1";
end mul16x16_signed;

architecture STRUCTURE of mul16x16_signed is
  signal NLW_U0_PCASC_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_U0_ZERO_DETECT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of U0 : label is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of U0 : label is 16;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of U0 : label is 0;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of U0 : label is "10000001";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of U0 : label is 16;
  attribute C_CCM_IMP : integer;
  attribute C_CCM_IMP of U0 : label is 0;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of U0 : label is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of U0 : label is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of U0 : label is 0;
  attribute C_HAS_ZERO_DETECT : integer;
  attribute C_HAS_ZERO_DETECT of U0 : label is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of U0 : label is 1;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of U0 : label is 0;
  attribute C_MULT_TYPE : integer;
  attribute C_MULT_TYPE of U0 : label is 1;
  attribute C_OPTIMIZE_GOAL : integer;
  attribute C_OPTIMIZE_GOAL of U0 : label is 1;
  attribute C_OUT_HIGH : integer;
  attribute C_OUT_HIGH of U0 : label is 31;
  attribute C_OUT_LOW : integer;
  attribute C_OUT_LOW of U0 : label is 0;
  attribute C_ROUND_OUTPUT : integer;
  attribute C_ROUND_OUTPUT of U0 : label is 0;
  attribute C_ROUND_PT : integer;
  attribute C_ROUND_PT of U0 : label is 0;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of U0 : label is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "virtex7";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 clk_intf CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000";
  attribute x_interface_info of A : signal is "xilinx.com:signal:data:1.0 a_intf DATA";
  attribute x_interface_parameter of A : signal is "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef";
  attribute x_interface_info of B : signal is "xilinx.com:signal:data:1.0 b_intf DATA";
  attribute x_interface_parameter of B : signal is "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef";
  attribute x_interface_info of P : signal is "xilinx.com:signal:data:1.0 p_intf DATA";
  attribute x_interface_parameter of P : signal is "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef";
begin
U0: entity work.mul16x16_signed_mult_gen_v12_0_13
     port map (
      A(15 downto 0) => A(15 downto 0),
      B(15 downto 0) => B(15 downto 0),
      CE => '1',
      CLK => CLK,
      P(31 downto 0) => P(31 downto 0),
      PCASC(47 downto 0) => NLW_U0_PCASC_UNCONNECTED(47 downto 0),
      SCLR => '0',
      ZERO_DETECT(1 downto 0) => NLW_U0_ZERO_DETECT_UNCONNECTED(1 downto 0)
    );
end STRUCTURE;
