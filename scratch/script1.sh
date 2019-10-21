rm ../Tput_VhtMcs0.csv
rm ../Tput_VhtMcs4.csv
rm ../Tput_VhtMcs8.csv

channelBssA=36
channelBssB=40
channelBssC=38
channelBssD=36
channelBssE=40
channelBssF=38
channelBssG=38

primaryChannelBssA=36
primaryChannelBssB=36
primaryChannelBssC=36
primaryChannelBssD=36
primaryChannelBssE=36
primaryChannelBssF=36
primaryChannelBssG=36

uplinkA=100
uplinkB=100
uplinkC=100
uplinkD=100
uplinkE=100
uplinkF=100
uplinkG=100
downlinkA=0
downlinkB=0
downlinkC=0
downlinkD=0
downlinkE=0
downlinkF=0
downlinkG=0

payloadSize=1472
simulationTime=1


ccaEdThresholdPrimary=-62
ccaEdThresholdSecondary=-62
useDynamicChannelBonding=true
interBssDistance=10
distance=10;
n=4



../waf



for ccaEdThresholdSecondary in -72;
do
for RngRun in 1;
do

for mcs in VhtMcs0;
do
../waf --run "channel-bonding --simulationTime=$simulationTime --RngRun=$RngRun --uplinkA=$uplinkA --uplinkB=$uplinkB --uplinkC=$uplinkC --uplinkD=$uplinkD --uplinkE=$uplinkE --uplinkF=$uplinkF --uplinkG=$uplinkG --downlinkA=$downlinkA --downlinkB=$downlinkB --downlinkC=$downlinkC --downlinkD=$downlinkD --downlinkE=$downlinkE --downlinkF=$downlinkF --downlinkG=$downlinkG --useDynamicChannelBonding=$useDynamicChannelBonding --mcs=$mcs --n=$n --interBssDistance=$interBssDistance --distance=$distance --ccaEdThresholdPrimaryBssA=$ccaEdThresholdPrimary --ccaEdThresholdPrimaryBssB=$ccaEdThresholdPrimary --ccaEdThresholdPrimaryBssC=$ccaEdThresholdPrimary --ccaEdThresholdPrimaryBssD=$ccaEdThresholdPrimary --ccaEdThresholdPrimaryBssE=$ccaEdThresholdPrimary --ccaEdThresholdPrimaryBssF=$ccaEdThresholdPrimary --ccaEdThresholdPrimaryBssG=$ccaEdThresholdPrimary --ccaEdThresholdSecondaryBssA=$ccaEdThresholdSecondary --ccaEdThresholdSecondaryBssB=$ccaEdThresholdSecondary --ccaEdThresholdSecondaryBssC=$ccaEdThresholdSecondary --ccaEdThresholdSecondaryBssD=$ccaEdThresholdSecondary --ccaEdThresholdSecondaryBssE=$ccaEdThresholdSecondary --ccaEdThresholdSecondaryBssF=$ccaEdThresholdSecondary --ccaEdThresholdSecondaryBssG=$ccaEdThresholdSecondary  --channelBssA=$channelBssA --channelBssB=$channelBssB --channelBssC=$channelBssC --channelBssD=$channelBssD --channelBssE=$channelBssE --channelBssF=$channelBssF --channelBssG=$channelBssG --primaryChannelBssA=$primaryChannelBssA --primaryChannelBssB=$primaryChannelBssB --primaryChannelBssC=$primaryChannelBssC --primaryChannelBssD=$primaryChannelBssD --primaryChannelBssE=$primaryChannelBssE --primaryChannelBssF=$primaryChannelBssF --primaryChannelBssG=$primaryChannelBssG" &
done
wait
done
mv ../Tput_VhtMcs0.csv ../Tput_VhtMcs0_${ccaEdThresholdSecondary}.csv 
mv ../Tput_VhtMcs4.csv ../Tput_VhtMcs4_${ccaEdThresholdSecondary}.csv 
mv ../Tput_VhtMcs8.csv ../Tput_VhtMcs8_${ccaEdThresholdSecondary}.csv 
done


