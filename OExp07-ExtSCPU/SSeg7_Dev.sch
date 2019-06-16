<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="SEGMENT(63:0)" />
        <signal name="clk" />
        <signal name="rst" />
        <signal name="Start" />
        <signal name="flash" />
        <signal name="Hexs(31:0)" />
        <signal name="point(7:0)" />
        <signal name="LES(7:0)" />
        <signal name="Hexs(31:0),Hexs(31:0)" />
        <signal name="SW0" />
        <signal name="seg_clk" />
        <signal name="seg_sout" />
        <signal name="SEG_PEN" />
        <signal name="seg_clrn" />
        <signal name="XLXN_8(63:0)" />
        <signal name="XLXN_9(63:0)" />
        <signal name="XLXN_10(63:0)" />
        <signal name="XLXN_11(63:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="Start" />
        <port polarity="Input" name="flash" />
        <port polarity="Input" name="Hexs(31:0)" />
        <port polarity="Input" name="point(7:0)" />
        <port polarity="Input" name="LES(7:0)" />
        <port polarity="Input" name="SW0" />
        <port polarity="Output" name="seg_clk" />
        <port polarity="Output" name="seg_sout" />
        <port polarity="Output" name="SEG_PEN" />
        <port polarity="Output" name="seg_clrn" />
        <blockdef name="P2S">
            <timestamp>2016-2-25T15:50:0</timestamp>
            <rect width="208" x="16" y="-212" height="212" />
            <line x2="224" y1="-32" y2="-32" x1="240" />
            <line x2="224" y1="-128" y2="-128" x1="240" />
            <line x2="0" y1="-128" y2="-128" x1="16" />
            <line x2="0" y1="-80" y2="-80" x1="16" />
            <line x2="224" y1="-80" y2="-80" x1="240" />
            <line x2="0" y1="-176" y2="-176" x1="16" />
            <line x2="224" y1="-176" y2="-176" x1="240" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="16" />
        </blockdef>
        <blockdef name="HexTo8SEG">
            <timestamp>2016-2-25T15:50:0</timestamp>
            <rect width="224" x="32" y="-212" height="212" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="32" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="32" />
            <line x2="0" y1="-128" y2="-128" style="linewidth:W" x1="32" />
            <line x2="288" y1="-160" y2="-160" style="linewidth:W" x1="256" />
            <line x2="32" y1="-176" y2="-176" x1="0" />
        </blockdef>
        <blockdef name="SSeg_map">
            <timestamp>2016-2-25T15:50:0</timestamp>
            <rect width="212" x="12" y="-224" height="220" />
            <line x2="0" y1="-176" y2="-176" style="linewidth:W" x1="12" />
            <line x2="240" y1="-32" y2="-32" style="linewidth:W" x1="224" />
        </blockdef>
        <blockdef name="MUX2T1_64">
            <timestamp>2019-3-5T8:27:22</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <block symbolname="P2S" name="M2">
            <blockpin signalname="seg_clrn" name="s_clrn" />
            <blockpin signalname="seg_sout" name="sout" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="SEG_PEN" name="EN" />
            <blockpin signalname="Start" name="Serial" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="seg_clk" name="s_clk" />
            <blockpin signalname="SEGMENT(63:0)" name="P_Data(63:0)" />
        </block>
        <block symbolname="HexTo8SEG" name="SM1">
            <blockpin signalname="LES(7:0)" name="LES(7:0)" />
            <blockpin signalname="point(7:0)" name="points(7:0)" />
            <blockpin signalname="Hexs(31:0)" name="Hexs(31:0)" />
            <blockpin signalname="XLXN_9(63:0)" name="SEG_TXT(63:0)" />
            <blockpin signalname="flash" name="flash" />
        </block>
        <block symbolname="SSeg_map" name="SM3">
            <blockpin signalname="Hexs(31:0),Hexs(31:0)" name="Disp_num(63:0)" />
            <blockpin signalname="XLXN_8(63:0)" name="Seg_map(63:0)" />
        </block>
        <block symbolname="MUX2T1_64" name="XLXI_6">
            <blockpin signalname="SW0" name="sel" />
            <blockpin signalname="XLXN_8(63:0)" name="I0(63:0)" />
            <blockpin signalname="XLXN_9(63:0)" name="I1(63:0)" />
            <blockpin signalname="SEGMENT(63:0)" name="o(63:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1072" y="1488" name="SM1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="4" type="instance" />
        </instance>
        <instance x="1088" y="1840" name="SM3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-4" type="instance" />
        </instance>
        <branch name="SEGMENT(63:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2089" y="1648" type="branch" />
            <wire x2="2320" y1="1744" y2="1744" x1="2272" />
            <wire x2="2384" y1="1056" y2="1056" x1="2320" />
            <wire x2="2320" y1="1056" y2="1744" x1="2320" />
        </branch>
        <branch name="clk">
            <wire x2="2384" y1="912" y2="912" x1="608" />
        </branch>
        <branch name="rst">
            <wire x2="2384" y1="960" y2="960" x1="608" />
        </branch>
        <branch name="Start">
            <wire x2="2384" y1="1008" y2="1008" x1="608" />
        </branch>
        <branch name="flash">
            <wire x2="1072" y1="1312" y2="1312" x1="608" />
        </branch>
        <branch name="Hexs(31:0)">
            <wire x2="1072" y1="1360" y2="1360" x1="608" />
        </branch>
        <branch name="point(7:0)">
            <wire x2="1072" y1="1408" y2="1408" x1="608" />
        </branch>
        <branch name="LES(7:0)">
            <wire x2="1072" y1="1456" y2="1456" x1="608" />
        </branch>
        <branch name="Hexs(31:0),Hexs(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="1664" type="branch" />
            <wire x2="1088" y1="1664" y2="1664" x1="608" />
        </branch>
        <iomarker fontsize="28" x="608" y="912" name="clk" orien="R180" />
        <iomarker fontsize="28" x="608" y="960" name="rst" orien="R180" />
        <iomarker fontsize="28" x="608" y="1008" name="Start" orien="R180" />
        <iomarker fontsize="28" x="608" y="1312" name="flash" orien="R180" />
        <iomarker fontsize="28" x="608" y="1360" name="Hexs(31:0)" orien="R180" />
        <iomarker fontsize="28" x="608" y="1408" name="point(7:0)" orien="R180" />
        <iomarker fontsize="28" x="608" y="1456" name="LES(7:0)" orien="R180" />
        <branch name="SW0">
            <wire x2="1728" y1="1168" y2="1168" x1="608" />
            <wire x2="1728" y1="1168" y2="1744" x1="1728" />
            <wire x2="1888" y1="1744" y2="1744" x1="1728" />
        </branch>
        <iomarker fontsize="28" x="608" y="1168" name="SW0" orien="R180" />
        <branch name="seg_clk">
            <wire x2="2832" y1="912" y2="912" x1="2624" />
        </branch>
        <branch name="seg_sout">
            <wire x2="2832" y1="960" y2="960" x1="2624" />
        </branch>
        <branch name="SEG_PEN">
            <wire x2="2832" y1="1008" y2="1008" x1="2624" />
        </branch>
        <branch name="seg_clrn">
            <wire x2="2832" y1="1056" y2="1056" x1="2624" />
        </branch>
        <iomarker fontsize="28" x="2832" y="912" name="seg_clk" orien="R0" />
        <iomarker fontsize="28" x="2832" y="960" name="seg_sout" orien="R0" />
        <iomarker fontsize="28" x="2832" y="1008" name="SEG_PEN" orien="R0" />
        <iomarker fontsize="28" x="2832" y="1056" name="seg_clrn" orien="R0" />
        <instance x="1888" y="1904" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_8(63:0)">
            <wire x2="1888" y1="1808" y2="1808" x1="1328" />
        </branch>
        <branch name="XLXN_9(63:0)">
            <wire x2="1616" y1="1328" y2="1328" x1="1360" />
            <wire x2="1616" y1="1328" y2="1872" x1="1616" />
            <wire x2="1888" y1="1872" y2="1872" x1="1616" />
        </branch>
        <instance x="2384" y="1088" name="M2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="12" type="instance" />
        </instance>
    </sheet>
</drawing>