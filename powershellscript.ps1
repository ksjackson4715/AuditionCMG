#needs to pull from log file and create an array of data from log file

$temp1 = @(72.4, 76.0, 79.1, 75.6, 71.2, 71.4, 69.2, 65.2, 62.8, 61.4, 64.0, 67.5, 69.4)
$temp1.count   

#calculate mean, variance, and standard deviation
$mean = $temp1 | Measure-Object -Average 
$mean

($sqdf | Measure-Object).count - 2
write-output " Variance" $sqdf

$stddev = [math]::Sqrt(($sqdf / ($mean.count -1)))
write-output "StandardDeviation" $stddev

#need to insert the pull for stddev and then create boolean that states within standard deviation
#if true -- does it fall within x of mean?
# within x -- output Ultra precise
# within y -- output very precise
#create as loop to do each line/object in array

foreach ($i in $temp1) {
    if ($temp1 -le 67.630 -And $temp1 -ge 69.630) {
        write-output "Ultra-Precise"
    elseif ($temp1 -l 67.630 -And $temp1 -g 69.630) {
        write-output "Very Precise"
    else () {
        write-output "Precise"
    }
    }
    }
}


$temp2 = @(69.5, 70.1, 71.3, 71.5, 69.8)
$temp2.count   

$mean = $temp2 | Measure-Object -Average 
$mean

($sqdf | Measure-Object).count - 2
write-output " Variance" $sqdf

$stddev = [math]::Sqrt(($sqdf / ($mean.count -1)))
write-output "StandardDeviation" $stddev

foreach ($i in $temp2) {
    if ($temp2 -le x -And $temp2 -ge x) {
        write-output "Ultra-Precise"
    elseif ($temp2 -l x -And $temp2 -g x) {
        write-output "Very Precise"
    else () {
        write-output "Precise"
    }
    }
    }
}


$hum1 = @(69.5, 70.1, 71.3, 71.5, 69.8)
$hum1.count   

$mean = $hum1 | Measure-Object -Average 
$mean

($sqdf | Measure-Object).count - 2
$sqdf

$stddev = [math]::Sqrt(($sqdf / ($mean.count -1)))
$stddev

foreach ($i in $hum1) {
    if ($hum1 -le x -And $hum1 -ge x) {
        write-output "Keep"
    }
    else {
        write-output "Discard"
    }
}


$temp2 = @(69.5, 70.1, 71.3, 71.5, 69.8)
$temp2.count   

$mean = $temp2 | Measure-Object -Average 
$mean

($sqdf | Measure-Object).count - 2
$sqdf

$stddev = [math]::Sqrt(($sqdf / ($mean.count -1)))
$stddev

foreach ($i in $temp2) {
    if ($temp2 -le x -And $temp2 -ge x) {
        write-output "Keep"
    }
    else {
        write-output "Discard"
    }
}
