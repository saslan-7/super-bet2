standard_space_roi $1 premask -b
bet premask bet2_result -e -f 0.05
flirt -in premask -ref /usr/local/fsl/data/standard/avg152T1_brain.nii.gz -out flirt_result -omat flirt_result.mat
mv bet2_result_mesh.vtk bet2_result_mesh.off
betsurf -1 -m -s $1 bet2_result_mesh.off flirt_result.mat final_result
