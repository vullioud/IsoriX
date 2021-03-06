% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/IsoriX-dataset.R
\docType{data}
\name{ElevRasterDE}
\alias{ElevRasterDE}
\title{The raster of elevation for Germany}
\format{
A \var{RasterLayer}
}
\source{
\url{https://topotools.cr.usgs.gov/gmted_viewer/viewer.htm}
}
\description{
This raster contains the elevation of the surface of Germany (meters above sea
level) with a resolution of approximately 30 square-km.
}
\details{
This raster contains elevation data of Germany in a highly aggregated form
corresponding to a resolution of approximately one elevation value per 50
square-km. This is only for the purpose of having a small and easy-to-handle
file to practice, but it should not be used to perform real assignments!

In the example below, we show how we generated this small raster from a
large original \var{DEM} (digital elevation model) of the entire world. The original raster has
a resolution of approximately one elevation value per square-km (cell size
of 30 arcseconds, i.e. 0.0083 decimal degrees). Although working on large
rasters is technically problematic (memory and CPU greedy), we highly
recommend to rely on high-resolution rasters with small to moderate
aggregation levels in order to perform reliable assignment analyses. Indeed,
large aggregation of raster cells can bias assignments due to the
transformation of all elevations into a single value per aggregated raster
cell.

We downloaded "Global Multi-resolution Terrain Elevation Data 2010" from:
\cr \url{https://topotools.cr.usgs.gov/gmted_viewer/viewer.htm} \cr and converted it
into a \var{tif} file. Because the original file is very large, we directly
provide the url link of the \var{tif} file in the example below.
}
\examples{

## The following example require to download
## a large elevation raster with the function getelev()
## and will therefore not run unless you uncomment it

#### Creating the object ElevRasterDE
#
### Download the tif file (ca. 700 Mb)
### (see ?getelev for details on how to get the tif file)
#getelev()
#
### Convert the tif into R raster format
#  ElevationRasterBig <- raster("gmted2010_30mn.tif")
#  
#  ## Create the highly agregated elevation raster
#  ElevRasterDE <- prepraster(ElevationRasterBig,
#                             aggregation_factor = 10,
#                             manual_crop = c(5.5, 15.5, 47, 55.5))
#                           
#  ## Plot the elevation
#  levelplot(ElevRasterDE, margin = FALSE, par.settings=RdBuTheme()) +
#    layer(sp.polygons(CountryBorders, col = "white"))
#  
#  ## Compute crudely the resolution:
#  median(values(area(ElevRasterDE)))  ## approximative size of cells in km2

}
\seealso{
\code{\link{prepraster}} to crop and/or aggregate this raster
}
\keyword{datasets}
