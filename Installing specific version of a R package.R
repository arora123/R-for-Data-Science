

# Installing from the source ----------------------------------------------


PackageUrl <- "http://cran.r-project.org/src/contrib/Archive/ggplot2/ggplot2_0.9.1.tar.gz"
install.packages(PackageUrl, repos=NULL, type="source")

# Note:
#   .	In some cases, you need to install Rtools so that 
# you can compile the archived packages locally


# From package archive file -----------------------------------------------


# Another option is you download archived version from in a zip file. 
# And install package from that package archive file.


# Using remotes package ---------------------------------------------------

require(remotes)
install_version("ggplot2", version = "0.9.1", repos = "http://cran.us.r-project.org")

