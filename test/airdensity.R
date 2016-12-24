#this function computes airdensity for dry air based on Temparature (K), Pressure (mb) 
#using ideal gas law 
#
airdensity<-function(temp=temp, pres=pres) {
#using hydrostatic equation we can approximate the thicknes of the
#atmosphere as m
  #temp as K and pressure as mb
  Rd=287.04 # Gas constant for dry air m^2/s^2 K
  pres<-pres*100    #converts to pascal

  airdensity<-pres/(Rd*temp)
  
}