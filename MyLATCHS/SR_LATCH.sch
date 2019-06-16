<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Q" />
        <signal name="Qbar" />
        <signal name="S" />
        <signal name="R" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <port polarity="Output" name="Q" />
        <port polarity="Output" name="Qbar" />
        <port polarity="Input" name="S" />
        <port polarity="Input" name="R" />
        <blockdef name="nand2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
        </blockdef>
        <block symbolname="nand2" name="XLXI_1">
            <blockpin signalname="Qbar" name="I0" />
            <blockpin signalname="S" name="I1" />
            <blockpin signalname="Q" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_2">
            <blockpin signalname="R" name="I0" />
            <blockpin signalname="Q" name="I1" />
            <blockpin signalname="Qbar" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1120" y="1184" name="XLXI_1" orien="R0" />
        <instance x="1120" y="1456" name="XLXI_2" orien="R0" />
        <branch name="Q">
            <wire x2="1056" y1="1248" y2="1328" x1="1056" />
            <wire x2="1120" y1="1328" y2="1328" x1="1056" />
            <wire x2="1552" y1="1248" y2="1248" x1="1056" />
            <wire x2="1552" y1="1088" y2="1088" x1="1376" />
            <wire x2="1552" y1="1088" y2="1248" x1="1552" />
            <wire x2="1680" y1="1088" y2="1088" x1="1552" />
        </branch>
        <branch name="Qbar">
            <wire x2="1120" y1="1120" y2="1120" x1="1104" />
            <wire x2="1104" y1="1120" y2="1296" x1="1104" />
            <wire x2="1552" y1="1296" y2="1296" x1="1104" />
            <wire x2="1552" y1="1296" y2="1360" x1="1552" />
            <wire x2="1680" y1="1360" y2="1360" x1="1552" />
            <wire x2="1552" y1="1360" y2="1360" x1="1376" />
        </branch>
        <branch name="S">
            <wire x2="1120" y1="1056" y2="1056" x1="960" />
        </branch>
        <branch name="R">
            <wire x2="1120" y1="1392" y2="1392" x1="944" />
        </branch>
        <iomarker fontsize="28" x="960" y="1056" name="S" orien="R180" />
        <iomarker fontsize="28" x="944" y="1392" name="R" orien="R180" />
        <iomarker fontsize="28" x="1680" y="1088" name="Q" orien="R0" />
        <iomarker fontsize="28" x="1680" y="1360" name="Qbar" orien="R0" />
    </sheet>
</drawing>