#!/bin/bash
mkdir /scratch/lffernan/ && cd /scratch/lffernan/
cp /home/lffernan/tensorflow-2.6.0-gpu-py3.sif /scratch/lffernan/
singularity shell --nv tensorflow-2.6.0-gpu-py3.sif
cp /home/lffernan/.mpose/ /scratch/lffernan/ -r
export HOME=/scratch/lffernan/ && export PATH=$PATH:/scratch/lffernan/.local/bin
echo "############ copy AcT to this dir and cd AcT && pip install -r requirements.txt ############"
<<<<<<< HEAD
nohup sh -c "python -u main.py && cp -r /scratch/lffernan/ikea_asm_mpose/* /home/lffernan/output/ -r" 2>&1 nohup.out &
nohup sh -c "python -u main.py && cp -r /scratch/lffernan/ikea_asm_mpose/* /home/lffernan/output_TL_smoted_mp_micro_trials/ -r" 2>&1 nohup.out &
nohup sh -c "python -u main.py && cp -r /scratch/lffernan/ikea_asm_mpose/* /home/lffernan/output_TL_original_mp_micro_trials/ -r" 2>&1 nohup.out &
nohup sh -c "python -u main.py && cp -r /scratch/lffernan/small_smoted_mp/* /home/lffernan/output_TL_smoted_mp_small_trials/ -r" 2>&1 nohup.out &
nohup sh -c "python -u main.py && cp -r /scratch/lffernan/small_original_mp/* /home/lffernan/output_TL_original_mp_small_trials/ -r" 2>&1 nohup.out &
=======
nohup sh -c "python -u main.py && cp ./* /home/lffernan/output/ -r" 2>&1 output.txt &
watch -n2 "clear && tail -50 nohup.out"
# runs in background, still doesn't create nohup.out
nohup command > nohup.out 2>&1 &  
>>>>>>> 77b809466e640f86dae74d6d4affd3d2c1875adf
