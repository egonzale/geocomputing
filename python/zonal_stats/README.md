# Zonal statistics using multiprocessing and virtual raster

In this example zonal statistics are calculated using a virtual raster and Python `rasterstats` library. The idea is that we have multiple zones split across several raster files (and some zones also covering more than one raster) and we want to compute zonal statistics for these zones. The way we handle the multiple raster files in this example is to construct a single virtual raster  after which we don't have to worry about which polygon covers which raster. Here the virtual raster for 10M DEM available in Taito is used directly. The zones are in a Shape file, named `zones.shp`.

Two a little bit different examples are given here:

`zonal_stats_serial.py` is the more basic version, here the work is done on one core. The script uses geoconda module of Taito with Python 3.6.  For writing the output file geopandas is used.

`zonal_stats_serial.py` is the more advanced version, here the work is done on 11 cores. The script uses geo-env module of Taito with Python 2.7. With minor changes it is possible to make it suitable Python3. For writing the output file `fiona` is used. To make processing multiple polygons faster we split the task into ten parts and process them in parallel using `multiprocessing` library. 

Additionally a batch job scripts are provided, for running this script on CSC's Taito supercluster. For submitting the job to Taito:
`sbatch batch_job_XX.sh`
