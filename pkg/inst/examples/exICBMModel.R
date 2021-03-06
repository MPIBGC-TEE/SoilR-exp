exICBMModel_paper <- function(){
    # This example reproduces the simulations 
    # presented in Table 1 of Andren and Katterer (1997).
    # First, the model is run for different values of the 
    # parameters representing different field experiments. 
    times=seq(0,20,by=0.1)
    Bare=ICBMModel(t=times) #Bare fallow
    pNpS=ICBMModel(t=times, h=0.125, r=1,    c0=c(0.3,4.11),  In=0.19+0.095) #+N +Straw
    mNpS=ICBMModel(t=times, h=0.125, r=1.22, c0=c(0.3, 4.05), In=0.19+0.058) #-N +Straw
    mNmS=ICBMModel(t=times, h=0.125, r=1.17, c0=c(0.3, 3.99), In=0.057) #-N -Straw
    pNmS=ICBMModel(t=times, h=0.125, r=1.07, c0=c(0.3, 4.02), In=0.091) #+N -Straw
    FM=ICBMModel(t=times, h=0.250, r=1.10, c0=c(0.3, 3.99), In=0.19+0.082) #Manure
    SwS=ICBMModel(t=times, h=0.340, r=0.97, c0=c(0.3, 4.14), In=0.19+0.106) #Sewage Sludge
    SS=ICBMModel(t=times, h=0.125, r=1.00, c0=c(0.25, 4.16), In=0.2)  #Steady State

    #The amount of carbon for each simulation is recovered with the function getC
    CtBare=getC(Bare)
    CtpNpS=getC(pNpS)
    CtmNpS=getC(mNpS)
    CtmNmS=getC(mNmS)
    CtpNmS=getC(pNmS)
    CtFM=getC(FM)
    CtSwS=getC(SwS)
    CtSS=getC(SS)

    #This plot reproduces Figure 1 in Andren and Katterer (1997)
    plot(times,
      rowSums(CtBare),
      type="l",
      ylim=c(0,8),
      xlim=c(0,20),
      ylab="Topsoil carbon mass (kg m-2)",
      xlab="Time (years)"
    )
    lines(times,rowSums(CtpNpS),lty=2)
    lines(times,rowSums(CtmNpS),lty=3)
    lines(times,rowSums(CtmNmS),lty=4)
    lines(times,rowSums(CtpNmS),lwd=2)
    lines(times,rowSums(CtFM),lty=2,lwd=2)
    lines(times,rowSums(CtSwS),lty=3,lwd=2)
    #lines(times,rowSums(CtSS),lty=4,lwd=2)
    legend("topleft",
      c("Bare fallow",
        "+N +Straw",
        "-N +Straw",
        "-N -Straw",
        "+N -Straw",
        "Manure",
       "Sludge"
      ),
      lty=c(1,2,3,4,1,2,3),
      lwd=c(1,1,1,1,2,2,2),
      bty="n"
    )
}
