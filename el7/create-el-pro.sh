B="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
livecd-creator --verbose \
--config=$B/el7-pro.ks \
--title='Enterprise Linux v7.1' \
--product='EL Super 7.1' \
--fslabel=EL-Super-7 \
--cache $B/cache --tmpdir=$B/tmp 
 

