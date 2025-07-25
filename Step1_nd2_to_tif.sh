
cd /Volumes/lsa-kkoutmou/migratedData/Private_Folders/mlruan/Data/Cell_pose/bftools

./bfconvert /Volumes/lsa-kkoutmou/migratedData/Private_Folders/mlruan/Data/EYFP_20241004_red_dye/20250324-IF-DCF/plate2_Mitotracker/dpus7/dpus7.nd2  /Volumes/lsa-kkoutmou/migratedData/Private_Folders/mlruan/Data/EYFP_20241004_red_dye/20250324-IF-DCF/plate2_Mitotracker/dpus7/dpus7-test.tif

#to do a systematic nd2 to tif
find /Volumes/lsa-kkoutmou/migratedData/Private_Folders/mlruan/Data/EYFP_20241004_red_dye/20250723-id1-zn -name "*.nd2" | while read file; do
  out="${file%.nd2}.tif"
  ./bfconvert "$file" "$out"
done

#after copy the whole folder to a different path, i can delete the nd2
find . -type f -name "*.nd2" -exec rm {} +
