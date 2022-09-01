# instructions
apt-get install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6

wget https://repo.anaconda.com/archive/Anaconda3-2022.05-Linux-x86_64.sh
bash Anaconda3-2022.05-Linux-x86_64.sh -b -p

~/anaconda3/condabin/conda init bash

# conda init bash

# export PATH="$HOME/anaconda3/condabin:$PATH"
source ~/.bashrc

mkdir -p models/ldm/stable-diffusion-v1/
mkdir -p outputs/extras-samples
mkdir -p outputs/img2img-samples/samples
mkdir -p outputs/txt2img-samples/samples

# find if I can answer y automatically, perhaps with echo y |
conda install pytorch torchvision torchaudio cpuonly -c pytorch
conda env create -f environment-cpuonly.yaml
conda activate ldm

pip install pynvml gradio keras-unet fairseq basicsr facexlib
pip install -e git+https://github.com/CompVis/taming-transformers.git@master#egg=taming-transformers
pip install -e git+https://github.com/openai/CLIP.git@main#egg=clip
pip install -e git+https://github.com/TencentARC/GFPGAN#egg=GFPGAN
pip install -e git+https://github.com/xinntao/Real-ESRGAN#egg=realesrgan
pip install -e git+https://github.com/hlky/k-diffusion-sd#egg=k_diffusion
