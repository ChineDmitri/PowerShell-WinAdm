# Le Pare-feu est-il actif ou non
Get-NetFirewallProfile | ft Name,Enabled

Write-Host "Entre command for desactivation profile: Domaine " -nonewline
write-host "[D]" -foreground Yellow -nonewline
write-host " | Private " -nonewline
write-host "[Pr]" -foreground Yellow -nonewline
write-host " | Public " -nonewline
write-host "[Pub] " -foreground Yellow -nonewline
write-host " | All " -nonewline
write-host "[A] : " -foreground Yellow -nonewline
write-host " | None " -nonewline
write-host "[N] : " -foreground Red -nonewline

$off = Read-Host


switch ($off) {
   "D" {
        Set-NetFirewallProfile -Profile Domain -Enabled False
   }
   "Pr" {
        Set-NetFirewallProfile -Profile Private -Enabled False
   }
   "Pub" {
        Set-NetFirewallProfile -Profile Public -Enabled False
   }
   "A" {
        Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
   }
   "N" {
        write-host "Nothing disabled" -foreground red 
   }
   default {
        write-host "Params unknown" -foreground red 
   }
}    

# Le Pare-feu est-il actif ou non
Get-NetFirewallProfile | ft Name,Enabled

Write-Host "Entre command for activation profile: Domaine " -nonewline
write-host "[D]" -foreground Yellow -nonewline
write-host " | Private " -nonewline
write-host "[Pr]" -foreground Yellow -nonewline
write-host " | Public " -nonewline
write-host "[Pub] " -foreground Yellow -nonewline
write-host " | All " -nonewline
write-host "[A] : " -foreground Yellow -nonewline
write-host " | None " -nonewline
write-host "[N] " -foreground Red -nonewline 
write-host ": " -nonewline

$on = Read-Host;

switch ($on) {
   "D" {
        Set-NetFirewallProfile -Profile Domain -Enabled True
   }
   "Pr" {
        Set-NetFirewallProfile -Profile Private -Enabled True
   }
   "Pub" {
        Set-NetFirewallProfile -Profile Public -Enabled True
   }
   "A" {
        Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled True
   }
   "N" {
        write-host "Nothing enabled" -foreground red 
   }
   default {
        write-host "Params unknown" -foreground red 
   }
}  

# Le Pare-feu est-il actif ou non
Get-NetFirewallProfile | ft Name,Enabled

pause
