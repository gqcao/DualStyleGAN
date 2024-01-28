#!/bin/bash

source activate dualstylegan
python style_transfer.py --content ./data/content/guanqun_cao_rz.jpg --style illustration --style_id 136 --weight 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
#python style_transfer_unseen.py --style illustration --weight 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 --wplus
