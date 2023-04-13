if (!(Get-Process whkd -ErrorAction SilentlyContinue))
{
    Start-Process whkd -WindowStyle hidden
}

. $PSScriptRoot\komorebi.generated.ps1

# Send the ALT key whenever changing focus to force focus changes
komorebic alt-focus-hack enable
# Default to minimizing windows when switching workspaces
komorebic window-hiding-behaviour cloak
# Set cross-monitor move behaviour to insert instead of swap
komorebic cross-monitor-move-behaviour insert
# Enable hot reloading of changes to this file
komorebic watch-configuration enable

# create named workspaces I-V on monitor 0
komorebic ensure-named-workspaces 0 I II III IV V
# you can do the same thing for secondary monitors too
komorebic ensure-named-workspaces 1 A B C D E F

# assign layouts to workspaces, possible values: bsp, columns, rows, vertical-stack, horizontal-stack, ultrawide-vertical-stack
komorebic named-workspace-layout I rows
komorebic named-workspace-layout II rows
komorebic named-workspace-layout III rows
komorebic named-workspace-layout IV rows
komorebic named-workspace-layout V rows
komorebic named-workspace-layout A bsp
komorebic named-workspace-layout B bsp
komorebic named-workspace-layout C bsp
komorebic named-workspace-layout D bsp
komorebic named-workspace-layout E bsp
komorebic named-workspace-layout F bsp

# set the gaps around the edge of the screen for a workspace
komorebic named-workspace-padding I 16
komorebic named-workspace-padding II 16
komorebic named-workspace-padding III 16
komorebic named-workspace-padding IV 16
komorebic named-workspace-padding V 16
komorebic named-workspace-padding A 16
komorebic named-workspace-padding B 16
komorebic named-workspace-padding C 16
komorebic named-workspace-padding D 16
komorebic named-workspace-padding E 16

# set the gaps between the containers for a workspace
komorebic named-workspace-container-padding I 8 
komorebic named-workspace-container-padding II 8 
komorebic named-workspace-container-padding III 8 
komorebic named-workspace-container-padding IV 8 
komorebic named-workspace-container-padding V 8 
komorebic named-workspace-container-padding A 8 
komorebic named-workspace-container-padding B 8 
komorebic named-workspace-container-padding C 8 
komorebic named-workspace-container-padding D 8 
komorebic named-workspace-container-padding E 8 

# you can assign specific apps to named workspaces
# komorebic named-workspace-rule exe "Firefox.exe" III

# Configure the invisible border dimensions
komorebic invisible-borders 7 0 14 7

# Uncomment the next lines if you want a visual border around the active window
komorebic active-window-border-colour 88 88 88 --window-kind single
komorebic active-window-border-colour 256 165 66 --window-kind stack
komorebic active-window-border-width 16
komorebic active-window-border-offset 0
komorebic active-window-border enable

# Mouse!
komorebic toggle-focus-follows-mouse

komorebic.exe manage-rule exe mintty.exe

komorebic complete-configuration
