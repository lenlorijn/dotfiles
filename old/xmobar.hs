-- xmobar config

Config {
    font = "xft:Fixed-8",
    bgColor = "#000000",
    fgColor = "#ffffff",
    lowerOnStart = True,
    commands = [
        Run MultiCpu ["-t","Cpu: <total0> <total1> ","-L","30","-H","60","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC","-w","3"] 10, -- Don't forget to ajust to your amount of cores or nasty things will happen to your computer.
        Run Memory ["-t","Mem: <usedratio>%","-H","8192","-L","4096","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Swap ["-t","Swap: <usedratio>%","-H","1024","-L","512","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Network "wlan0" ["-t","Wlan: <rx>, <tx>","-H","200","-L","10","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10, -- Might wanna change this to your if name
        Run Date "%a %b %_d %l:%M" "date" 10,
        Run BatteryP ["BAT0"]
            ["-t", "Bat: (<left>%)",
             "-L", "10", "-H", "80", "-p", "3",
             "--", "-O", "<fc=green>On</fc> - ", "-o", "",
             "-L", "-15", "-H", "-5",
             "-l", "red", "-m", "blue", "-h", "green"]
            600,
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    -- additional spaces at end of line are for trayer
    template = "%StdinReader% }{ %multicpu%   %memory%   %swap%   %wlan0%  %battery%  <fc=#FFFFCC>%date%</fc>                                        "
}
