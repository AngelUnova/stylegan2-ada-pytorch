FROM pytorch/pytorch:1.7.0-cuda11.0-cudnn8-devel

RUN groupadd --gid 1000 meguca
RUN useradd --create-home --uid 1000 --gid 1000 akemihomura
RUN pip install scipy click requests tqdm pyspng ninja imageio-ffmpeg==0.4.3
RUN pip install pillow --upgrade

WORKDIR /home/akemihomura/
