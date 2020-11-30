
## --------- VERBOSE SETTINGS --------- ##
# Change to define verbose level; 0 is off, 1 is logging all accounts, 2 is logging admin accounts
$Verbose = 1
$VerbosePath = ## ENTER A PATH FOR THE LOGGING
## ------------------------------------ ##

## --------- FUNCTIONS --------- ##
function EnableVerbose 
{
    param ($Account)

    # Defines logging
    $Log = "Logged account lockout for $($Account.Properties[0].Value) on $($Account.Properties[1].Value) at $($Account.TimeCreated.ToShortTimeString()) on $($Account.TimeCreated.ToShortDateString())"
    $Log >> $VerbosePath
    
}
## ----------------------------- ##

### Admin Account Lockout Notifier
## Author: Harrison Cattell
## Date: 13/11/20

## Version: V1.2
## Version log:
# V1: Inital full script development
# V1.1: Add SMTP functionality
# V1.2: Added addition logging level

## Description:
# Script to monitor security event id 4740 which indicates a account lockout and checks the account against a list of monitored users
# and sends email via SMTP

## --------------------------- ##
## Process 0: Get triggered event and AD Admin accounts
# Specify timespan for events
$TimeSpan = -5 # timespan in minutes (MUST BE NEGATIVE)
$TimeFilter = (get-date).AddMinutes($TimeSpan)

# Get latest security ID 4740 events
$SecurityEvents = Get-WinEvent -FilterHashtable @{LogName='ForwardedEvents';ID='4740'} -MaxEvents 50 # In this instance, I am running this on a server with forwarded events
$LatestSecurityEvents = $SecurityEvents | Where-Object {$_.TimeCreated -gt $TimeFilter}
 
# Get members of Admins OU
$OUPath = ## SELECT OU PATH THAT CONTAINS THE USERS TO MONITOR
$AdAdminAccounts = Get-ADUser -Filter * -SearchBase $OUPath | Select-Object SamAccountName
## --------------------------- ##

## --------------------------- ##
## Process 1: Check if lockedout user is in Admins OU and email
$LatestSecurityEvents | ForEach-Object {

    # Checks if verbose is enabled and logs at level 1
    if($Verbose -eq 1)
    {

        EnableVerbose $_
            
    }

    ## Process 1: Check if lockedout user is in Admins OU and email
    if(($AdAdminAccounts.SamAccountName).Contains($_.Properties[0].Value))
    {

        # Specify email body in HTML
        $PSEmailServer = 'mailslot.lincoln.ac.uk'

        $recipients = @("TEST <TEST@testemail.com>") ## PLEASE ADD RECIPENTS
        $Sender = @("TEST <TEST@testemail.com>") ## PLEASE CHANGE SENDER

        $Body = "<body style='font-family: Arial;font-size:120%'>"
        $Body += "<b style='color:red';>Alert</b>: The following account has been locked from the domain:"

        $Body += "<br>"
        $Body += "<br>"

        $Body += "Account Name: <b>$($_.Properties[0].Value)</b>"
        $Body += "<br>"
        $Body += "Client Computer: <b>$($_.Properties[1].Value)</b>"
        $Body += "<br>"
        $Body += "<i><b>Please investigate!</b></i>"
        $Body += "<br>"
        $Body += "<br>"
        $Body += "<i>This alert was logged at $($_.TimeCreated.ToShortTimeString()) on $($_.TimeCreated.ToShortDateString())</i>"
        $Body += "</body>"

        # Sends email via SMTP, PLEASE ALTER 
        Send-MailMessage -From $Sender -To $recipients -Subject "Admin Account Lockout: $($_.Properties[0].Value)" -Body $Body -BodyAsHtml -Priority High -DeliveryNotificationOption OnSuccess, OnFailure
   
        # Checks if verbose is enabled and logs at level 2
        if($Verbose -eq 2)
        {

            EnableVerbose $_

        }

    }
    else
    {

        # Continues if user isnt in AD group

    }

}