#this function computes thickness based on average Temparature of the
#layer and pressure of two levels

hypsometric<-function(tempL=tempL,tempH=tempH, presL=presL,presH=presH) {
#using hydrostatic equation we can approximate the thicknes of the
#atmosphere
  #temp as K and pressure as mb
  Rd=287.04 # Gas constant for dry air m^2/s^2 K
  
  g=9.81    #gravitational constant 9.81 m/s^2
  temp=0.5*(tempL+tempH)  #average Temp for the Layer
  airDens<-0.5*(airdensity(tempL,presL)+airdensity(tempH,presH))
  virTemp<-temp*(1+0.61*airDens)
  a<-g/(Rd*virTemp)
  thickness<-log(presL/presH)/a
  return(thickness)
  
}