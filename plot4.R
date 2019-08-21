## Generating Plot 4
labels <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
columnlines <- c("black","red","blue")
par(mfrow=c(2,2))
with(finalData, {
  plot(Global_active_power~SetTime, type="l", 
       ylab="Global Active Power (kilowatts)", xlab="")
  plot(Voltage~SetTime, type="l", 
       ylab="Voltage (volt)", xlab="")
  plot(Sub_metering_1~SetTime, type="l", 
       ylab="Global Active Power (kilowatts)", xlab="")
  lines(Sub_metering_2~SetTime,col='Red')
  lines(Sub_metering_3~SetTime,col='Blue')
  legend("topright", bty="n", legend=labels, lty=1, col=columnlines)
  plot(Global_reactive_power~SetTime, type="l", 
       ylab="Global Rective Power (kilowatts)",xlab="")
})

## Saving to file
dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()