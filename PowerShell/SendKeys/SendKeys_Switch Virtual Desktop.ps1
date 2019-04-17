# ---------------------------------------------------
# Script: WinKeys.ps1
# Version: 0.2
# Author: Stefan Stranger
# Description: PowerShell Script with Function called Win to run WinKey Combinations from PowerShell
# ---------------------------------------------------

# WinForm Source
$source = @"
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.InteropServices;
using System.Windows.Forms;
namespace KeyboardSend
{
    public class KeyboardSend
    {
        [DllImport("user32.dll")]
        public static extern void keybd_event(byte bVk, byte bScan, int dwFlags, int dwExtraInfo);
        private const int KEYEVENTF_EXTENDEDKEY = 1;
        private const int KEYEVENTF_KEYUP = 2;
        public static void KeyDown(Keys vKey)
        {
            keybd_event((byte)vKey, 0, KEYEVENTF_EXTENDEDKEY, 0);
        }
        public static void KeyUp(Keys vKey)
        {
            keybd_event((byte)vKey, 0, KEYEVENTF_EXTENDEDKEY | KEYEVENTF_KEYUP, 0);
        }
    }
}
"@

Add-Type -TypeDefinition $source -ReferencedAssemblies "System.Windows.Forms"


# Fn
Function Win ($Key)
{
$wshell = New-Object -ComObject wscript.shell;

    [KeyboardSend.KeyboardSend]::KeyDown("LWin")
    $wshell.SendKeys("^{$Key}")                               # CTRL + {DirectionKey}
    [KeyboardSend.KeyboardSend]::KeyUp("LWin")

}

# Horizontal Position for Cursor
$X = [System.Windows.Forms.Cursor]::Position.X
Write-Output "X: $X | Y: $Y"
if(($X -ge 1200) -and ($x -le 1950)){
    $key="RIGHT"                                                    # hot corner on the right (move right)
}elseif(($X -ge 0) -and ($X -le 1000)){
    $key="LEFT"                                                     # hot corner on the left (move left)
}


# Send Direction key to the function
win("$key")
