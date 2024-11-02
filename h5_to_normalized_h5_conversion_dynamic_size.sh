#!/bin/bash
#SBATCH --account=m4392
#SBATCH -N 1
#SBATCH -C cpu
#SBATCH -q regular
#SBATCH -J slurm_h5_h5
#SBATCH -t 20:10:00
#SBATCH --output=slurm_h5_to_normalized_h5_signal_sample_5_8_%J.out
#OpenMP settings:
export OMP_NUM_THREADS=1
export OMP_PLACES=threads
export OMP_PROC_BIND=spread

#run the application:
# srun -n 1 -c 32 --cpu_bind=cores python h5_to_normalized_h5_conversion_dynamic_size.py --input_file=/pscratch/sd/b/bbbam/IMG_aToTauTau_Hadronic_tauDR0p4_m1p2To17p2_dataset_2_unbaised_v2_original_combined_hd5/IMG_aToTauTau_Hadronic_tauDR0p4_m1p2To17p2_dataset_2_unbaised_v2_original_combined_train.h5 --output_data_path=/global/cfs/cdirs/m4392/bbbam/IMG_aToTauTau_Hadronic_tauDR0p4_m1p2To17p2_dataset_2_unbaised_v2_original_combined_normalized_hd5 &
# srun -n 1 -c 32 --cpu_bind=cores python h5_to_normalized_h5_conversion_dynamic_size.py --input_file=/pscratch/sd/b/bbbam/IMG_aToTauTau_Hadronic_tauDR0p4_m1p2To17p2_dataset_2_unbaised_v2_original_combined_hd5/IMG_aToTauTau_Hadronic_tauDR0p4_m1p2To17p2_dataset_2_unbaised_v2_original_combined_valid.h5 --output_data_path=/global/cfs/cdirs/m4392/bbbam/IMG_aToTauTau_Hadronic_tauDR0p4_m1p2To17p2_dataset_2_unbaised_v2_original_combined_normalized_hd5 &
# srun -n 1 -c 32 --cpu_bind=cores python h5_to_normalized_h5_conversion_dynamic_size.py --input_file=/pscratch/sd/b/bbbam/IMG_v3_signal_with_trigger_hd5/IMG_H_AATo4Tau_M12_signal_with_trgger.h5 --output_data_path=/global/cfs/cdirs/m4392/bbbam/IMG_v3_signal_with_trigger_normalized_h5 &
# srun -n 1 -c 32 --cpu_bind=cores python h5_to_normalized_h5_conversion_dynamic_size.py --input_file=/pscratch/sd/b/bbbam/IMG_v3_signal_with_trigger_hd5/IMG_H_AATo4Tau_M3p7_signal_with_trgger.h5 --output_data_path=/global/cfs/cdirs/m4392/bbbam/IMG_v3_signal_with_trigger_normalized_h5 &
srun -n 1 -c 32 --cpu_bind=cores python h5_to_normalized_h5_conversion_dynamic_size.py --input_file=/pscratch/sd/b/bbbam/IMG_v3_signal_with_trigger_hd5/IMG_H_AATo4Tau_M5_signal_with_trgger.h5 --output_data_path=/global/cfs/cdirs/m4392/bbbam/IMG_v3_signal_with_trigger_normalized_h5 &
srun -n 1 -c 32 --cpu_bind=cores python h5_to_normalized_h5_conversion_dynamic_size.py --input_file=/pscratch/sd/b/bbbam/IMG_v3_signal_with_trigger_hd5/IMG_H_AATo4Tau_M8_signal_with_trgger.h5 --output_data_path=/global/cfs/cdirs/m4392/bbbam/IMG_v3_signal_with_trigger_normalized_h5 &
wait
