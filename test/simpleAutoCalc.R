#simpleAutotCalculator
simpleAutoCalc<-function(P=P,r=r,t=t,payment=payment){
  #P is principal
  #r yearly rate
  #t total time 
  
  numberOfMonths<-seq(1,t*12)
  m=t*12
  F[1]=P
  payment<-P*(r/12)/(1-(1+r/12)^(-m))
  print(payment)
    for(i in seq_along(numberOfMonths)) {
      
      if ( i > 1) F[i]<-F[i-1]-payment
#<-F[i]-payment
        
      value<-paste(i,"     ",F[i])
      print(value)
    }
      return (F)
}