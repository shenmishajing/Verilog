<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="SEGMENT(7:0)" />
        <signal name="AN(3:0)" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="flash" />
        <signal name="XLXN_7" />
        <signal name="Hex(3:0)" />
        <signal name="Hex(3)" />
        <signal name="Hex(2)" />
        <signal name="Hex(1)" />
        <signal name="Hex(0)" />
        <signal name="Scan(2:0)" />
        <signal name="Hexs(31:0)" />
        <signal name="point(7:0)" />
        <signal name="LES(7:0)" />
        <signal name="XLXN_19(7:0)" />
        <signal name="SEG_TXT(7:0)" />
        <signal name="SW0" />
        <signal name="SEG_TXT(0)" />
        <signal name="SEG_TXT(1)" />
        <signal name="SEG_TXT(2)" />
        <signal name="SEG_TXT(3)" />
        <signal name="SEG_TXT(4)" />
        <signal name="SEG_TXT(5)" />
        <signal name="SEG_TXT(6)" />
        <signal name="SEG_TXT(7)" />
        <port polarity="Output" name="SEGMENT(7:0)" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Input" name="flash" />
        <port polarity="Input" name="Scan(2:0)" />
        <port polarity="Input" name="Hexs(31:0)" />
        <port polarity="Input" name="point(7:0)" />
        <port polarity="Input" name="LES(7:0)" />
        <port polarity="Input" name="SW0" />
        <blockdef name="MC14495_ZJU">
            <timestamp>2016-2-25T15:50:0</timestamp>
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <line x2="0" y1="-240" y2="-240" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-336" y2="-336" x1="64" />
            <rect width="192" x="64" y="-404" height="404" />
            <line x2="320" y1="-32" y2="-32" x1="256" />
            <line x2="320" y1="-80" y2="-80" x1="256" />
            <line x2="320" y1="-128" y2="-128" x1="256" />
            <line x2="320" y1="-176" y2="-176" x1="256" />
            <line x2="320" y1="-224" y2="-224" x1="256" />
            <line x2="320" y1="-272" y2="-272" x1="256" />
            <line x2="320" y1="-320" y2="-320" x1="256" />
            <line x2="320" y1="-368" y2="-368" x1="256" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="ScanSync">
            <timestamp>2016-2-25T15:50:0</timestamp>
            <rect width="224" x="32" y="-200" height="200" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="32" />
            <line x2="288" y1="-32" y2="-32" style="linewidth:W" x1="256" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="32" />
            <line x2="288" y1="-80" y2="-80" x1="256" />
            <line x2="288" y1="-176" y2="-176" style="linewidth:W" x1="256" />
            <line x2="0" y1="-128" y2="-128" style="linewidth:W" x1="32" />
            <line x2="0" y1="-176" y2="-176" style="linewidth:W" x1="32" />
            <line x2="288" y1="-128" y2="-128" x1="256" />
        </blockdef>
        <blockdef name="Seg_map">
            <timestamp>2016-2-25T15:50:0</timestamp>
            <rect width="212" x="12" y="-224" height="220" />
            <line x2="0" y1="-176" y2="-176" style="linewidth:W" x1="12" />
            <line x2="240" y1="-32" y2="-32" style="linewidth:W" x1="224" />
            <line x2="12" y1="-48" y2="-48" style="linewidth:W" x1="0" />
        </blockdef>
        <blockdef name="MUX2T1_8">
            <timestamp>2016-2-25T15:50:0</timestamp>
            <line x2="80" y1="-80" y2="-80" style="linewidth:W" x1="96" />
            <rect width="64" x="16" y="-160" height="160" />
            <line x2="0" y1="-128" y2="-128" style="linewidth:W" x1="16" />
            <line x2="48" y1="-176" y2="-160" x1="48" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="16" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <block symbolname="MC14495_ZJU" name="M1">
            <blockpin signalname="Hex(0)" name="D0" />
            <blockpin signalname="Hex(1)" name="D1" />
            <blockpin signalname="Hex(2)" name="D2" />
            <blockpin signalname="Hex(3)" name="D3" />
            <blockpin signalname="SEG_TXT(7)" name="p" />
            <blockpin signalname="SEG_TXT(6)" name="g" />
            <blockpin signalname="SEG_TXT(5)" name="f" />
            <blockpin signalname="SEG_TXT(4)" name="e" />
            <blockpin signalname="SEG_TXT(3)" name="d" />
            <blockpin signalname="SEG_TXT(2)" name="c" />
            <blockpin signalname="SEG_TXT(1)" name="b" />
            <blockpin signalname="SEG_TXT(0)" name="a" />
            <blockpin signalname="XLXN_7" name="point" />
            <blockpin signalname="XLXN_4" name="LE" />
        </block>
        <block symbolname="ScanSync" name="M2">
            <blockpin signalname="LES(7:0)" name="LES(7:0)" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
            <blockpin signalname="point(7:0)" name="point(7:0)" />
            <blockpin signalname="XLXN_7" name="p" />
            <blockpin signalname="Hex(3:0)" name="Hexo(3:0)" />
            <blockpin signalname="Hexs(31:0)" name="Hexs(31:0)" />
            <blockpin signalname="Scan(2:0)" name="Scan(2:0)" />
            <blockpin signalname="XLXN_5" name="LE" />
        </block>
        <block symbolname="Seg_map" name="M3">
            <blockpin signalname="Hexs(31:0)" name="Hexs(31:0)" />
            <blockpin signalname="XLXN_19(7:0)" name="Seg_map(7:0)" />
            <blockpin signalname="Scan(2:0)" name="Scan(2:0)" />
        </block>
        <block symbolname="MUX2T1_8" name="MUXHM">
            <blockpin signalname="SEGMENT(7:0)" name="o(7:0)" />
            <blockpin signalname="XLXN_19(7:0)" name="I0(7:0)" />
            <blockpin signalname="SW0" name="s" />
            <blockpin signalname="SEG_TXT(7:0)" name="I1(7:0)" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="XLXN_5" name="I0" />
            <blockpin signalname="flash" name="I1" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2096" y="1472" name="M1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="1248" y="1680" name="M2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="1264" y="2064" name="M3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-4" type="instance" />
        </instance>
        <branch name="SEGMENT(7:0)">
            <wire x2="2432" y1="2080" y2="2080" x1="2416" />
            <wire x2="2816" y1="2080" y2="2080" x1="2432" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="2816" y1="1648" y2="1648" x1="1536" />
        </branch>
        <iomarker fontsize="28" x="2816" y="1648" name="AN(3:0)" orien="R0" />
        <instance x="1392" y="1296" name="XLXI_5" orien="R0" />
        <branch name="XLXN_4">
            <wire x2="1872" y1="1200" y2="1200" x1="1648" />
            <wire x2="1872" y1="1200" y2="1376" x1="1872" />
            <wire x2="2096" y1="1376" y2="1376" x1="1872" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1392" y1="1232" y2="1232" x1="1328" />
            <wire x2="1328" y1="1232" y2="1312" x1="1328" />
            <wire x2="1600" y1="1312" y2="1312" x1="1328" />
            <wire x2="1600" y1="1312" y2="1552" x1="1600" />
            <wire x2="1600" y1="1552" y2="1552" x1="1536" />
        </branch>
        <branch name="flash">
            <wire x2="1392" y1="1168" y2="1168" x1="944" />
        </branch>
        <iomarker fontsize="28" x="944" y="1168" name="flash" orien="R180" />
        <branch name="XLXN_7">
            <wire x2="2048" y1="1600" y2="1600" x1="1536" />
            <wire x2="2096" y1="1440" y2="1440" x1="2048" />
            <wire x2="2048" y1="1440" y2="1600" x1="2048" />
        </branch>
        <branch name="Hex(3:0)">
            <wire x2="1936" y1="1504" y2="1504" x1="1536" />
            <wire x2="1936" y1="1104" y2="1136" x1="1936" />
            <wire x2="1936" y1="1136" y2="1184" x1="1936" />
            <wire x2="1936" y1="1184" y2="1232" x1="1936" />
            <wire x2="1936" y1="1232" y2="1280" x1="1936" />
            <wire x2="1936" y1="1280" y2="1504" x1="1936" />
        </branch>
        <bustap x2="2032" y1="1136" y2="1136" x1="1936" />
        <bustap x2="2032" y1="1184" y2="1184" x1="1936" />
        <bustap x2="2032" y1="1232" y2="1232" x1="1936" />
        <bustap x2="2032" y1="1280" y2="1280" x1="1936" />
        <branch name="Hex(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2063" y="1136" type="branch" />
            <wire x2="2064" y1="1136" y2="1136" x1="2032" />
            <wire x2="2096" y1="1136" y2="1136" x1="2064" />
        </branch>
        <branch name="Hex(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2062" y="1184" type="branch" />
            <wire x2="2064" y1="1184" y2="1184" x1="2032" />
            <wire x2="2096" y1="1184" y2="1184" x1="2064" />
        </branch>
        <branch name="Hex(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2062" y="1232" type="branch" />
            <wire x2="2064" y1="1232" y2="1232" x1="2032" />
            <wire x2="2096" y1="1232" y2="1232" x1="2064" />
        </branch>
        <branch name="Hex(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2062" y="1280" type="branch" />
            <wire x2="2064" y1="1280" y2="1280" x1="2032" />
            <wire x2="2096" y1="1280" y2="1280" x1="2064" />
        </branch>
        <branch name="Scan(2:0)">
            <wire x2="976" y1="1504" y2="1504" x1="928" />
            <wire x2="1248" y1="1504" y2="1504" x1="976" />
            <wire x2="976" y1="1504" y2="2016" x1="976" />
            <wire x2="1264" y1="2016" y2="2016" x1="976" />
        </branch>
        <branch name="Hexs(31:0)">
            <wire x2="944" y1="1552" y2="1552" x1="928" />
            <wire x2="1040" y1="1552" y2="1552" x1="944" />
            <wire x2="1248" y1="1552" y2="1552" x1="1040" />
            <wire x2="1040" y1="1552" y2="1888" x1="1040" />
            <wire x2="1264" y1="1888" y2="1888" x1="1040" />
        </branch>
        <branch name="point(7:0)">
            <wire x2="1248" y1="1600" y2="1600" x1="928" />
        </branch>
        <branch name="LES(7:0)">
            <wire x2="1248" y1="1648" y2="1648" x1="928" />
        </branch>
        <instance x="2320" y="2160" name="MUXHM" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <iomarker fontsize="28" x="2816" y="2080" name="SEGMENT(7:0)" orien="R0" />
        <branch name="XLXN_19(7:0)">
            <wire x2="2320" y1="2032" y2="2032" x1="1504" />
        </branch>
        <branch name="SEG_TXT(7:0)">
            <wire x2="2224" y1="1536" y2="2128" x1="2224" />
            <wire x2="2320" y1="2128" y2="2128" x1="2224" />
            <wire x2="2608" y1="1536" y2="1536" x1="2224" />
            <wire x2="2608" y1="1056" y2="1104" x1="2608" />
            <wire x2="2608" y1="1104" y2="1152" x1="2608" />
            <wire x2="2608" y1="1152" y2="1200" x1="2608" />
            <wire x2="2608" y1="1200" y2="1248" x1="2608" />
            <wire x2="2608" y1="1248" y2="1296" x1="2608" />
            <wire x2="2608" y1="1296" y2="1344" x1="2608" />
            <wire x2="2608" y1="1344" y2="1392" x1="2608" />
            <wire x2="2608" y1="1392" y2="1440" x1="2608" />
            <wire x2="2608" y1="1440" y2="1536" x1="2608" />
        </branch>
        <iomarker fontsize="28" x="928" y="1504" name="Scan(2:0)" orien="R180" />
        <iomarker fontsize="28" x="928" y="1552" name="Hexs(31:0)" orien="R180" />
        <iomarker fontsize="28" x="928" y="1600" name="point(7:0)" orien="R180" />
        <iomarker fontsize="28" x="928" y="1648" name="LES(7:0)" orien="R180" />
        <branch name="SW0">
            <wire x2="2368" y1="1760" y2="1760" x1="928" />
            <wire x2="2368" y1="1760" y2="1984" x1="2368" />
        </branch>
        <iomarker fontsize="28" x="928" y="1760" name="SW0" orien="R180" />
        <bustap x2="2512" y1="1104" y2="1104" x1="2608" />
        <bustap x2="2512" y1="1152" y2="1152" x1="2608" />
        <bustap x2="2512" y1="1200" y2="1200" x1="2608" />
        <bustap x2="2512" y1="1248" y2="1248" x1="2608" />
        <bustap x2="2512" y1="1296" y2="1296" x1="2608" />
        <bustap x2="2512" y1="1344" y2="1344" x1="2608" />
        <bustap x2="2512" y1="1392" y2="1392" x1="2608" />
        <bustap x2="2512" y1="1440" y2="1440" x1="2608" />
        <branch name="SEG_TXT(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2462" y="1104" type="branch" />
            <wire x2="2464" y1="1104" y2="1104" x1="2416" />
            <wire x2="2512" y1="1104" y2="1104" x1="2464" />
        </branch>
        <branch name="SEG_TXT(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2463" y="1152" type="branch" />
            <wire x2="2464" y1="1152" y2="1152" x1="2416" />
            <wire x2="2512" y1="1152" y2="1152" x1="2464" />
        </branch>
        <branch name="SEG_TXT(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2461" y="1200" type="branch" />
            <wire x2="2464" y1="1200" y2="1200" x1="2416" />
            <wire x2="2512" y1="1200" y2="1200" x1="2464" />
        </branch>
        <branch name="SEG_TXT(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2460" y="1248" type="branch" />
            <wire x2="2464" y1="1248" y2="1248" x1="2416" />
            <wire x2="2512" y1="1248" y2="1248" x1="2464" />
        </branch>
        <branch name="SEG_TXT(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2461" y="1296" type="branch" />
            <wire x2="2464" y1="1296" y2="1296" x1="2416" />
            <wire x2="2512" y1="1296" y2="1296" x1="2464" />
        </branch>
        <branch name="SEG_TXT(5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2463" y="1344" type="branch" />
            <wire x2="2464" y1="1344" y2="1344" x1="2416" />
            <wire x2="2512" y1="1344" y2="1344" x1="2464" />
        </branch>
        <branch name="SEG_TXT(6)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2459" y="1392" type="branch" />
            <wire x2="2464" y1="1392" y2="1392" x1="2416" />
            <wire x2="2512" y1="1392" y2="1392" x1="2464" />
        </branch>
        <branch name="SEG_TXT(7)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2461" y="1440" type="branch" />
            <wire x2="2464" y1="1440" y2="1440" x1="2416" />
            <wire x2="2512" y1="1440" y2="1440" x1="2464" />
        </branch>
    </sheet>
</drawing>