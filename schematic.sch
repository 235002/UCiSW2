<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="reset" />
        <signal name="clk50" />
        <signal name="XLXN_11(7:0)" />
        <signal name="XLXN_12(7:0)" />
        <signal name="XLXN_13(7:0)" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19(10:0)" />
        <signal name="XLXN_20(10:0)" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="PS2_Data" />
        <signal name="PS2_Clk" />
        <signal name="LCD_E" />
        <signal name="LCD_RS" />
        <signal name="LCD_RW" />
        <signal name="LCD_D(3:0)" />
        <signal name="SF_CE" />
        <signal name="XLXN_33(15:0)" />
        <signal name="XLXN_37(63:0)" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="clk50" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="BiDirectional" name="PS2_Data" />
        <port polarity="BiDirectional" name="PS2_Clk" />
        <port polarity="Output" name="LCD_E" />
        <port polarity="Output" name="LCD_RS" />
        <port polarity="Output" name="LCD_RW" />
        <port polarity="Output" name="LCD_D(3:0)" />
        <port polarity="Output" name="SF_CE" />
        <blockdef name="PS2_Mouse">
            <timestamp>2008-9-19T9:34:14</timestamp>
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
        </blockdef>
        <blockdef name="VGA_800x600_72Hz">
            <timestamp>2019-5-13T11:45:29</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-320" y2="-320" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-448" height="576" />
        </blockdef>
        <blockdef name="pointer_move">
            <timestamp>2019-4-1T11:24:55</timestamp>
            <rect width="304" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="432" y1="-288" y2="-288" x1="368" />
            <line x2="432" y1="-208" y2="-208" x1="368" />
            <rect width="64" x="368" y="-140" height="24" />
            <line x2="432" y1="-128" y2="-128" x1="368" />
            <rect width="64" x="368" y="-60" height="24" />
            <line x2="432" y1="-48" y2="-48" x1="368" />
        </blockdef>
        <blockdef name="LCD1x64">
            <timestamp>2008-9-19T11:10:6</timestamp>
            <line x2="416" y1="-288" y2="-288" x1="352" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="-108" height="24" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
            <rect width="288" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="VGA_800x600_72Hz" name="XLXI_2">
            <blockpin signalname="clk50" name="clk50" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_16" name="slowing" />
            <blockpin signalname="XLXN_17" name="click" />
            <blockpin signalname="XLXN_18" name="DataRdy" />
            <blockpin signalname="XLXN_19(10:0)" name="pos_x(10:0)" />
            <blockpin signalname="XLXN_20(10:0)" name="pos_y(10:0)" />
            <blockpin signalname="VGA_HS" name="h_sync" />
            <blockpin signalname="VGA_VS" name="v_sync" />
            <blockpin signalname="VGA_R" name="red" />
            <blockpin signalname="VGA_G" name="green" />
            <blockpin signalname="VGA_B" name="blue" />
            <blockpin signalname="XLXN_37(63:0)" name="Line(63:0)" />
            <blockpin signalname="XLXN_33(15:0)" name="blank(15:0)" />
        </block>
        <block symbolname="pointer_move" name="XLXI_3">
            <blockpin signalname="clk50" name="clk50" />
            <blockpin signalname="XLXN_18" name="DataRdy" />
            <blockpin signalname="XLXN_11(7:0)" name="B1_Status(7:0)" />
            <blockpin signalname="XLXN_12(7:0)" name="B2_X(7:0)" />
            <blockpin signalname="XLXN_13(7:0)" name="B3_Y(7:0)" />
            <blockpin signalname="XLXN_16" name="slowing" />
            <blockpin signalname="XLXN_17" name="click" />
            <blockpin signalname="XLXN_19(10:0)" name="pos_x(10:0)" />
            <blockpin signalname="XLXN_20(10:0)" name="pos_y(10:0)" />
        </block>
        <block symbolname="PS2_Mouse" name="XLXI_1">
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin name="InitOK" />
            <blockpin signalname="XLXN_18" name="DataRdy" />
            <blockpin signalname="XLXN_11(7:0)" name="B1_Status(7:0)" />
            <blockpin signalname="XLXN_12(7:0)" name="B2_X(7:0)" />
            <blockpin signalname="XLXN_13(7:0)" name="B3_Y(7:0)" />
            <blockpin signalname="clk50" name="Clk_50MHz" />
            <blockpin signalname="reset" name="Reset" />
            <blockpin signalname="clk50" name="Clk_Sys" />
        </block>
        <block symbolname="LCD1x64" name="XLXI_4">
            <blockpin signalname="clk50" name="Clk_50MHz" />
            <blockpin signalname="reset" name="Reset" />
            <blockpin signalname="XLXN_37(63:0)" name="Line(63:0)" />
            <blockpin signalname="XLXN_33(15:0)" name="Blank(15:0)" />
            <blockpin signalname="LCD_D(3:0)" name="LCD_D(3:0)" />
            <blockpin signalname="LCD_E" name="LCD_E" />
            <blockpin signalname="LCD_RW" name="LCD_RW" />
            <blockpin signalname="LCD_RS" name="LCD_RS" />
            <blockpin signalname="SF_CE" name="SF_CE" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2496" y="1280" name="XLXI_2" orien="R0">
        </instance>
        <instance x="640" y="1808" name="XLXI_1" orien="R0">
        </instance>
        <branch name="reset">
            <wire x2="592" y1="928" y2="928" x1="496" />
            <wire x2="2496" y1="928" y2="928" x1="592" />
            <wire x2="592" y1="928" y2="1648" x1="592" />
            <wire x2="640" y1="1648" y2="1648" x1="592" />
            <wire x2="592" y1="1648" y2="1904" x1="592" />
            <wire x2="2496" y1="1904" y2="1904" x1="592" />
        </branch>
        <branch name="clk50">
            <wire x2="320" y1="1056" y2="1056" x1="176" />
            <wire x2="320" y1="1056" y2="1152" x1="320" />
            <wire x2="320" y1="1152" y2="1712" x1="320" />
            <wire x2="320" y1="1712" y2="1776" x1="320" />
            <wire x2="640" y1="1776" y2="1776" x1="320" />
            <wire x2="320" y1="1776" y2="1968" x1="320" />
            <wire x2="2496" y1="1968" y2="1968" x1="320" />
            <wire x2="640" y1="1712" y2="1712" x1="320" />
            <wire x2="320" y1="864" y2="1152" x1="320" />
            <wire x2="1424" y1="864" y2="864" x1="320" />
            <wire x2="2496" y1="864" y2="864" x1="1424" />
            <wire x2="1424" y1="864" y2="1456" x1="1424" />
            <wire x2="1440" y1="1456" y2="1456" x1="1424" />
        </branch>
        <instance x="1440" y="1744" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_11(7:0)">
            <wire x2="1440" y1="1584" y2="1584" x1="1024" />
        </branch>
        <branch name="XLXN_12(7:0)">
            <wire x2="1440" y1="1648" y2="1648" x1="1024" />
        </branch>
        <branch name="XLXN_13(7:0)">
            <wire x2="1440" y1="1712" y2="1712" x1="1024" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="1984" y1="1456" y2="1456" x1="1872" />
            <wire x2="1984" y1="992" y2="1456" x1="1984" />
            <wire x2="2496" y1="992" y2="992" x1="1984" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="2080" y1="1536" y2="1536" x1="1872" />
            <wire x2="2080" y1="1056" y2="1536" x1="2080" />
            <wire x2="2496" y1="1056" y2="1056" x1="2080" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="1232" y1="1776" y2="1776" x1="1024" />
            <wire x2="2128" y1="1312" y2="1312" x1="1232" />
            <wire x2="1232" y1="1312" y2="1520" x1="1232" />
            <wire x2="1232" y1="1520" y2="1776" x1="1232" />
            <wire x2="1440" y1="1520" y2="1520" x1="1232" />
            <wire x2="2496" y1="1120" y2="1120" x1="2128" />
            <wire x2="2128" y1="1120" y2="1312" x1="2128" />
        </branch>
        <branch name="XLXN_19(10:0)">
            <wire x2="2160" y1="1616" y2="1616" x1="1872" />
            <wire x2="2160" y1="1184" y2="1616" x1="2160" />
            <wire x2="2496" y1="1184" y2="1184" x1="2160" />
        </branch>
        <branch name="XLXN_20(10:0)">
            <wire x2="2224" y1="1696" y2="1696" x1="1872" />
            <wire x2="2224" y1="1248" y2="1696" x1="2224" />
            <wire x2="2496" y1="1248" y2="1248" x1="2224" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="3088" y1="864" y2="864" x1="2880" />
        </branch>
        <branch name="VGA_VS">
            <wire x2="3088" y1="960" y2="960" x1="2880" />
        </branch>
        <branch name="VGA_R">
            <wire x2="3120" y1="1056" y2="1056" x1="2880" />
        </branch>
        <branch name="VGA_G">
            <wire x2="3120" y1="1152" y2="1152" x1="2880" />
        </branch>
        <branch name="VGA_B">
            <wire x2="3120" y1="1248" y2="1248" x1="2880" />
        </branch>
        <iomarker fontsize="28" x="176" y="1056" name="clk50" orien="R180" />
        <iomarker fontsize="28" x="3088" y="864" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="3088" y="960" name="VGA_VS" orien="R0" />
        <iomarker fontsize="28" x="3120" y="1056" name="VGA_R" orien="R0" />
        <iomarker fontsize="28" x="3120" y="1152" name="VGA_G" orien="R0" />
        <iomarker fontsize="28" x="3120" y="1248" name="VGA_B" orien="R0" />
        <branch name="PS2_Data">
            <wire x2="1072" y1="1392" y2="1392" x1="1024" />
            <wire x2="1072" y1="1168" y2="1392" x1="1072" />
            <wire x2="1184" y1="1168" y2="1168" x1="1072" />
        </branch>
        <branch name="PS2_Clk">
            <wire x2="1120" y1="1456" y2="1456" x1="1024" />
            <wire x2="1232" y1="1248" y2="1248" x1="1120" />
            <wire x2="1120" y1="1248" y2="1456" x1="1120" />
        </branch>
        <iomarker fontsize="28" x="1184" y="1168" name="PS2_Data" orien="R0" />
        <iomarker fontsize="28" x="496" y="928" name="reset" orien="R180" />
        <iomarker fontsize="28" x="1232" y="1248" name="PS2_Clk" orien="R0" />
        <instance x="2496" y="2000" name="XLXI_4" orien="R0">
        </instance>
        <branch name="LCD_E">
            <wire x2="3104" y1="1712" y2="1712" x1="2912" />
        </branch>
        <branch name="LCD_RS">
            <wire x2="3104" y1="1776" y2="1776" x1="2912" />
        </branch>
        <branch name="LCD_RW">
            <wire x2="3104" y1="1840" y2="1840" x1="2912" />
        </branch>
        <branch name="LCD_D(3:0)">
            <wire x2="3104" y1="1904" y2="1904" x1="2912" />
        </branch>
        <branch name="SF_CE">
            <wire x2="3104" y1="1968" y2="1968" x1="2912" />
        </branch>
        <iomarker fontsize="28" x="3104" y="1776" name="LCD_RS" orien="R0" />
        <iomarker fontsize="28" x="3104" y="1712" name="LCD_E" orien="R0" />
        <iomarker fontsize="28" x="3104" y="1840" name="LCD_RW" orien="R0" />
        <iomarker fontsize="28" x="3104" y="1904" name="LCD_D(3:0)" orien="R0" />
        <iomarker fontsize="28" x="3104" y="1968" name="SF_CE" orien="R0" />
        <branch name="XLXN_33(15:0)">
            <wire x2="2880" y1="1456" y2="1456" x1="2304" />
            <wire x2="2304" y1="1456" y2="1776" x1="2304" />
            <wire x2="2496" y1="1776" y2="1776" x1="2304" />
            <wire x2="2880" y1="1376" y2="1456" x1="2880" />
        </branch>
        <branch name="XLXN_37(63:0)">
            <wire x2="2384" y1="1584" y2="1584" x1="2368" />
            <wire x2="2384" y1="1584" y2="1600" x1="2384" />
            <wire x2="3088" y1="1600" y2="1600" x1="2384" />
            <wire x2="2368" y1="1584" y2="1712" x1="2368" />
            <wire x2="2384" y1="1712" y2="1712" x1="2368" />
            <wire x2="2496" y1="1712" y2="1712" x1="2384" />
            <wire x2="3072" y1="1312" y2="1312" x1="2880" />
            <wire x2="3088" y1="1312" y2="1312" x1="3072" />
            <wire x2="3088" y1="1312" y2="1600" x1="3088" />
        </branch>
    </sheet>
</drawing>