<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="S1" />
        <signal name="NS2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="S2" />
        <signal name="NS3" />
        <signal name="NS1" />
        <signal name="XLXN_8" />
        <signal name="S3" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="D4" />
        <signal name="D3" />
        <signal name="D2" />
        <signal name="D1" />
        <signal name="F" />
        <port polarity="Input" name="S1" />
        <port polarity="Input" name="S2" />
        <port polarity="Input" name="S3" />
        <port polarity="Output" name="F" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <block symbolname="inv" name="INV_1">
            <blockpin signalname="S1" name="I" />
            <blockpin signalname="NS1" name="O" />
        </block>
        <block symbolname="inv" name="INV_2">
            <blockpin signalname="S2" name="I" />
            <blockpin signalname="NS2" name="O" />
        </block>
        <block symbolname="inv" name="INV_3">
            <blockpin signalname="S3" name="I" />
            <blockpin signalname="NS3" name="O" />
        </block>
        <block symbolname="and3" name="AND3_1">
            <blockpin signalname="NS3" name="I0" />
            <blockpin signalname="NS2" name="I1" />
            <blockpin signalname="S1" name="I2" />
            <blockpin signalname="D1" name="O" />
        </block>
        <block symbolname="and3" name="AND3_2">
            <blockpin signalname="NS3" name="I0" />
            <blockpin signalname="S2" name="I1" />
            <blockpin signalname="NS1" name="I2" />
            <blockpin signalname="D2" name="O" />
        </block>
        <block symbolname="and3" name="AND3_3">
            <blockpin signalname="S3" name="I0" />
            <blockpin signalname="NS2" name="I1" />
            <blockpin signalname="NS1" name="I2" />
            <blockpin signalname="D3" name="O" />
        </block>
        <block symbolname="and3" name="AND3_4">
            <blockpin signalname="S3" name="I0" />
            <blockpin signalname="S2" name="I1" />
            <blockpin signalname="S1" name="I2" />
            <blockpin signalname="D4" name="O" />
        </block>
        <block symbolname="or4" name="OR4_1">
            <blockpin signalname="D4" name="I0" />
            <blockpin signalname="D3" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="D1" name="I3" />
            <blockpin signalname="F" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="912" y="816" name="INV_1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="24" type="instance" />
        </instance>
        <instance x="912" y="1632" name="INV_3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="24" type="instance" />
        </instance>
        <instance x="912" y="1248" name="INV_2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="24" type="instance" />
        </instance>
        <instance x="2496" y="1376" name="OR4_1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <instance x="1920" y="880" name="AND3_1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <instance x="1936" y="1840" name="AND3_4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <instance x="1936" y="1520" name="AND3_3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <instance x="1936" y="1200" name="AND3_2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <branch name="S1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="708" y="784" type="branch" />
            <wire x2="708" y1="784" y2="784" x1="272" />
            <wire x2="848" y1="784" y2="784" x1="708" />
            <wire x2="912" y1="784" y2="784" x1="848" />
            <wire x2="848" y1="784" y2="1648" x1="848" />
            <wire x2="1936" y1="1648" y2="1648" x1="848" />
            <wire x2="848" y1="688" y2="784" x1="848" />
            <wire x2="1920" y1="688" y2="688" x1="848" />
        </branch>
        <branch name="NS2">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="1216" type="branch" />
            <wire x2="1376" y1="1216" y2="1216" x1="1136" />
            <wire x2="1376" y1="1216" y2="1392" x1="1376" />
            <wire x2="1936" y1="1392" y2="1392" x1="1376" />
            <wire x2="1376" y1="752" y2="1216" x1="1376" />
            <wire x2="1920" y1="752" y2="752" x1="1376" />
        </branch>
        <branch name="S2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="697" y="1216" type="branch" />
            <wire x2="697" y1="1216" y2="1216" x1="288" />
            <wire x2="832" y1="1216" y2="1216" x1="697" />
            <wire x2="912" y1="1216" y2="1216" x1="832" />
            <wire x2="832" y1="1216" y2="1712" x1="832" />
            <wire x2="1936" y1="1712" y2="1712" x1="832" />
            <wire x2="832" y1="1072" y2="1216" x1="832" />
            <wire x2="1936" y1="1072" y2="1072" x1="832" />
        </branch>
        <branch name="NS3">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1383" y="1600" type="branch" />
            <wire x2="1383" y1="1600" y2="1600" x1="1136" />
            <wire x2="1456" y1="1600" y2="1600" x1="1383" />
            <wire x2="1632" y1="1600" y2="1600" x1="1456" />
            <wire x2="1936" y1="1136" y2="1136" x1="1456" />
            <wire x2="1456" y1="1136" y2="1600" x1="1456" />
            <wire x2="1632" y1="816" y2="1600" x1="1632" />
            <wire x2="1920" y1="816" y2="816" x1="1632" />
        </branch>
        <branch name="NS1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1214" y="784" type="branch" />
            <wire x2="1184" y1="784" y2="784" x1="1136" />
            <wire x2="1184" y1="784" y2="1328" x1="1184" />
            <wire x2="1936" y1="1328" y2="1328" x1="1184" />
            <wire x2="1214" y1="784" y2="784" x1="1184" />
            <wire x2="1536" y1="784" y2="784" x1="1214" />
            <wire x2="1536" y1="784" y2="1008" x1="1536" />
            <wire x2="1936" y1="1008" y2="1008" x1="1536" />
        </branch>
        <branch name="S3">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="767" y="1600" type="branch" />
            <wire x2="767" y1="1600" y2="1600" x1="304" />
            <wire x2="864" y1="1600" y2="1600" x1="767" />
            <wire x2="912" y1="1600" y2="1600" x1="864" />
            <wire x2="864" y1="1600" y2="1776" x1="864" />
            <wire x2="1936" y1="1776" y2="1776" x1="864" />
            <wire x2="864" y1="1456" y2="1600" x1="864" />
            <wire x2="1936" y1="1456" y2="1456" x1="864" />
        </branch>
        <branch name="D4">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2340" y="1712" type="branch" />
            <wire x2="2340" y1="1712" y2="1712" x1="2192" />
            <wire x2="2496" y1="1712" y2="1712" x1="2340" />
            <wire x2="2496" y1="1312" y2="1712" x1="2496" />
        </branch>
        <branch name="D3">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2263" y="1392" type="branch" />
            <wire x2="2263" y1="1392" y2="1392" x1="2192" />
            <wire x2="2336" y1="1392" y2="1392" x1="2263" />
            <wire x2="2336" y1="1248" y2="1392" x1="2336" />
            <wire x2="2496" y1="1248" y2="1248" x1="2336" />
        </branch>
        <branch name="D2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2303" y="1072" type="branch" />
            <wire x2="2303" y1="1072" y2="1072" x1="2192" />
            <wire x2="2336" y1="1072" y2="1072" x1="2303" />
            <wire x2="2336" y1="1072" y2="1184" x1="2336" />
            <wire x2="2496" y1="1184" y2="1184" x1="2336" />
        </branch>
        <branch name="D1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2266" y="752" type="branch" />
            <wire x2="2266" y1="752" y2="752" x1="2176" />
            <wire x2="2496" y1="752" y2="752" x1="2266" />
            <wire x2="2496" y1="752" y2="1120" x1="2496" />
        </branch>
        <iomarker fontsize="28" x="272" y="784" name="S1" orien="R180" />
        <iomarker fontsize="28" x="288" y="1216" name="S2" orien="R180" />
        <iomarker fontsize="28" x="304" y="1600" name="S3" orien="R180" />
        <branch name="F">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2772" y="1216" type="branch" />
            <wire x2="2772" y1="1216" y2="1216" x1="2752" />
            <wire x2="2784" y1="1216" y2="1216" x1="2772" />
        </branch>
        <iomarker fontsize="28" x="2784" y="1216" name="F" orien="R0" />
    </sheet>
</drawing>