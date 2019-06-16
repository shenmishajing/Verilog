<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(31:0)" />
        <signal name="Data_out(31:0)" />
        <signal name="XLXN_3(31:0)" />
        <signal name="clk" />
        <signal name="rst" />
        <signal name="V5" />
        <signal name="RegDst" />
        <signal name="XLXN_10(4:0)" />
        <signal name="XLXN_11(31:0)" />
        <signal name="MemtoReg" />
        <signal name="Data_in(31:0)" />
        <signal name="inst_field(25:21)" />
        <signal name="inst_field(20:16)" />
        <signal name="inst_field(15:11)" />
        <signal name="inst_field(25:0)" />
        <signal name="RegWrite" />
        <signal name="inst_field(15:0)" />
        <signal name="Imm_32(31:0)" />
        <signal name="ALUSrc_B" />
        <signal name="ALU_out(31:0)" />
        <signal name="ALU_Control(2:0)" />
        <signal name="PC_out(31:0)" />
        <signal name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,V5,N0,N0" />
        <signal name="PC_4(31:0)" />
        <signal name="XLXN_33(31:0)" />
        <signal name="XLXN_35(31:0)" />
        <signal name="Imm_32(29:0),N0,N0" />
        <signal name="PC_4(31:28),inst_field(25:0),N0,N0" />
        <signal name="Jump" />
        <signal name="N0" />
        <signal name="XLXN_40(31:0)" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="Branch" />
        <port polarity="Output" name="Data_out(31:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="RegDst" />
        <port polarity="Input" name="MemtoReg" />
        <port polarity="Input" name="Data_in(31:0)" />
        <port polarity="Input" name="inst_field(25:0)" />
        <port polarity="Input" name="RegWrite" />
        <port polarity="Input" name="ALUSrc_B" />
        <port polarity="Output" name="ALU_out(31:0)" />
        <port polarity="Input" name="ALU_Control(2:0)" />
        <port polarity="Output" name="PC_out(31:0)" />
        <port polarity="Input" name="Jump" />
        <port polarity="Input" name="Branch" />
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
            <blockpin signalname="XLXN_1(31:0)" name="rdata_A(31:0)" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_11(31:0)" name="Wt_data(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="rdata_B(31:0)" />
            <blockpin signalname="inst_field(25:21)" name="R_addr_A(4:0)" />
            <blockpin signalname="inst_field(20:16)" name="R_addr_B(4:0)" />
            <blockpin signalname="XLXN_10(4:0)" name="Wt_addr(4:0)" />
        </block>
        <block symbolname="alu" name="U1_1">
            <blockpin signalname="XLXN_41" name="zero" />
            <blockpin signalname="ALU_out(31:0)" name="res(31:0)" />
            <blockpin name="overflow" />
            <blockpin signalname="XLXN_1(31:0)" name="A(31:0)" />
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
        <block symbolname="MUX2T1_32" name="MUXD2">
            <blockpin signalname="MemtoReg" name="s" />
            <blockpin signalname="ALU_out(31:0)" name="I0(31:0)" />
            <blockpin signalname="Data_in(31:0)" name="I1(31:0)" />
            <blockpin signalname="XLXN_11(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="MUX2T1_5" name="MUXD1">
            <blockpin signalname="inst_field(15:11)" name="I1(4:0)" />
            <blockpin signalname="inst_field(20:16)" name="I0(4:0)" />
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
        <block symbolname="MUX2T1_32" name="MUXD4">
            <blockpin signalname="XLXN_42" name="s" />
            <blockpin signalname="PC_4(31:0)" name="I0(31:0)" />
            <blockpin signalname="XLXN_35(31:0)" name="I1(31:0)" />
            <blockpin signalname="XLXN_33(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="MUX2T1_32" name="MUXD5">
            <blockpin signalname="Jump" name="s" />
            <blockpin signalname="XLXN_33(31:0)" name="I0(31:0)" />
            <blockpin signalname="PC_4(31:28),inst_field(25:0),N0,N0" name="I1(31:0)" />
            <blockpin signalname="XLXN_40(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_14">
            <blockpin signalname="N0" name="G" />
        </block>
        <block symbolname="and2" name="XLXI_15">
            <blockpin signalname="XLXN_41" name="I0" />
            <blockpin signalname="Branch" name="I1" />
            <blockpin signalname="XLXN_42" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="928" y="736" name="PC" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="1216" y="1760" name="U2_2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="2096" y="1664" name="U1_1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="96" type="instance" />
        </instance>
        <branch name="XLXN_1(31:0)">
            <wire x2="2096" y1="1376" y2="1376" x1="1696" />
        </branch>
        <instance x="1840" y="1728" name="MUXD3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="Data_out(31:0)">
            <wire x2="1776" y1="1648" y2="1648" x1="1696" />
            <wire x2="1840" y1="1648" y2="1648" x1="1776" />
            <wire x2="1776" y1="1648" y2="2064" x1="1776" />
            <wire x2="2928" y1="2064" y2="2064" x1="1776" />
        </branch>
        <branch name="XLXN_3(31:0)">
            <wire x2="2096" y1="1680" y2="1680" x1="1904" />
        </branch>
        <branch name="clk">
            <wire x2="688" y1="512" y2="512" x1="352" />
            <wire x2="928" y1="512" y2="512" x1="688" />
            <wire x2="688" y1="512" y2="1344" x1="688" />
            <wire x2="1216" y1="1344" y2="1344" x1="688" />
        </branch>
        <branch name="rst">
            <wire x2="640" y1="576" y2="576" x1="352" />
            <wire x2="928" y1="576" y2="576" x1="640" />
            <wire x2="640" y1="576" y2="1392" x1="640" />
            <wire x2="1216" y1="1392" y2="1392" x1="640" />
        </branch>
        <instance x="720" y="336" name="XLXI_5" orien="R0" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="976" y="368" type="branch" />
            <wire x2="784" y1="336" y2="368" x1="784" />
            <wire x2="784" y1="368" y2="640" x1="784" />
            <wire x2="928" y1="640" y2="640" x1="784" />
            <wire x2="976" y1="368" y2="368" x1="784" />
            <wire x2="1136" y1="368" y2="368" x1="976" />
            <wire x2="1136" y1="368" y2="704" x1="1136" />
            <wire x2="1184" y1="704" y2="704" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="352" y="512" name="clk" orien="R180" />
        <iomarker fontsize="28" x="352" y="576" name="rst" orien="R180" />
        <instance x="992" y="1760" name="MUXD2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="RegDst">
            <wire x2="1024" y1="1296" y2="1296" x1="352" />
            <wire x2="1024" y1="1296" y2="1520" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="352" y="1296" name="RegDst" orien="R180" />
        <branch name="XLXN_10(4:0)">
            <wire x2="1216" y1="1568" y2="1568" x1="1040" />
        </branch>
        <branch name="XLXN_11(31:0)">
            <wire x2="1216" y1="1712" y2="1712" x1="1056" />
        </branch>
        <branch name="MemtoReg">
            <wire x2="1024" y1="1632" y2="1632" x1="336" />
            <wire x2="1024" y1="1632" y2="1648" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="336" y="1632" name="MemtoReg" orien="R180" />
        <branch name="Data_in(31:0)">
            <wire x2="992" y1="1744" y2="1744" x1="352" />
        </branch>
        <iomarker fontsize="28" x="352" y="1744" name="Data_in(31:0)" orien="R180" />
        <instance x="1008" y="1600" name="MUXD1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="inst_field(25:21)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="972" y="1440" type="branch" />
            <wire x2="1216" y1="1440" y2="1440" x1="736" />
        </branch>
        <branch name="inst_field(20:16)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="951" y="1488" type="branch" />
            <wire x2="896" y1="1488" y2="1488" x1="736" />
            <wire x2="896" y1="1488" y2="1552" x1="896" />
            <wire x2="1008" y1="1552" y2="1552" x1="896" />
            <wire x2="1216" y1="1488" y2="1488" x1="896" />
        </branch>
        <branch name="inst_field(15:11)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="871" y="1584" type="branch" />
            <wire x2="1008" y1="1584" y2="1584" x1="736" />
        </branch>
        <iomarker fontsize="28" x="352" y="1440" name="inst_field(25:0)" orien="R180" />
        <bustap x2="736" y1="1440" y2="1440" x1="640" />
        <bustap x2="736" y1="1488" y2="1488" x1="640" />
        <bustap x2="736" y1="1584" y2="1584" x1="640" />
        <branch name="RegWrite">
            <wire x2="1456" y1="1184" y2="1184" x1="352" />
            <wire x2="1456" y1="1184" y2="1264" x1="1456" />
        </branch>
        <iomarker fontsize="28" x="352" y="1184" name="RegWrite" orien="R180" />
        <branch name="inst_field(25:0)">
            <wire x2="560" y1="1440" y2="1440" x1="352" />
            <wire x2="640" y1="1440" y2="1440" x1="560" />
            <wire x2="640" y1="1440" y2="1456" x1="640" />
            <wire x2="560" y1="1440" y2="1488" x1="560" />
            <wire x2="640" y1="1488" y2="1488" x1="560" />
            <wire x2="640" y1="1488" y2="1504" x1="640" />
            <wire x2="560" y1="1488" y2="1584" x1="560" />
            <wire x2="640" y1="1584" y2="1584" x1="560" />
            <wire x2="640" y1="1584" y2="1600" x1="640" />
            <wire x2="560" y1="1584" y2="1904" x1="560" />
            <wire x2="864" y1="1904" y2="1904" x1="560" />
            <wire x2="864" y1="1904" y2="1936" x1="864" />
        </branch>
        <bustap x2="960" y1="1904" y2="1904" x1="864" />
        <instance x="1264" y="1904" name="Ext" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="96" y="36" type="instance" />
        </instance>
        <branch name="inst_field(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1135" y="1904" type="branch" />
            <wire x2="1360" y1="1904" y2="1904" x1="960" />
        </branch>
        <branch name="Imm_32(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1658" y="1840" type="branch" />
            <wire x2="1712" y1="1840" y2="1840" x1="1536" />
            <wire x2="1712" y1="1712" y2="1840" x1="1712" />
            <wire x2="1840" y1="1712" y2="1712" x1="1712" />
        </branch>
        <branch name="ALUSrc_B">
            <wire x2="1872" y1="1120" y2="1120" x1="352" />
            <wire x2="1872" y1="1120" y2="1616" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="352" y="1120" name="ALUSrc_B" orien="R180" />
        <branch name="ALU_out(31:0)">
            <wire x2="992" y1="1680" y2="1680" x1="928" />
            <wire x2="928" y1="1680" y2="1968" x1="928" />
            <wire x2="2736" y1="1968" y2="1968" x1="928" />
            <wire x2="2736" y1="1520" y2="1520" x1="2544" />
            <wire x2="2928" y1="1520" y2="1520" x1="2736" />
            <wire x2="2736" y1="1520" y2="1968" x1="2736" />
        </branch>
        <iomarker fontsize="28" x="2928" y="1520" name="ALU_out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2928" y="2064" name="Data_out(31:0)" orien="R0" />
        <branch name="ALU_Control(2:0)">
            <wire x2="2336" y1="1040" y2="1040" x1="352" />
            <wire x2="2336" y1="1040" y2="1280" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="352" y="1040" name="ALU_Control(2:0)" orien="R180" />
        <branch name="PC_out(31:0)">
            <wire x2="1424" y1="608" y2="608" x1="1072" />
            <wire x2="2928" y1="608" y2="608" x1="1424" />
            <wire x2="1424" y1="608" y2="672" x1="1424" />
            <wire x2="1536" y1="672" y2="672" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="2928" y="608" name="PC_out(31:0)" orien="R0" />
        <instance x="1536" y="720" name="ADD_PC_4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="4" type="instance" />
        </instance>
        <branch name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,V5,N0,N0">
            <wire x2="1536" y1="704" y2="704" x1="1280" />
            <wire x2="1280" y1="704" y2="720" x1="1280" />
        </branch>
        <branch name="PC_4(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1841" y="688" type="branch" />
            <wire x2="1760" y1="688" y2="688" x1="1632" />
            <wire x2="1760" y1="688" y2="736" x1="1760" />
            <wire x2="1856" y1="736" y2="736" x1="1760" />
            <wire x2="2128" y1="688" y2="688" x1="1760" />
        </branch>
        <instance x="2128" y="768" name="MUXD4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="2336" y="800" name="MUXD5" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="XLXN_33(31:0)">
            <wire x2="2336" y1="720" y2="720" x1="2192" />
        </branch>
        <instance x="1856" y="784" name="ADD_Branch" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="4" type="instance" />
        </instance>
        <branch name="XLXN_35(31:0)">
            <wire x2="2128" y1="752" y2="752" x1="1952" />
        </branch>
        <branch name="Imm_32(29:0),N0,N0">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="994" y="768" type="branch" />
            <wire x2="1856" y1="768" y2="768" x1="352" />
        </branch>
        <branch name="PC_4(31:28),inst_field(25:0),N0,N0">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1095" y="832" type="branch" />
            <wire x2="2256" y1="832" y2="832" x1="352" />
            <wire x2="2336" y1="784" y2="784" x1="2256" />
            <wire x2="2256" y1="784" y2="832" x1="2256" />
        </branch>
        <branch name="Jump">
            <wire x2="2368" y1="448" y2="448" x1="352" />
            <wire x2="2368" y1="448" y2="688" x1="2368" />
        </branch>
        <iomarker fontsize="28" x="352" y="448" name="Jump" orien="R180" />
        <instance x="2576" y="432" name="XLXI_14" orien="R0" />
        <branch name="N0">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2690" y="208" type="branch" />
            <wire x2="2640" y1="208" y2="304" x1="2640" />
            <wire x2="2736" y1="208" y2="208" x1="2640" />
        </branch>
        <branch name="XLXN_40(31:0)">
            <wire x2="928" y1="704" y2="704" x1="848" />
            <wire x2="848" y1="704" y2="864" x1="848" />
            <wire x2="2464" y1="864" y2="864" x1="848" />
            <wire x2="2464" y1="752" y2="752" x1="2400" />
            <wire x2="2464" y1="752" y2="864" x1="2464" />
        </branch>
        <instance x="2624" y="1040" name="XLXI_15" orien="R270" />
        <branch name="XLXN_41">
            <wire x2="2560" y1="1456" y2="1456" x1="2544" />
            <wire x2="2560" y1="1040" y2="1456" x1="2560" />
        </branch>
        <branch name="XLXN_42">
            <wire x2="2160" y1="640" y2="656" x1="2160" />
            <wire x2="2528" y1="640" y2="640" x1="2160" />
            <wire x2="2528" y1="640" y2="784" x1="2528" />
        </branch>
        <branch name="Branch">
            <wire x2="2384" y1="944" y2="944" x1="352" />
            <wire x2="2384" y1="944" y2="1056" x1="2384" />
            <wire x2="2496" y1="1056" y2="1056" x1="2384" />
            <wire x2="2496" y1="1040" y2="1056" x1="2496" />
        </branch>
        <iomarker fontsize="28" x="352" y="944" name="Branch" orien="R180" />
        <bustap x2="1184" y1="704" y2="704" x1="1280" />
    </sheet>
</drawing>