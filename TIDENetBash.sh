rm -rf dnnweaver2 dnnweaver
git clone https://github.com/hsharma35/dnnweaver2.git
mv dnnweaver2/dnnweaver2 dnnweaver
rm -rf dnnweaver2
mv dnnweaver dnnweaver2
pip install graphviz pandas

python TIDENetHelloWorld.py
