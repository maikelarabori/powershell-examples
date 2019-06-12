# First, clear the console
Clear-Host

$LIST_OF_PROCESSES = 1
$LIST_OF_SERVICES = 2
$SEND_A_PING = 3
$DOUBLE_A_NUMBER = 4

$option = Read-Host "Choose an option:
  1. See a list of processes on the system
  2. See a list of services on the system
  3. Send a ping
  4. Double a number

  #> "

if ($option -eq $LIST_OF_PROCESSES) {
  Get-Process
} elseif ($option -eq $LIST_OF_SERVICES) {
  Get-Service
} elseif ($option -eq $SEND_A_PING) {
  $inputHost = Read-Host "IP address or FQDN"
  Test-Connection -ComputerName $inputHost -Count 2
} elseif ($option -eq $DOUBLE_A_NUMBER) {
  [int]$inputNumber = Read-Host "Number"
  $doubleValue = $inputNumber * 2
  Write-Host $doubleValue
} else {
  Write-Host "Invalid option: $option"
}
