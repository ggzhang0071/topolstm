TOP=`pwd`/..
timestamp=`date +%Y%m%d%H%M%S`
cl=`git rev-parse HEAD|cut -c1-7`

cd $TOP

rm -fr *.log
python code/tprnn.py  --data datasets/twitter \
    --keep_ratio 1.0 \
    --dim 512 2>&1 |tee twitter_${cl}_$timestamp.log

exit
python code/tprnn.py  --data datasets/digg \
    --keep_ratio 1.0 \
    --dim 512 2>&1 |tee digg_${cl}_$timestamp.log

python code/tprnn.py  --data datasets/memes \
    --keep_ratio 1.0 \
    --dim 512 2>&1 |tee memes_${cl}_$timestamp.log

