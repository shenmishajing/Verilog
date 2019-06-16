<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_4" />
        <signal name="XLXN_6" />
        <signal name="clk" />
        <signal name="reset" />
        <signal name="Data_in(31:0)" />
        <signal name="inst_in(31:26)" />
        <signal name="inst_in(5:0)" />
        <signal name="inst_in(31:0)" />
        <signal name="inst_in(25:0)" />
        <signal name="MIO_ready" />
        <signal name="XLXN_7(2:0)" />
        <signal name="mem_w" />
        <signal name="CPU_MIO" />
        <signal name="PC_out(31:0)" />
        <signal name="Addr_out(31:0)" />
        <signal name="Data_out(31:0)" />
        <signal name="INT" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24(1:0)" />
        <signal name="XLXN_25(1:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="Data_in(31:0)" />
        <port polarity="Input" name="inst_in(31:0)" />
        <port polarity="Input" name="MIO_ready" />
        <port polarity="Output" name="mem_w" />
        <port polarity="Output" name="CPU_MIO" />
        <port polarity="Output" name="PC_out(31:0)" />
        <port polarity="Output" name="Addr_out(31:0)" />
        <port polarity="Output" name="Data_out(31:0)" />
        <port polarity="Input" name="INT" />
        <blockdef name="SCPU_ctrl_more">
            <timestamp>2016-2-27T6:31:0</timestamp>
            <rect style="linewidth:W;linecolor:rgb(255,0,0);fillcolor:rgb(255,170,255)" width="336" x="64" y="-576" height="576" />
            <line x2="464" y1="-544" y2="-544" x1="400" />
            <line x2="464" y1="-480" y2="-480" x1="400" />
            <line x2="464" y1="-416" y2="-416" style="linewidth:W" x1="400" />
            <line x2="464" y1="-352" y2="-352" x1="400" />
            <line x2="464" y1="-160" y2="-160" style="linewidth:W" x1="400" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <line x2="0" y1="-352" y2="-352" style="linewidth:W" x1="64" />
            <line x2="0" y1="-432" y2="-432" style="linewidth:W" x1="64" />
            <line x2="464" y1="-288" y2="-288" style="linewidth:W" x1="400" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
        </blockdef>
        <blockdef name="Data_path_more">
            <timestamp>2016-2-27T6:31:0</timestamp>
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(0,255,255)" width="352" x="64" y="-856" height="740" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" style="linewidth:W" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" style="linewidth:W" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" style="linewidth:W" x1="64" />
            <rect width="64" x="0" y="-700" height="24" />
            <line x2="0" y1="-688" y2="-688" x1="64" />
            <line x2="0" y1="-624" y2="-624" style="linewidth:W" x1="64" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <rect width="64" x="416" y="-700" height="24" />
            <line x2="480" y1="-688" y2="-688" x1="416" />
            <rect width="64" x="416" y="-540" height="24" />
            <line x2="480" y1="-528" y2="-528" x1="416" />
            <rect width="64" x="416" y="-412" height="24" />
            <line x2="480" y1="-400" y2="-400" x1="416" />
            <line x2="416" y1="-288" y2="-288" x1="480" />
            <line x2="416" y1="-224" y2="-224" x1="480" />
        </blockdef>
        <block symbolname="SCPU_ctrl_more" name="Controler">
            <blockpin signalname="XLXN_1" name="RegDst" />
            <blockpin signalname="XLXN_2" name="ALUSrc_B" />
            <blockpin signalname="XLXN_24(1:0)" name="DatatoReg(1:0)" />
            <blockpin signalname="XLXN_4" name="Jal" />
            <blockpin signalname="XLXN_7(2:0)" name="ALU_Control(2:0)" />
            <blockpin signalname="CPU_MIO" name="CPU_MIO" />
            <blockpin signalname="mem_w" name="mem_w" />
            <blockpin signalname="inst_in(5:0)" name="Fun(5:0)" />
            <blockpin signalname="inst_in(31:26)" name="OPcode(5:0)" />
            <blockpin signalname="XLXN_25(1:0)" name="Branch(1:0)" />
            <blockpin signalname="XLXN_6" name="RegWrite" />
            <blockpin signalname="MIO_ready" name="MIO_ready" />
            <blockpin signalname="XLXN_23" name="zero" />
        </block>
        <block symbolname="Data_path_more" name="Data_path">
            <blockpin signalname="XLXN_1" name="RegDst" />
            <blockpin signalname="XLXN_2" name="ALUSrc_B" />
            <blockpin signalname="XLXN_24(1:0)" name="DatatoReg(1:0)" />
            <blockpin signalname="XLXN_4" name="Jal" />
            <blockpin signalname="XLXN_25(1:0)" name="Branch(1:0)" />
            <blockpin signalname="XLXN_6" name="RegWrite" />
            <blockpin signalname="XLXN_7(2:0)" name="ALU_Control(2:0)" />
            <blockpin signalname="Data_in(31:0)" name="Data_in(31:0)" />
            <blockpin signalname="inst_in(25:0)" name="inst_field(25:0)" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="rst" />
            <blockpin signalname="PC_out(31:0)" name="PC_out(31:0)" />
            <blockpin signalname="Addr_out(31:0)" name="ALU_out(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="Data_out(31:0)" />
            <blockpin signalname="XLXN_23" name="zero" />
            <blockpin name="overflow" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_1">
            <wire x2="1776" y1="1040" y2="1040" x1="1360" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1776" y1="1104" y2="1104" x1="1360" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1776" y1="1232" y2="1232" x1="1360" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1776" y1="1360" y2="1360" x1="1360" />
        </branch>
        <branch name="clk">
            <wire x2="1776" y1="784" y2="784" x1="576" />
        </branch>
        <branch name="reset">
            <wire x2="1776" y1="848" y2="848" x1="576" />
        </branch>
        <branch name="Data_in(31:0)">
            <wire x2="1776" y1="896" y2="896" x1="576" />
        </branch>
        <bustap x2="832" y1="1152" y2="1152" x1="736" />
        <bustap x2="832" y1="1232" y2="1232" x1="736" />
        <branch name="inst_in(31:26)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="864" y="1152" type="branch" />
            <wire x2="864" y1="1152" y2="1152" x1="832" />
            <wire x2="896" y1="1152" y2="1152" x1="864" />
        </branch>
        <branch name="inst_in(5:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="865" y="1232" type="branch" />
            <wire x2="864" y1="1232" y2="1232" x1="832" />
            <wire x2="896" y1="1232" y2="1232" x1="864" />
        </branch>
        <branch name="inst_in(31:0)">
            <wire x2="736" y1="960" y2="960" x1="576" />
            <wire x2="736" y1="960" y2="1152" x1="736" />
            <wire x2="736" y1="1152" y2="1232" x1="736" />
            <wire x2="736" y1="1232" y2="1264" x1="736" />
            <wire x2="960" y1="960" y2="960" x1="736" />
            <wire x2="960" y1="944" y2="960" x1="960" />
        </branch>
        <bustap x2="1056" y1="960" y2="960" x1="960" />
        <branch name="inst_in(25:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1405" y="960" type="branch" />
            <wire x2="1408" y1="960" y2="960" x1="1056" />
            <wire x2="1776" y1="960" y2="960" x1="1408" />
        </branch>
        <branch name="XLXN_7(2:0)">
            <wire x2="1776" y1="1424" y2="1424" x1="1360" />
        </branch>
        <branch name="mem_w">
            <wire x2="1376" y1="1488" y2="1488" x1="1360" />
            <wire x2="2736" y1="1488" y2="1488" x1="1376" />
        </branch>
        <branch name="CPU_MIO">
            <wire x2="1376" y1="1552" y2="1552" x1="1360" />
            <wire x2="2736" y1="1552" y2="1552" x1="1376" />
        </branch>
        <branch name="PC_out(31:0)">
            <wire x2="2736" y1="896" y2="896" x1="2256" />
        </branch>
        <branch name="Addr_out(31:0)">
            <wire x2="2736" y1="1056" y2="1056" x1="2256" />
        </branch>
        <branch name="Data_out(31:0)">
            <wire x2="2736" y1="1184" y2="1184" x1="2256" />
        </branch>
        <branch name="INT">
            <wire x2="960" y1="1696" y2="1696" x1="576" />
        </branch>
        <iomarker fontsize="28" x="576" y="784" name="clk" orien="R180" />
        <iomarker fontsize="28" x="576" y="848" name="reset" orien="R180" />
        <iomarker fontsize="28" x="576" y="896" name="Data_in(31:0)" orien="R180" />
        <iomarker fontsize="28" x="576" y="960" name="inst_in(31:0)" orien="R180" />
        <iomarker fontsize="28" x="2736" y="896" name="PC_out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2736" y="1056" name="Addr_out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2736" y="1184" name="Data_out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="576" y="1696" name="INT" orien="R180" />
        <instance x="896" y="1584" name="Controler" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="MIO_ready">
            <wire x2="880" y1="1488" y2="1488" x1="576" />
            <wire x2="896" y1="1488" y2="1488" x1="880" />
        </branch>
        <iomarker fontsize="28" x="576" y="1488" name="MIO_ready" orien="R180" />
        <instance x="1776" y="1584" name="Data_path" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-116" type="instance" />
        </instance>
        <iomarker fontsize="28" x="2736" y="1488" name="mem_w" orien="R0" />
        <branch name="XLXN_23">
            <wire x2="896" y1="1536" y2="1536" x1="816" />
            <wire x2="816" y1="1536" y2="1632" x1="816" />
            <wire x2="2336" y1="1632" y2="1632" x1="816" />
            <wire x2="2336" y1="1296" y2="1296" x1="2256" />
            <wire x2="2336" y1="1296" y2="1632" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2736" y="1552" name="CPU_MIO" orien="R0" />
        <branch name="XLXN_24(1:0)">
            <wire x2="1776" y1="1168" y2="1168" x1="1360" />
        </branch>
        <branch name="XLXN_25(1:0)">
            <wire x2="1776" y1="1296" y2="1296" x1="1360" />
        </branch>
    </sheet>
</drawing>