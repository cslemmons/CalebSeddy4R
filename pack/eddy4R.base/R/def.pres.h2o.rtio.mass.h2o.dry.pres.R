##############################################################################################
#' @title Definition function: Calculate water vapor pressure from dry mass fraction and static pressure

#' @author 
#' Stefan Metzger \email{eddy4R.info@gmail.com} \cr
#' Natchaya Pingintha-Durden \email{ndurden@battelleecology.org}

#' @description Calculate water vapor pressure from dry mass fraction and static pressure.

#' @param rtioMassDryH2o Either a vector or an object of class numeric of water dry mass fraction and of the same length as \code{pres}. [kg kg-1]
#' @param pres Either a vector or an object of class numeric of static pressure and of the same length as \code{rtioMassDryH2o}. [Pa]

#' @return Water vapor pressure and of the same length as \code{rtioMassDryH2o} and \code{pres}. [Pa]

#' @references 
#' License: GNU AFFERO GENERAL PUBLIC LICENSE Version 3, 19 November 2007

#' @keywords humidity conversion

#' @examples
#' def.pres.h2o.rtio.mass.h2o.dry.pres(rtioMassDryH2o = 2.144*1e-2, pres = 65000) 
#' def.pres.h2o.rtio.mass.h2o.dry.pres(rtioMassDryH2o = c(2.144*1e-2, 2.617*1e-3, 4.931*1e-4), pres = c(65000, 83000, 110000)) 

#' @seealso Currently none

#' @export

# changelog and author contributions / copyrights
#   Stefan Metzger (2014-11-11)
#     original creation
#   Stefan Metzger (2015-11-28)
#     re-formualtion as function() to allow packaging
#   Natchaya P-Durden (2016-04-08)
#     initail naming convention for eddy4R
#   Natchaya P-Durden (2016-11-27)
#     rename function to def.pres.h2o.rtio.mass.h2o.dry.pres()
#   Natchaya P-Durden (2018-04-03)
#     update @param format
##############################################################################################

def.pres.h2o.rtio.mass.h2o.dry.pres <- function(rtioMassDryH2o, pres)  {
  #calculation
  presH2o <- pres * rtioMassDryH2o / (eddy4R.base::IntlNatu$RtioMolmH2oDry + rtioMassDryH2o)
  
  #return reported object
  return(presH2o)
  
  # end function def.pres.h2o.rtio.mass.h2o.dry.pres()
}
