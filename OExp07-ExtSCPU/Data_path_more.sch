<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="rdata_A(31:0)" />
        <signal name="Data_out(31:0)" />
        <signal name="XLXN_3(31:0)" />
        <signal name="clk" />
        <signal name="rst" />
        <signal name="V5" />
        <signal name="RegDst" />
        <signal name="XLXN_10(4:0)" />
        <signal name="XLXN_9(31:0)" />
        <signal name="DatatoReg(1:0)" />
        <signal name="Data_in(31:0)" />
        <signal name="inst_field(25:21)" />
        <signal name="inst_field(20:16)" />
        <signal name="inst_field(15:11)" />
        <signal name="RegWrite" />
        <signal name="inst_field(25:0)" />
        <signal name="inst_field(15:0)" />
        <signal name="Imm_32(31:0)" />
        <signal name="ALUSrc_B" />
        <signal name="ALU_out(31:0)" />
        <signal name="ALU_Control(2:0)" />
        <signal name="PC_out(31:0)" />
        <signal name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,V5,N0,N0" />
        <signal name="PC_4(31:0)" />
        <signal name="XLXN_35(31:0)" />
        <signal name="Imm_32(29:0),N0,N0" />
        <signal name="PC_4(31:28),inst_field(25:0),N0,N0" />
        <signal name="Branch(1:0)" />
        <signal name="N0" />
        <signal name="XLXN_40(31:0)" />
        <signal name="zero" />
        <signal name="XLXN_61(4:0)" />
        <signal name="Jal" />
        <signal name="V5,V5,V5,V5,V5" />
        <signal name="inst_field(15:0),N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0" />
        <signal name="overflow" />
        <port polarity="Output" name="Data_out(31:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="RegDst" />
        <port polarity="Input" name="DatatoReg(1:0)" />
        <port polarity="Input" name="Data_in(31:0)" />
        <port polarity="Input" name="RegWrite" />
        <port polarity="Input" name="inst_field(25:0)" />
        <port polarity="Input" name="ALUSrc_B" />
        <port polarity="Output" name="ALU_out(31:0)" />
        <port polarity="Input" name="ALU_Control(2:0)" />
        <port polarity="Output" name="PC_out(31:0)" />
        <port polarity="Input" name="Branch(1:0)" />
        <port polarity="Output" name="zero" />
        <port polarity="Input" name="Jal" />
        <port polarity="Output" name="overflow" />
        <blockdef name="REG32">
            <timestamp>2016-2-27T5:21:0</timestamp>
            <rect style="fillcolor:rgb(0,255,255);fillstyle:Solid" width="88" x="32" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="32" />
            <line x2="0" y1="-160" y2="-160" x1="32" />
            <line x2="0" y1="-96" y2="-96" x1="32" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="32" />
            <line x2="120" y1="-128" y2="-128" style="linewidth:W" x1="144" />
        </blockdef>
        <blockdef name="Regs">
            <timestamp>2016-2-27T5:21:0</timestamp>
            <rect style="linewidth:W;linecolor:rgb(255,0,0);fillcolor:rgb(254,180,229);fillstyle:Solid" width="352" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="240" y1="-496" y2="-448" x1="240" />
            <rect width="64" x="416" y="-396" height="24" />
            <line x2="480" y1="-384" y2="-384" x1="416" />
            <line x2="0" y1="-368" y2="-368" x1="64" />
            <rect width="64" x="0" y="-60" height="24" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <rect width="64" x="416" y="-124" height="24" />
            <line x2="480" y1="-112" y2="-112" x1="416" />
            <rect width="64" x="0" y="-332" height="24" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <rect width="64" x="0" y="-284" height="24" />
            <line x2="0" y1="-272" y2="-272" x1="64" />
            <rect width="64" x="0" y="-204" height="24" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="alu">
            <timestamp>2016-2-27T5:21:0</timestamp>
            <line x2="140" y1="-216" y2="-136" style="linewidth:W;linecolor:rgb(255,0,0)" x1="64" />
            <line x2="140" y1="-72" y2="-136" style="linewidth:W;linecolor:rgb(255,0,0)" x1="64" />
            <line x2="64" y1="-72" y2="96" style="linewidth:W;linecolor:rgb(255,0,0)" x1="64" />
            <line x2="384" y1="-48" y2="-232" style="linewidth:W;linecolor:rgb(255,0,0)" x1="384" />
            <line x2="64" y1="-232" y2="-384" style="linewidth:W;linecolor:rgb(255,0,0)" x1="384" />
            <line x2="448" y1="-208" y2="-208" x1="384" />
            <rect width="64" x="384" y="-156" height="24" />
            <line x2="448" y1="-144" y2="-144" x1="384" />
            <line x2="448" y1="-80" y2="-80" x1="384" />
            <line x2="64" y1="-216" y2="-384" style="linewidth:W;linecolor:rgb(255,0,0)" x1="64" />
            <line x2="64" y1="-48" y2="96" style="linewidth:W;linecolor:rgb(255,0,0)" x1="384" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="4" height="24" />
            <line x2="0" y1="16" y2="16" x1="64" />
            <line x2="240" y1="-384" y2="-300" x1="240" />
            <rect width="16" x="232" y="-384" height="84" />
        </blockdef>
        <blockdef name="MUX2T1_32">
            <timestamp>2016-2-27T5:21:0</timestamp>
            <rect width="40" x="12" y="-100" height="100" />
            <line x2="32" y1="-112" y2="-100" x1="32" />
            <line x2="52" y1="-48" y2="-48" style="linewidth:W;linecolor:rgb(0,0,0)" x1="64" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="12" />
            <line x2="0" y1="-16" y2="-16" style="linewidth:W" x1="12" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="MUX2T1_5">
            <timestamp>2016-2-27T5:21:0</timestamp>
            <line x2="16" y1="-80" y2="-72" x1="16" />
            <line x2="4" y1="-48" y2="-48" style="linewidth:W" x1="0" />
            <line x2="4" y1="-16" y2="-16" style="linewidth:W" x1="0" />
            <line x2="28" y1="-32" y2="-32" style="linewidth:W" x1="32" />
            <rect width="24" x="4" y="-72" height="72" />
        </blockdef>
        <blockdef name="Ext_32">
            <timestamp>2016-2-27T5:21:0</timestamp>
            <circle style="linewidth:W;linecolor:rgb(255,0,0);linestyle:Dash" r="69" cx="185" cy="-33" />
            <line x2="124" y1="0" y2="0" style="linewidth:W" x1="96" />
            <line x2="272" y1="-64" y2="-64" style="linewidth:W" x1="248" />
            <rect style="linecolor:rgb(255,255,255)" width="128" x="120" y="-80" height="88" />
        </blockdef>
        <blockdef name="add_32">
            <timestamp>2016-2-27T5:21:0</timestamp>
            <line x2="0" y1="-48" y2="-48" style="linewidth:W" x1="16" />
            <line x2="0" y1="-16" y2="-16" style="linewidth:W" x1="16" />
            <line x2="80" y1="4" y2="-16" x1="16" />
            <line x2="16" y1="-24" y2="4" x1="16" />
            <line x2="28" y1="-24" y2="-32" x1="16" />
            <line x2="28" y1="-40" y2="-32" x1="16" />
            <line x2="16" y1="-40" y2="-68" x1="16" />
            <line x2="80" y1="-68" y2="-48" x1="16" />
            <line x2="80" y1="-48" y2="-16" x1="80" />
            <line x2="96" y1="-32" y2="-32" style="linewidth:W" x1="80" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="MUX4T1_32">
            <timestamp>2016-2-27T6:31:0</timestamp>
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="12" />
            <line x2="0" y1="-48" y2="-48" style="linewidth:W" x1="12" />
            <line x2="0" y1="-16" y2="-16" style="linewidth:W" x1="12" />
            <rect width="40" x="12" y="-136" height="128" />
            <line x2="0" y1="-112" y2="-112" style="linewidth:W" x1="12" />
            <line x2="32" y1="-136" y2="-144" style="linewidth:W" x1="32" />
            <line x2="52" y1="-96" y2="-96" style="linewidth:W;linecolor:rgb(0,0,0)" x1="64" />
        </blockdef>
        <block symbolname="REG32" name="PC">
            <blockpin signalname="XLXN_40(31:0)" name="D(31:0)" />
            <blockpin signalname="V5" name="CE" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="PC_out(31:0)" name="Q(31:0)" />
        </block>
        <block symbolname="Regs" name="U2_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="RegWrite" name="L_S" />
            <blockpin signalname="rdata_A(31:0)" name="rdata_A(31:0)" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_9(31:0)" name="Wt_data(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="rdata_B(31:0)" />
            <blockpin signalname="inst_field(25:21)" name="R_addr_A(4:0)" />
            <blockpin signalname="inst_field(20:16)" name="R_addr_B(4:0)" />
            <blockpin signalname="XLXN_10(4:0)" name="Wt_addr(4:0)" />
        </block>
        <block symbolname="alu" name="U1_1">
            <blockpin signalname="zero" name="zero" />
            <blockpin signalname="ALU_out(31:0)" name="res(31:0)" />
            <blockpin signalname="overflow" name="overflow" />
            <blockpin signalname="rdata_A(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_3(31:0)" name="B(31:0)" />
            <blockpin signalname="ALU_Control(2:0)" name="ALU_operation(2:0)" />
        </block>
        <block symbolname="MUX2T1_32" name="MUXD3">
            <blockpin signalname="ALUSrc_B" name="s" />
            <blockpin signalname="Data_out(31:0)" name="I0(31:0)" />
            <blockpin signalname="Imm_32(31:0)" name="I1(31:0)" />
            <blockpin signalname="XLXN_3(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_5">
            <blockpin signalname="V5" name="P" />
        </block>
        <block symbolname="MUX2T1_5" name="MUXD1">
            <blockpin signalname="inst_field(15:11)" name="I1(4:0)" />
            <blockpin signalname="XLXN_61(4:0)" name="I0(4:0)" />
            <blockpin signalname="XLXN_10(4:0)" name="o(4:0)" />
            <blockpin signalname="RegDst" name="s" />
        </block>
        <block symbolname="Ext_32" name="Ext">
            <blockpin signalname="inst_field(15:0)" name="imm_16(15:0)" />
            <blockpin signalname="Imm_32(31:0)" name="Imm_32(31:0)" />
        </block>
        <block symbolname="add_32" name="ADD_PC_4">
            <blockpin signalname="PC_4(31:0)" name="c(31:0)" />
            <blockpin signalname="PC_out(31:0)" name="a(31:0)" />
            <blockpin signalname="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,V5,N0,N0" name="b(31:0)" />
        </block>
        <block symbolname="add_32" name="ADD_Branch">
            <blockpin signalname="XLXN_35(31:0)" name="c(31:0)" />
            <blockpin signalname="PC_4(31:0)" name="a(31:0)" />
            <blockpin signalname="Imm_32(29:0),N0,N0" name="b(31:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_14">
            <blockpin signalname="N0" name="G" />
        </block>
        <block symbolname="MUX4T1_32" name="MUXD5">
            <blockpin signalname="Branch(1:0)" name="s(1:0)" />
            <blockpin signalname="PC_4(31:0)" name="I0(31:0)" />
            <blockpin signalname="XLXN_35(31:0)" name="I1(31:0)" />
            <blockpin signalname="PC_4(31:28),inst_field(25:0),N0,N0" name="I2(31:0)" />
            <blockpin signalname="rdata_A(31:0)" name="I3(31:0)" />
            <blockpin signalname="XLXN_40(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="MUX2T1_5" name="MUXD2">
            <blockpin signalname="V5,V5,V5,V5,V5" name="I1(4:0)" />
            <blockpin signalname="inst_field(20:16)" name="I0(4:0)" />
            <blockpin signalname="XLXN_61(4:0)" name="o(4:0)" />
            <blockpin signalname="Jal" name="s" />
        </block>
        <block symbolname="MUX4T1_32" name="MUXD4">
            <blockpin signalname="DatatoReg(1:0)" name="s(1:0)" />
            <blockpin signalname="ALU_out(31:0)" name="I0(31:0)" />
            <blockpin signalname="Data_in(31:0)" name="I1(31:0)" />
            <blockpin signalname="inst_field(15:0),N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0" name="I2(31:0)" />
            <blockpin signalname="PC_4(31:0)" name="I3(31:0)" />
            <blockpin signalname="XLXN_9(31:0)" name="o(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="976" y="864" name="PC" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="1264" y="1888" name="U2_2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="2144" y="1792" name="U1_1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="96" type="instance" />
        </instance>
        <branch name="rdata_A(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2273" y="912" type="branch" />
            <wire x2="2096" y1="1504" y2="1504" x1="1744" />
            <wire x2="2144" y1="1504" y2="1504" x1="2096" />
            <wire x2="2096" y1="912" y2="1504" x1="2096" />
            <wire x2="2272" y1="912" y2="912" x1="2096" />
            <wire x2="2384" y1="912" y2="912" x1="2272" />
        </branch>
        <instance x="1888" y="1856" name="MUXD3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="Data_out(31:0)">
            <wire x2="1824" y1="1776" y2="1776" x1="1744" />
            <wire x2="1888" y1="1776" y2="1776" x1="1824" />
            <wire x2="1824" y1="1776" y2="2192" x1="1824" />
            <wire x2="2976" y1="2192" y2="2192" x1="1824" />
        </branch>
        <branch name="XLXN_3(31:0)">
            <wire x2="2144" y1="1808" y2="1808" x1="1952" />
        </branch>
        <branch name="clk">
            <wire x2="736" y1="640" y2="640" x1="400" />
            <wire x2="976" y1="640" y2="640" x1="736" />
            <wire x2="736" y1="640" y2="1472" x1="736" />
            <wire x2="1264" y1="1472" y2="1472" x1="736" />
        </branch>
        <branch name="rst">
            <wire x2="688" y1="704" y2="704" x1="400" />
            <wire x2="976" y1="704" y2="704" x1="688" />
            <wire x2="688" y1="704" y2="1520" x1="688" />
            <wire x2="1264" y1="1520" y2="1520" x1="688" />
        </branch>
        <instance x="768" y="464" name="XLXI_5" orien="R0" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="496" type="branch" />
            <wire x2="832" y1="464" y2="496" x1="832" />
            <wire x2="832" y1="496" y2="768" x1="832" />
            <wire x2="976" y1="768" y2="768" x1="832" />
            <wire x2="1024" y1="496" y2="496" x1="832" />
            <wire x2="1184" y1="496" y2="496" x1="1024" />
            <wire x2="1184" y1="496" y2="832" x1="1184" />
            <wire x2="1232" y1="832" y2="832" x1="1184" />
        </branch>
        <branch name="RegDst">
            <wire x2="1184" y1="1424" y2="1424" x1="400" />
            <wire x2="1184" y1="1424" y2="1648" x1="1184" />
        </branch>
        <branch name="XLXN_10(4:0)">
            <wire x2="1264" y1="1696" y2="1696" x1="1200" />
        </branch>
        <branch name="XLXN_9(31:0)">
            <wire x2="1264" y1="1840" y2="1840" x1="1200" />
        </branch>
        <branch name="Data_in(31:0)">
            <wire x2="1136" y1="1856" y2="1856" x1="400" />
        </branch>
        <branch name="inst_field(25:21)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1020" y="1568" type="branch" />
            <wire x2="1024" y1="1568" y2="1568" x1="784" />
            <wire x2="1264" y1="1568" y2="1568" x1="1024" />
        </branch>
        <branch name="inst_field(15:11)">
            <wire x2="1168" y1="1712" y2="1712" x1="784" />
        </branch>
        <bustap x2="784" y1="1568" y2="1568" x1="688" />
        <bustap x2="784" y1="1616" y2="1616" x1="688" />
        <bustap x2="784" y1="1712" y2="1712" x1="688" />
        <branch name="RegWrite">
            <wire x2="1504" y1="1312" y2="1312" x1="400" />
            <wire x2="1504" y1="1312" y2="1392" x1="1504" />
        </branch>
        <branch name="inst_field(25:0)">
            <wire x2="608" y1="1568" y2="1568" x1="400" />
            <wire x2="688" y1="1568" y2="1568" x1="608" />
            <wire x2="688" y1="1568" y2="1584" x1="688" />
            <wire x2="608" y1="1568" y2="1616" x1="608" />
            <wire x2="688" y1="1616" y2="1616" x1="608" />
            <wire x2="688" y1="1616" y2="1632" x1="688" />
            <wire x2="608" y1="1616" y2="1712" x1="608" />
            <wire x2="688" y1="1712" y2="1712" x1="608" />
            <wire x2="688" y1="1712" y2="1728" x1="688" />
            <wire x2="608" y1="1712" y2="2032" x1="608" />
            <wire x2="912" y1="2032" y2="2032" x1="608" />
            <wire x2="912" y1="2032" y2="2064" x1="912" />
        </branch>
        <bustap x2="1008" y1="2032" y2="2032" x1="912" />
        <instance x="1312" y="2032" name="Ext" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="96" y="36" type="instance" />
        </instance>
        <branch name="inst_field(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1183" y="2032" type="branch" />
            <wire x2="1184" y1="2032" y2="2032" x1="1008" />
            <wire x2="1408" y1="2032" y2="2032" x1="1184" />
        </branch>
        <branch name="Imm_32(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1706" y="1968" type="branch" />
            <wire x2="1712" y1="1968" y2="1968" x1="1584" />
            <wire x2="1760" y1="1968" y2="1968" x1="1712" />
            <wire x2="1760" y1="1840" y2="1968" x1="1760" />
            <wire x2="1888" y1="1840" y2="1840" x1="1760" />
        </branch>
        <branch name="ALUSrc_B">
            <wire x2="1920" y1="1248" y2="1248" x1="400" />
            <wire x2="1920" y1="1248" y2="1744" x1="1920" />
        </branch>
        <branch name="ALU_out(31:0)">
            <wire x2="976" y1="1824" y2="2096" x1="976" />
            <wire x2="2784" y1="2096" y2="2096" x1="976" />
            <wire x2="1136" y1="1824" y2="1824" x1="976" />
            <wire x2="2784" y1="1648" y2="1648" x1="2592" />
            <wire x2="2976" y1="1648" y2="1648" x1="2784" />
            <wire x2="2784" y1="1648" y2="2096" x1="2784" />
        </branch>
        <branch name="ALU_Control(2:0)">
            <wire x2="2384" y1="1168" y2="1168" x1="400" />
            <wire x2="2384" y1="1168" y2="1408" x1="2384" />
        </branch>
        <branch name="PC_out(31:0)">
            <wire x2="1472" y1="736" y2="736" x1="1120" />
            <wire x2="2976" y1="736" y2="736" x1="1472" />
            <wire x2="1472" y1="736" y2="800" x1="1472" />
            <wire x2="1584" y1="800" y2="800" x1="1472" />
        </branch>
        <instance x="1584" y="848" name="ADD_PC_4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="4" type="instance" />
        </instance>
        <branch name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,V5,N0,N0">
            <wire x2="1584" y1="832" y2="832" x1="1328" />
            <wire x2="1328" y1="832" y2="848" x1="1328" />
        </branch>
        <instance x="1904" y="912" name="ADD_Branch" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="4" type="instance" />
        </instance>
        <branch name="XLXN_35(31:0)">
            <wire x2="2176" y1="880" y2="880" x1="2000" />
            <wire x2="2384" y1="848" y2="848" x1="2176" />
            <wire x2="2176" y1="848" y2="880" x1="2176" />
        </branch>
        <branch name="Imm_32(29:0),N0,N0">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1042" y="896" type="branch" />
            <wire x2="1040" y1="896" y2="896" x1="400" />
            <wire x2="1904" y1="896" y2="896" x1="1040" />
        </branch>
        <instance x="2624" y="560" name="XLXI_14" orien="R0" />
        <branch name="N0">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2738" y="336" type="branch" />
            <wire x2="2688" y1="336" y2="432" x1="2688" />
            <wire x2="2736" y1="336" y2="336" x1="2688" />
            <wire x2="2784" y1="336" y2="336" x1="2736" />
        </branch>
        <branch name="XLXN_40(31:0)">
            <wire x2="976" y1="832" y2="832" x1="960" />
            <wire x2="960" y1="832" y2="1008" x1="960" />
            <wire x2="2512" y1="1008" y2="1008" x1="960" />
            <wire x2="2512" y1="832" y2="832" x1="2448" />
            <wire x2="2512" y1="832" y2="1008" x1="2512" />
        </branch>
        <bustap x2="1232" y1="832" y2="832" x1="1328" />
        <iomarker fontsize="28" x="400" y="640" name="clk" orien="R180" />
        <iomarker fontsize="28" x="400" y="704" name="rst" orien="R180" />
        <iomarker fontsize="28" x="400" y="1424" name="RegDst" orien="R180" />
        <iomarker fontsize="28" x="384" y="1760" name="DatatoReg(1:0)" orien="R180" />
        <iomarker fontsize="28" x="400" y="1568" name="inst_field(25:0)" orien="R180" />
        <iomarker fontsize="28" x="400" y="1312" name="RegWrite" orien="R180" />
        <iomarker fontsize="28" x="400" y="1248" name="ALUSrc_B" orien="R180" />
        <iomarker fontsize="28" x="2976" y="1648" name="ALU_out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2976" y="2192" name="Data_out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="400" y="1168" name="ALU_Control(2:0)" orien="R180" />
        <iomarker fontsize="28" x="2976" y="736" name="PC_out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="400" y="576" name="Branch(1:0)" orien="R180" />
        <branch name="Branch(1:0)">
            <wire x2="2416" y1="576" y2="576" x1="400" />
            <wire x2="2416" y1="576" y2="784" x1="2416" />
        </branch>
        <branch name="PC_4(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1889" y="816" type="branch" />
            <wire x2="1808" y1="1088" y2="1088" x1="832" />
            <wire x2="832" y1="1088" y2="1920" x1="832" />
            <wire x2="1136" y1="1920" y2="1920" x1="832" />
            <wire x2="1808" y1="816" y2="816" x1="1680" />
            <wire x2="1808" y1="816" y2="864" x1="1808" />
            <wire x2="1904" y1="864" y2="864" x1="1808" />
            <wire x2="1808" y1="864" y2="1088" x1="1808" />
            <wire x2="1888" y1="816" y2="816" x1="1808" />
            <wire x2="2384" y1="816" y2="816" x1="1888" />
        </branch>
        <instance x="2384" y="928" name="MUXD5" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <branch name="PC_4(31:28),inst_field(25:0),N0,N0">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1143" y="960" type="branch" />
            <wire x2="1136" y1="960" y2="960" x1="400" />
            <wire x2="2224" y1="960" y2="960" x1="1136" />
            <wire x2="2224" y1="880" y2="960" x1="2224" />
            <wire x2="2384" y1="880" y2="880" x1="2224" />
        </branch>
        <branch name="zero">
            <wire x2="2976" y1="1584" y2="1584" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="2976" y="1584" name="zero" orien="R0" />
        <instance x="1168" y="1728" name="MUXD1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="inst_field(20:16)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="999" y="1616" type="branch" />
            <wire x2="992" y1="1616" y2="1616" x1="784" />
            <wire x2="1024" y1="1616" y2="1616" x1="992" />
            <wire x2="1264" y1="1616" y2="1616" x1="1024" />
            <wire x2="1024" y1="1616" y2="1664" x1="1024" />
            <wire x2="1072" y1="1664" y2="1664" x1="1024" />
        </branch>
        <branch name="XLXN_61(4:0)">
            <wire x2="1168" y1="1680" y2="1680" x1="1104" />
        </branch>
        <instance x="1072" y="1712" name="MUXD2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="Jal">
            <wire x2="1088" y1="1456" y2="1456" x1="400" />
            <wire x2="1088" y1="1456" y2="1632" x1="1088" />
        </branch>
        <iomarker fontsize="28" x="400" y="1456" name="Jal" orien="R180" />
        <branch name="V5,V5,V5,V5,V5">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="998" y="1696" type="branch" />
            <wire x2="992" y1="1696" y2="1696" x1="928" />
            <wire x2="1072" y1="1696" y2="1696" x1="992" />
        </branch>
        <instance x="1136" y="1936" name="MUXD4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <branch name="DatatoReg(1:0)">
            <wire x2="1168" y1="1760" y2="1760" x1="384" />
            <wire x2="1168" y1="1760" y2="1792" x1="1168" />
        </branch>
        <iomarker fontsize="28" x="400" y="1856" name="Data_in(31:0)" orien="R180" />
        <branch name="inst_field(15:0),N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="446" y="1888" type="branch" />
            <wire x2="448" y1="1888" y2="1888" x1="400" />
            <wire x2="1136" y1="1888" y2="1888" x1="448" />
        </branch>
        <branch name="overflow">
            <wire x2="2976" y1="1712" y2="1712" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="2976" y="1712" name="overflow" orien="R0" />
    </sheet>
</drawing>