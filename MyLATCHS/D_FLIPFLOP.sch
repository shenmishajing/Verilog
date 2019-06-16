<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_6" />
        <signal name="Q" />
        <signal name="Qbar" />
        <signal name="XLXN_9" />
        <signal name="Cp" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="Sbar" />
        <signal name="D" />
        <signal name="Rbar" />
        <port polarity="Output" name="Q" />
        <port polarity="Output" name="Qbar" />
        <port polarity="Input" name="Cp" />
        <port polarity="Input" name="Sbar" />
        <port polarity="Input" name="D" />
        <port polarity="Input" name="Rbar" />
        <blockdef name="nand3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="216" y1="-128" y2="-128" x1="256" />
            <circle r="12" cx="204" cy="-128" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <block symbolname="nand3" name="XLXI_3">
            <blockpin signalname="XLXN_2" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="Sbar" name="I2" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_4">
            <blockpin signalname="Cp" name="I0" />
            <blockpin signalname="Rbar" name="I1" />
            <blockpin signalname="XLXN_1" name="I2" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_5">
            <blockpin signalname="XLXN_13" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="Cp" name="I2" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_6">
            <blockpin signalname="Rbar" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="XLXN_9" name="I2" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_7">
            <blockpin signalname="Qbar" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="Sbar" name="I2" />
            <blockpin signalname="Q" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_8">
            <blockpin signalname="Rbar" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="Q" name="I2" />
            <blockpin signalname="Qbar" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1200" y="1184" name="XLXI_3" orien="R0" />
        <instance x="1200" y="1456" name="XLXI_4" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1200" y1="1200" y2="1264" x1="1200" />
            <wire x2="1536" y1="1200" y2="1200" x1="1200" />
            <wire x2="1536" y1="1056" y2="1056" x1="1456" />
            <wire x2="1536" y1="1056" y2="1200" x1="1536" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1136" y1="1488" y2="1632" x1="1136" />
            <wire x2="1184" y1="1632" y2="1632" x1="1136" />
            <wire x2="1520" y1="1488" y2="1488" x1="1136" />
            <wire x2="1200" y1="1120" y2="1184" x1="1200" />
            <wire x2="1520" y1="1184" y2="1184" x1="1200" />
            <wire x2="1520" y1="1184" y2="1328" x1="1520" />
            <wire x2="1888" y1="1328" y2="1328" x1="1520" />
            <wire x2="1520" y1="1328" y2="1488" x1="1520" />
            <wire x2="1520" y1="1328" y2="1328" x1="1456" />
        </branch>
        <instance x="1184" y="1760" name="XLXI_5" orien="R0" />
        <instance x="1184" y="2032" name="XLXI_6" orien="R0" />
        <instance x="1888" y="1456" name="XLXI_7" orien="R0" />
        <instance x="1888" y="1728" name="XLXI_8" orien="R0" />
        <branch name="Q">
            <wire x2="1888" y1="1472" y2="1536" x1="1888" />
            <wire x2="2224" y1="1472" y2="1472" x1="1888" />
            <wire x2="2224" y1="1328" y2="1328" x1="2144" />
            <wire x2="2224" y1="1328" y2="1472" x1="2224" />
            <wire x2="2368" y1="1328" y2="1328" x1="2224" />
        </branch>
        <branch name="Qbar">
            <wire x2="1888" y1="1392" y2="1456" x1="1888" />
            <wire x2="2208" y1="1456" y2="1456" x1="1888" />
            <wire x2="2208" y1="1456" y2="1600" x1="2208" />
            <wire x2="2352" y1="1600" y2="1600" x1="2208" />
            <wire x2="2208" y1="1600" y2="1600" x1="2144" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1184" y1="1776" y2="1840" x1="1184" />
            <wire x2="1520" y1="1776" y2="1776" x1="1184" />
            <wire x2="1520" y1="1632" y2="1632" x1="1440" />
            <wire x2="1520" y1="1632" y2="1776" x1="1520" />
            <wire x2="1888" y1="1600" y2="1600" x1="1520" />
            <wire x2="1520" y1="1600" y2="1632" x1="1520" />
        </branch>
        <branch name="Cp">
            <wire x2="1184" y1="1472" y2="1472" x1="512" />
            <wire x2="1184" y1="1472" y2="1568" x1="1184" />
            <wire x2="1200" y1="1392" y2="1392" x1="1184" />
            <wire x2="1184" y1="1392" y2="1472" x1="1184" />
        </branch>
        <iomarker fontsize="28" x="512" y="1472" name="Cp" orien="R180" />
        <branch name="XLXN_13">
            <wire x2="1200" y1="1056" y2="1056" x1="640" />
            <wire x2="640" y1="1056" y2="2032" x1="640" />
            <wire x2="1504" y1="2032" y2="2032" x1="640" />
            <wire x2="1184" y1="1696" y2="1760" x1="1184" />
            <wire x2="1504" y1="1760" y2="1760" x1="1184" />
            <wire x2="1504" y1="1760" y2="1904" x1="1504" />
            <wire x2="1504" y1="1904" y2="2032" x1="1504" />
            <wire x2="1504" y1="1904" y2="1904" x1="1440" />
        </branch>
        <branch name="Sbar">
            <wire x2="1200" y1="912" y2="992" x1="1200" />
            <wire x2="1888" y1="912" y2="912" x1="1200" />
            <wire x2="1888" y1="912" y2="1264" x1="1888" />
            <wire x2="1968" y1="912" y2="912" x1="1888" />
        </branch>
        <iomarker fontsize="28" x="1968" y="912" name="Sbar" orien="R0" />
        <branch name="D">
            <wire x2="1184" y1="1904" y2="1904" x1="560" />
        </branch>
        <iomarker fontsize="28" x="560" y="1904" name="D" orien="R180" />
        <branch name="Rbar">
            <wire x2="1168" y1="1328" y2="1968" x1="1168" />
            <wire x2="1184" y1="1968" y2="1968" x1="1168" />
            <wire x2="1168" y1="1968" y2="1984" x1="1168" />
            <wire x2="1888" y1="1984" y2="1984" x1="1168" />
            <wire x2="1984" y1="1984" y2="1984" x1="1888" />
            <wire x2="1200" y1="1328" y2="1328" x1="1168" />
            <wire x2="1888" y1="1664" y2="1984" x1="1888" />
        </branch>
        <iomarker fontsize="28" x="1984" y="1984" name="Rbar" orien="R0" />
        <iomarker fontsize="28" x="2368" y="1328" name="Q" orien="R0" />
        <iomarker fontsize="28" x="2352" y="1600" name="Qbar" orien="R0" />
    </sheet>
</drawing>