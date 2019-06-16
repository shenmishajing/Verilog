<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="RSTN" />
        <signal name="BTN_y(3:0)" />
        <signal name="BTN_x(4:0)" />
        <signal name="SW(15:0)" />
        <signal name="CR" />
        <signal name="XLXN_7(4:0)" />
        <signal name="RDY" />
        <signal name="Pluse(3:0)" />
        <signal name="BTN_OK(3:0)" />
        <signal name="BTN_OK(2:0)" />
        <signal name="SW_OK(7:5),SW_OK(15),SW_OK(0)" />
        <signal name="SW_OK(2)" />
        <signal name="readn" />
        <signal name="blink(7:0)" />
        <signal name="seg_clk" />
        <signal name="seg_sout" />
        <signal name="SEG_PEN" />
        <signal name="seg_clrn" />
        <signal name="Div(20)" />
        <signal name="SW_OK(0)" />
        <signal name="Div(25)" />
        <signal name="clk_100MHz" />
        <signal name="SW_OK(15:0)" />
        <signal name="SW_OK(7:5)" />
        <signal name="V5" />
        <signal name="Ai(31:0)" />
        <signal name="Bi(31:0)" />
        <signal name="Div(31:0),Div(31:0)" />
        <signal name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,blink(3:0),N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,blink(7:0),blink(7:0)" />
        <signal name="Div(31:0)" />
        <signal name="XLXN_44(31:0)" />
        <signal name="XLXN_45(31:0)" />
        <signal name="XLXN_46(31:0)" />
        <signal name="XLXN_47(31:0)" />
        <signal name="Clk_CPU" />
        <signal name="XLXN_50(31:0)" />
        <signal name="SW_OK(4)" />
        <signal name="N0,N0,N0,N0,N0,SW(3),Div(27:24)" />
        <signal name="XLXN_55" />
        <signal name="led_clk" />
        <signal name="led_sout" />
        <signal name="LED_PEN" />
        <signal name="led_clrn" />
        <signal name="SW(13:0),SW_OK(15:0),N0,N0" />
        <signal name="rst" />
        <signal name="LE_out(7:0)" />
        <signal name="point_out(7:0)" />
        <signal name="Disp_num(31:0)" />
        <signal name="XLXN_85(21:0)" />
        <signal name="LED(7:0)" />
        <signal name="XLXN_83(1:0)" />
        <signal name="SW_OK(1),Div(19:18)" />
        <signal name="AN(3:0)" />
        <signal name="SEGMENT(7:0)" />
        <signal name="Buzzer" />
        <signal name="XLXN_137(1:0)" />
        <signal name="XLXN_138(15:0)" />
        <signal name="XLXN_141(13:0)" />
        <signal name="N0" />
        <port polarity="Input" name="RSTN" />
        <port polarity="Input" name="BTN_y(3:0)" />
        <port polarity="Output" name="BTN_x(4:0)" />
        <port polarity="Input" name="SW(15:0)" />
        <port polarity="Output" name="CR" />
        <port polarity="Output" name="RDY" />
        <port polarity="Output" name="readn" />
        <port polarity="Output" name="seg_clk" />
        <port polarity="Output" name="seg_sout" />
        <port polarity="Output" name="SEG_PEN" />
        <port polarity="Output" name="seg_clrn" />
        <port polarity="Input" name="clk_100MHz" />
        <port polarity="Output" name="led_clk" />
        <port polarity="Output" name="led_sout" />
        <port polarity="Output" name="LED_PEN" />
        <port polarity="Output" name="led_clrn" />
        <port polarity="Output" name="LED(7:0)" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Output" name="SEGMENT(7:0)" />
        <port polarity="Output" name="Buzzer" />
        <blockdef name="SAnti_jitter">
            <timestamp>2015-12-27T10:36:32</timestamp>
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(170,255,255);fillstyle:Solid" width="300" x="64" y="-248" height="256" />
            <line x2="32" y1="-64" y2="-64" style="linewidth:W" x1="64" />
            <line x2="32" y1="-32" y2="-32" x1="64" />
            <line x2="32" y1="-160" y2="-160" style="linewidth:W" x1="64" />
            <line x2="32" y1="-112" y2="-112" style="linewidth:W" x1="64" />
            <line x2="32" y1="-224" y2="-224" x1="64" />
            <line x2="32" y1="-192" y2="-192" x1="64" />
            <line x2="400" y1="-192" y2="-192" style="linewidth:W" x1="368" />
            <line x2="364" y1="-160" y2="-160" x1="400" />
            <line x2="364" y1="-224" y2="-224" x1="400" />
            <line x2="364" y1="-16" y2="-16" x1="400" />
            <line x2="400" y1="-48" y2="-48" style="linewidth:W" x1="368" />
            <line x2="400" y1="-128" y2="-128" style="linewidth:W" x1="368" />
            <line x2="400" y1="-96" y2="-96" style="linewidth:W" x1="368" />
        </blockdef>
        <blockdef name="clk_div">
            <timestamp>2015-12-27T10:17:44</timestamp>
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(142,240,255);fillstyle:Solid" width="256" x="32" y="-140" height="140" />
            <line x2="0" y1="-80" y2="-80" x1="32" />
            <line x2="0" y1="-112" y2="-112" x1="32" />
            <line x2="0" y1="-32" y2="-32" x1="32" />
            <line x2="320" y1="-112" y2="-112" style="linewidth:W" x1="288" />
            <line x2="320" y1="-32" y2="-32" x1="288" />
        </blockdef>
        <blockdef name="SEnter_2_32">
            <timestamp>2015-12-27T10:39:46</timestamp>
            <line x2="288" y1="-240" y2="-240" x1="320" />
            <line x2="320" y1="-192" y2="-192" style="linewidth:W" x1="288" />
            <line x2="320" y1="-128" y2="-128" style="linewidth:W" x1="288" />
            <line x2="320" y1="-64" y2="-64" style="linewidth:W" x1="288" />
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(170,255,255);fillstyle:Solid" width="256" x="32" y="-272" height="272" />
            <line x2="0" y1="-208" y2="-208" style="linewidth:W" x1="32" />
            <line x2="0" y1="-176" y2="-176" x1="32" />
            <line x2="0" y1="-240" y2="-240" x1="32" />
            <line x2="0" y1="-64" y2="-64" style="linewidth:W" x1="32" />
            <line x2="0" y1="-112" y2="-112" style="linewidth:W" x1="32" />
        </blockdef>
        <blockdef name="SSeg7_Dev">
            <timestamp>2015-12-28T12:22:48</timestamp>
            <line x2="0" y1="-48" y2="-48" style="linewidth:W" x1="32" />
            <line x2="368" y1="-160" y2="-160" x1="384" />
            <line x2="368" y1="-224" y2="-224" x1="384" />
            <line x2="368" y1="-96" y2="-96" x1="384" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="32" />
            <line x2="0" y1="-112" y2="-112" style="linewidth:W" x1="32" />
            <rect style="linecolor:rgb(0,0,0);fillcolor:rgb(174,185,255);fillstyle:Solid" width="336" x="32" y="-372" height="360" />
            <line x2="0" y1="-224" y2="-224" x1="32" />
            <line x2="0" y1="-160" y2="-160" x1="32" />
            <line x2="368" y1="-288" y2="-288" x1="384" />
            <line x2="0" y1="-336" y2="-336" x1="32" />
            <line x2="0" y1="-304" y2="-304" x1="32" />
            <line x2="0" y1="-272" y2="-272" x1="32" />
        </blockdef>
        <blockdef name="Multi_8CH32">
            <timestamp>2015-11-8T11:47:48</timestamp>
            <line x2="0" y1="-528" y2="-528" style="linewidth:W" x1="32" />
            <line x2="0" y1="-464" y2="-464" style="linewidth:W" x1="32" />
            <line x2="0" y1="-672" y2="-672" x1="32" />
            <line x2="0" y1="-624" y2="-624" x1="32" />
            <line x2="0" y1="-576" y2="-576" x1="32" />
            <line x2="0" y1="-416" y2="-416" style="linewidth:W" x1="32" />
            <line x2="0" y1="-368" y2="-368" style="linewidth:W" x1="32" />
            <line x2="0" y1="-320" y2="-320" style="linewidth:W" x1="32" />
            <line x2="0" y1="-272" y2="-272" style="linewidth:W" x1="32" />
            <line x2="0" y1="-224" y2="-224" style="linewidth:W" x1="32" />
            <line x2="0" y1="-176" y2="-176" style="linewidth:W" x1="32" />
            <line x2="0" y1="-128" y2="-128" style="linewidth:W" x1="32" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="32" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="32" />
            <line x2="352" y1="-576" y2="-576" style="linewidth:W" x1="384" />
            <line x2="352" y1="-528" y2="-528" style="linewidth:W" x1="384" />
            <line x2="352" y1="-624" y2="-624" style="linewidth:W" x1="384" />
            <rect style="fillcolor:rgb(179,164,255);fillstyle:Solid" width="320" x="32" y="-696" height="696" />
        </blockdef>
        <blockdef name="ROM_D">
            <timestamp>2016-1-1T5:13:28</timestamp>
            <rect style="fillcolor:rgb(255,170,255);fillstyle:Solid" width="512" x="32" y="4" height="324" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="544" y1="80" y2="80" style="linewidth:W" x1="576" />
        </blockdef>
        <blockdef name="RAM_B">
            <timestamp>2016-1-1T5:47:58</timestamp>
            <rect style="fillcolor:rgb(255,170,255);fillstyle:Solid" width="512" x="32" y="32" height="316" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="32" y1="144" y2="144" style="linewidth:W" x1="0" />
            <line x2="32" y1="224" y2="224" style="linewidth:W" x1="0" />
            <line x2="544" y1="144" y2="144" style="linewidth:W" x1="576" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="SPIO">
            <timestamp>2015-12-27T17:4:22</timestamp>
            <line x2="32" y1="-224" y2="-224" x1="64" />
            <line x2="32" y1="-32" y2="-32" style="linewidth:W" x1="64" />
            <line x2="464" y1="-224" y2="-224" style="linewidth:W" x1="448" />
            <line x2="32" y1="-176" y2="-176" x1="64" />
            <line x2="32" y1="-128" y2="-128" x1="64" />
            <line x2="32" y1="-80" y2="-80" x1="64" />
            <line x2="464" y1="-192" y2="-192" style="linewidth:W" x1="448" />
            <line x2="464" y1="-160" y2="-160" style="linewidth:W" x1="448" />
            <line x2="448" y1="-128" y2="-128" x1="464" />
            <line x2="464" y1="-96" y2="-96" x1="448" />
            <line x2="448" y1="-32" y2="-32" x1="464" />
            <line x2="464" y1="-64" y2="-64" x1="448" />
            <rect style="fillcolor:rgb(149,160,255);fillstyle:Solid" width="384" x="64" y="-260" height="256" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="PIO">
            <timestamp>2015-12-27T10:49:22</timestamp>
            <rect style="fillcolor:rgb(149,160,255);fillstyle:Solid" width="384" x="64" y="-256" height="256" />
            <line x2="32" y1="-224" y2="-224" x1="64" />
            <line x2="32" y1="-160" y2="-160" x1="64" />
            <line x2="32" y1="-96" y2="-96" x1="64" />
            <line x2="32" y1="-32" y2="-32" style="linewidth:W" x1="64" />
            <line x2="480" y1="-32" y2="-32" style="linewidth:W" x1="448" />
            <line x2="480" y1="-128" y2="-128" style="linewidth:W" x1="448" />
            <line x2="480" y1="-224" y2="-224" style="linewidth:W" x1="448" />
        </blockdef>
        <blockdef name="Seg7_Dev">
            <timestamp>2016-1-2T8:4:0</timestamp>
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(192,173,254);fillstyle:Solid" width="288" x="32" y="-240" height="240" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="32" />
            <line x2="0" y1="-208" y2="-208" style="linewidth:W" x1="32" />
            <line x2="352" y1="-192" y2="-192" style="linewidth:W" x1="320" />
            <line x2="352" y1="-64" y2="-64" style="linewidth:W" x1="320" />
            <line x2="0" y1="-64" y2="-64" style="linewidth:W" x1="32" />
            <line x2="32" y1="-144" y2="-144" x1="0" />
            <line x2="32" y1="-176" y2="-176" x1="0" />
            <line x2="0" y1="-96" y2="-96" style="linewidth:W" x1="32" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
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
        <block symbolname="SAnti_jitter" name="U9">
            <blockpin signalname="SW(15:0)" name="SW(15:0)" />
            <blockpin signalname="readn" name="readn" />
            <blockpin signalname="BTN_y(3:0)" name="Key_y(3:0)" />
            <blockpin signalname="BTN_x(4:0)" name="Key_x(4:0)" />
            <blockpin signalname="RSTN" name="RSTN" />
            <blockpin signalname="clk_100MHz" name="clk" />
            <blockpin signalname="XLXN_7(4:0)" name="Key_out(4:0)" />
            <blockpin signalname="RDY" name="Key_ready" />
            <blockpin signalname="CR" name="CR" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="SW_OK(15:0)" name="SW_OK(15:0)" />
            <blockpin signalname="Pluse(3:0)" name="pulse_out(3:0)" />
            <blockpin signalname="BTN_OK(3:0)" name="BTN_OK(3:0)" />
        </block>
        <block symbolname="clk_div" name="U8">
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk_100MHz" name="clk" />
            <blockpin signalname="SW_OK(2)" name="SW2" />
            <blockpin signalname="Div(31:0)" name="clkdiv(31:0)" />
            <blockpin signalname="Clk_CPU" name="Clk_CPU" />
        </block>
        <block symbolname="SEnter_2_32" name="M4">
            <blockpin signalname="readn" name="readn" />
            <blockpin signalname="Ai(31:0)" name="Ai(31:0)" />
            <blockpin signalname="Bi(31:0)" name="Bi(31:0)" />
            <blockpin signalname="blink(7:0)" name="blink(7:0)" />
            <blockpin signalname="XLXN_7(4:0)" name="Din(4:0)" />
            <blockpin signalname="RDY" name="D_ready" />
            <blockpin signalname="clk_100MHz" name="clk" />
            <blockpin signalname="SW_OK(7:5),SW_OK(15),SW_OK(0)" name="Ctrl(4:0)" />
            <blockpin signalname="BTN_OK(2:0)" name="BTN(2:0)" />
        </block>
        <block symbolname="SSeg7_Dev" name="U6">
            <blockpin signalname="LE_out(7:0)" name="LES(7:0)" />
            <blockpin signalname="SEG_PEN" name="SEG_PEN" />
            <blockpin signalname="seg_sout" name="seg_sout" />
            <blockpin signalname="seg_clrn" name="seg_clrn" />
            <blockpin signalname="point_out(7:0)" name="point(7:0)" />
            <blockpin signalname="Disp_num(31:0)" name="Hexs(31:0)" />
            <blockpin signalname="SW_OK(0)" name="SW0" />
            <blockpin signalname="Div(25)" name="flash" />
            <blockpin signalname="seg_clk" name="seg_clk" />
            <blockpin signalname="clk_100MHz" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="Div(20)" name="Start" />
        </block>
        <block symbolname="Multi_8CH32" name="U5">
            <blockpin signalname="SW_OK(7:5)" name="Test(2:0)" />
            <blockpin signalname="Div(31:0),Div(31:0)" name="point_in(63:0)" />
            <blockpin signalname="V5" name="EN" />
            <blockpin signalname="clk_100MHz" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,blink(3:0),N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,blink(7:0),blink(7:0)" name="LES(63:0)" />
            <blockpin signalname="Ai(31:0)" name="Data0(31:0)" />
            <blockpin signalname="Bi(31:0)" name="data1(31:0)" />
            <blockpin signalname="Div(31:0)" name="data2(31:0)" />
            <blockpin signalname="XLXN_44(31:0)" name="data3(31:0)" />
            <blockpin signalname="XLXN_45(31:0)" name="data4(31:0)" />
            <blockpin signalname="XLXN_46(31:0)" name="data5(31:0)" />
            <blockpin signalname="XLXN_47(31:0)" name="data6(31:0)" />
            <blockpin signalname="XLXN_50(31:0)" name="data7(31:0)" />
            <blockpin signalname="point_out(7:0)" name="point_out(7:0)" />
            <blockpin signalname="LE_out(7:0)" name="LE_out(7:0)" />
            <blockpin signalname="Disp_num(31:0)" name="Disp_num(31:0)" />
        </block>
        <block symbolname="ROM_D" name="U2">
            <blockpin signalname="N0,N0,N0,N0,N0,SW(3),Div(27:24)" name="a(9:0)" />
            <blockpin signalname="XLXN_47(31:0)" name="spo(31:0)" />
        </block>
        <block symbolname="RAM_B" name="U3">
            <blockpin signalname="N0,N0,N0,N0,N0,SW(3),Div(27:24)" name="addra(9:0)" />
            <blockpin signalname="XLXN_55" name="clka" />
            <blockpin signalname="SW_OK(4)" name="wea(0:0)" />
            <blockpin signalname="XLXN_47(31:0)" name="dina(31:0)" />
            <blockpin signalname="XLXN_50(31:0)" name="douta(31:0)" />
        </block>
        <block symbolname="inv" name="XLXI_11">
            <blockpin signalname="clk_100MHz" name="I" />
            <blockpin signalname="XLXN_55" name="O" />
        </block>
        <block symbolname="SPIO" name="U7">
            <blockpin signalname="clk_100MHz" name="clk" />
            <blockpin signalname="SW(13:0),SW_OK(15:0),N0,N0" name="P_Data(31:0)" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="V5" name="EN" />
            <blockpin signalname="Div(20)" name="Start" />
            <blockpin signalname="led_clk" name="led_clk" />
            <blockpin signalname="XLXN_141(13:0)" name="GPIOf0(13:0)" />
            <blockpin signalname="XLXN_138(15:0)" name="LED_out(15:0)" />
            <blockpin signalname="XLXN_137(1:0)" name="counter_set(1:0)" />
            <blockpin signalname="led_clrn" name="led_clrn" />
            <blockpin signalname="LED_PEN" name="LED_PEN" />
            <blockpin signalname="led_sout" name="led_sout" />
        </block>
        <block symbolname="vcc" name="XLXI_20">
            <blockpin signalname="V5" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_21">
            <blockpin signalname="N0" name="G" />
        </block>
        <block symbolname="PIO" name="U71">
            <blockpin signalname="clk_100MHz" name="clk" />
            <blockpin signalname="N0" name="rst" />
            <blockpin signalname="V5" name="EN" />
            <blockpin signalname="Ai(31:0)" name="PData_in(31:0)" />
            <blockpin signalname="XLXN_85(21:0)" name="GPIOf0(21:0)" />
            <blockpin signalname="LED(7:0)" name="LED_out(7:0)" />
            <blockpin signalname="XLXN_83(1:0)" name="counter_set(1:0)" />
        </block>
        <block symbolname="Seg7_Dev" name="U61">
            <blockpin signalname="LE_out(7:0)" name="LES(7:0)" />
            <blockpin signalname="SW_OK(1),Div(19:18)" name="Scan(2:0)" />
            <blockpin signalname="SEGMENT(7:0)" name="SEGMENT(7:0)" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
            <blockpin signalname="point_out(7:0)" name="point(7:0)" />
            <blockpin signalname="Div(25)" name="flash" />
            <blockpin signalname="SW_OK(0)" name="SW0" />
            <blockpin signalname="Disp_num(31:0)" name="Hexs(31:0)" />
        </block>
        <block symbolname="buf" name="XLXI_19">
            <blockpin signalname="V5" name="I" />
            <blockpin signalname="Buzzer" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <instance x="1520" y="672" name="U9" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="32" y="8" type="instance" />
        </instance>
        <instance x="1568" y="1216" name="U8" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="RSTN">
            <wire x2="1552" y1="448" y2="448" x1="848" />
        </branch>
        <branch name="BTN_y(3:0)">
            <wire x2="1552" y1="512" y2="512" x1="848" />
        </branch>
        <branch name="BTN_x(4:0)">
            <wire x2="1552" y1="560" y2="560" x1="848" />
        </branch>
        <branch name="SW(15:0)">
            <wire x2="1552" y1="608" y2="608" x1="848" />
        </branch>
        <instance x="2800" y="688" name="M4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="CR">
            <wire x2="2128" y1="448" y2="448" x1="1920" />
        </branch>
        <iomarker fontsize="28" x="2128" y="448" name="CR" orien="R0" />
        <branch name="XLXN_7(4:0)">
            <wire x2="2800" y1="480" y2="480" x1="1920" />
        </branch>
        <branch name="RDY">
            <wire x2="2560" y1="512" y2="512" x1="1920" />
            <wire x2="2800" y1="512" y2="512" x1="2560" />
            <wire x2="2560" y1="304" y2="512" x1="2560" />
            <wire x2="3440" y1="304" y2="304" x1="2560" />
        </branch>
        <branch name="Pluse(3:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2128" y="544" type="branch" />
            <wire x2="2128" y1="544" y2="544" x1="1920" />
        </branch>
        <branch name="BTN_OK(3:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2009" y="576" type="branch" />
            <wire x2="2128" y1="576" y2="576" x1="1920" />
            <wire x2="2128" y1="576" y2="592" x1="2128" />
        </branch>
        <branch name="BTN_OK(2:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2556" y="576" type="branch" />
            <wire x2="2800" y1="576" y2="576" x1="2224" />
        </branch>
        <branch name="SW_OK(7:5),SW_OK(15),SW_OK(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2646" y="624" type="branch" />
            <wire x2="2800" y1="624" y2="624" x1="2208" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1947" y="656" type="branch" />
            <wire x2="1968" y1="720" y2="720" x1="1504" />
            <wire x2="1504" y1="720" y2="1136" x1="1504" />
            <wire x2="1568" y1="1136" y2="1136" x1="1504" />
            <wire x2="1504" y1="1136" y2="1440" x1="1504" />
            <wire x2="4096" y1="1440" y2="1440" x1="1504" />
            <wire x2="1968" y1="656" y2="656" x1="1920" />
            <wire x2="1968" y1="656" y2="720" x1="1968" />
        </branch>
        <branch name="SW_OK(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1496" y="1184" type="branch" />
            <wire x2="1568" y1="1184" y2="1184" x1="1424" />
        </branch>
        <branch name="readn">
            <wire x2="1552" y1="640" y2="640" x1="1472" />
            <wire x2="1472" y1="640" y2="752" x1="1472" />
            <wire x2="3392" y1="752" y2="752" x1="1472" />
            <wire x2="3392" y1="448" y2="448" x1="3120" />
            <wire x2="3440" y1="448" y2="448" x1="3392" />
            <wire x2="3392" y1="448" y2="752" x1="3392" />
        </branch>
        <iomarker fontsize="28" x="3440" y="448" name="readn" orien="R0" />
        <branch name="blink(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3266" y="624" type="branch" />
            <wire x2="3440" y1="624" y2="624" x1="3120" />
        </branch>
        <instance x="3744" y="768" name="U6" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-12" type="instance" />
        </instance>
        <branch name="seg_clk">
            <wire x2="4416" y1="480" y2="480" x1="4128" />
        </branch>
        <branch name="seg_sout">
            <wire x2="4416" y1="544" y2="544" x1="4128" />
        </branch>
        <branch name="SEG_PEN">
            <wire x2="4416" y1="608" y2="608" x1="4128" />
        </branch>
        <branch name="seg_clrn">
            <wire x2="4416" y1="672" y2="672" x1="4128" />
        </branch>
        <iomarker fontsize="28" x="4416" y="480" name="seg_clk" orien="R0" />
        <iomarker fontsize="28" x="4416" y="544" name="seg_sout" orien="R0" />
        <iomarker fontsize="28" x="4416" y="608" name="SEG_PEN" orien="R0" />
        <iomarker fontsize="28" x="4416" y="672" name="seg_clrn" orien="R0" />
        <bustap x2="2208" y1="624" y2="624" x1="2112" />
        <bustap x2="2224" y1="576" y2="576" x1="2128" />
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3616" y="464" type="branch" />
            <wire x2="3744" y1="464" y2="464" x1="3616" />
        </branch>
        <branch name="Div(20)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3616" y="496" type="branch" />
            <wire x2="3744" y1="496" y2="496" x1="3616" />
        </branch>
        <branch name="SW_OK(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3616" y="544" type="branch" />
            <wire x2="3744" y1="544" y2="544" x1="3616" />
        </branch>
        <branch name="Div(25)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3616" y="608" type="branch" />
            <wire x2="3744" y1="608" y2="608" x1="3616" />
        </branch>
        <instance x="4096" y="2064" name="U5" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="LE_out(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4058" y="864" type="branch" />
            <wire x2="3744" y1="720" y2="720" x1="3696" />
            <wire x2="3696" y1="720" y2="864" x1="3696" />
            <wire x2="4640" y1="864" y2="864" x1="3696" />
            <wire x2="4640" y1="864" y2="1536" x1="4640" />
            <wire x2="4640" y1="1536" y2="1536" x1="4480" />
        </branch>
        <branch name="point_out(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4058" y="912" type="branch" />
            <wire x2="3664" y1="688" y2="912" x1="3664" />
            <wire x2="4592" y1="912" y2="912" x1="3664" />
            <wire x2="4592" y1="912" y2="1488" x1="4592" />
            <wire x2="3744" y1="688" y2="688" x1="3664" />
            <wire x2="4592" y1="1488" y2="1488" x1="4480" />
        </branch>
        <branch name="Disp_num(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4078" y="976" type="branch" />
            <wire x2="3744" y1="656" y2="656" x1="3616" />
            <wire x2="3616" y1="656" y2="976" x1="3616" />
            <wire x2="4560" y1="976" y2="976" x1="3616" />
            <wire x2="4560" y1="976" y2="1440" x1="4560" />
            <wire x2="4560" y1="1440" y2="1440" x1="4480" />
        </branch>
        <branch name="clk_100MHz">
            <wire x2="960" y1="1392" y2="1392" x1="848" />
            <wire x2="1408" y1="1392" y2="1392" x1="960" />
            <wire x2="4096" y1="1392" y2="1392" x1="1408" />
            <wire x2="960" y1="1392" y2="2704" x1="960" />
            <wire x2="1136" y1="2704" y2="2704" x1="960" />
            <wire x2="1408" y1="368" y2="480" x1="1408" />
            <wire x2="1408" y1="480" y2="1104" x1="1408" />
            <wire x2="1568" y1="1104" y2="1104" x1="1408" />
            <wire x2="1408" y1="1104" y2="1392" x1="1408" />
            <wire x2="1552" y1="480" y2="480" x1="1408" />
            <wire x2="2288" y1="368" y2="368" x1="1408" />
            <wire x2="2288" y1="368" y2="448" x1="2288" />
            <wire x2="2800" y1="448" y2="448" x1="2288" />
            <wire x2="3616" y1="368" y2="368" x1="2288" />
            <wire x2="3616" y1="368" y2="432" x1="3616" />
            <wire x2="3744" y1="432" y2="432" x1="3616" />
        </branch>
        <branch name="SW_OK(15:0)">
            <wire x2="2064" y1="624" y2="624" x1="1920" />
            <wire x2="2112" y1="624" y2="624" x1="2064" />
            <wire x2="2064" y1="624" y2="1536" x1="2064" />
            <wire x2="2944" y1="1536" y2="1536" x1="2064" />
            <wire x2="2944" y1="1536" y2="1552" x1="2944" />
        </branch>
        <branch name="SW_OK(7:5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3523" y="1536" type="branch" />
            <wire x2="4096" y1="1536" y2="1536" x1="3040" />
        </branch>
        <bustap x2="3040" y1="1536" y2="1536" x1="2944" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3760" y="1488" type="branch" />
            <wire x2="4096" y1="1488" y2="1488" x1="3760" />
        </branch>
        <branch name="Ai(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3793" y="1696" type="branch" />
            <wire x2="3296" y1="496" y2="496" x1="3120" />
            <wire x2="3296" y1="496" y2="1696" x1="3296" />
            <wire x2="4096" y1="1696" y2="1696" x1="3296" />
        </branch>
        <branch name="Bi(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3824" y="1744" type="branch" />
            <wire x2="3248" y1="560" y2="560" x1="3120" />
            <wire x2="3248" y1="560" y2="1744" x1="3248" />
            <wire x2="3824" y1="1744" y2="1744" x1="3248" />
            <wire x2="4096" y1="1744" y2="1744" x1="3824" />
        </branch>
        <branch name="Div(31:0),Div(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3918" y="1600" type="branch" />
            <wire x2="4096" y1="1600" y2="1600" x1="3760" />
        </branch>
        <branch name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,blink(3:0),N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,blink(7:0),blink(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3918" y="1648" type="branch" />
            <wire x2="4096" y1="1648" y2="1648" x1="3760" />
        </branch>
        <branch name="Div(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3926" y="1792" type="branch" />
            <wire x2="4096" y1="1792" y2="1792" x1="3760" />
        </branch>
        <branch name="XLXN_44(31:0)">
            <wire x2="4096" y1="1840" y2="1840" x1="3760" />
        </branch>
        <branch name="XLXN_45(31:0)">
            <wire x2="4096" y1="1888" y2="1888" x1="3760" />
        </branch>
        <branch name="XLXN_46(31:0)">
            <wire x2="4096" y1="1936" y2="1936" x1="3760" />
        </branch>
        <branch name="XLXN_47(31:0)">
            <wire x2="1408" y1="2384" y2="2656" x1="1408" />
            <wire x2="1472" y1="2656" y2="2656" x1="1408" />
            <wire x2="2112" y1="2384" y2="2384" x1="1408" />
            <wire x2="2112" y1="1984" y2="1984" x1="2048" />
            <wire x2="4096" y1="1984" y2="1984" x1="2112" />
            <wire x2="2112" y1="1984" y2="2384" x1="2112" />
        </branch>
        <branch name="Div(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="1104" type="branch" />
            <wire x2="2112" y1="1104" y2="1104" x1="1888" />
        </branch>
        <branch name="Clk_CPU">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="1184" type="branch" />
            <wire x2="2112" y1="1184" y2="1184" x1="1888" />
        </branch>
        <instance x="1472" y="1904" name="U2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="328" type="instance" />
        </instance>
        <instance x="1472" y="2432" name="U3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="348" type="instance" />
        </instance>
        <branch name="XLXN_50(31:0)">
            <wire x2="2224" y1="2576" y2="2576" x1="2048" />
            <wire x2="4096" y1="2032" y2="2032" x1="2224" />
            <wire x2="2224" y1="2032" y2="2576" x1="2224" />
        </branch>
        <branch name="SW_OK(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="848" y="2576" type="branch" />
            <wire x2="1472" y1="2576" y2="2576" x1="848" />
        </branch>
        <branch name="N0,N0,N0,N0,N0,SW(3),Div(27:24)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1029" y="1984" type="branch" />
            <wire x2="1344" y1="1984" y2="1984" x1="848" />
            <wire x2="1344" y1="1984" y2="2512" x1="1344" />
            <wire x2="1472" y1="2512" y2="2512" x1="1344" />
            <wire x2="1472" y1="1984" y2="1984" x1="1344" />
        </branch>
        <instance x="1136" y="2736" name="XLXI_11" orien="R0" />
        <branch name="XLXN_55">
            <wire x2="1472" y1="2704" y2="2704" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="848" y="1392" name="clk_100MHz" orien="R180" />
        <iomarker fontsize="28" x="848" y="608" name="SW(15:0)" orien="R180" />
        <iomarker fontsize="28" x="848" y="560" name="BTN_x(4:0)" orien="R180" />
        <iomarker fontsize="28" x="848" y="512" name="BTN_y(3:0)" orien="R180" />
        <iomarker fontsize="28" x="848" y="448" name="RSTN" orien="R180" />
        <instance x="4000" y="2704" name="U7" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="32" y="-4" type="instance" />
        </instance>
        <branch name="led_clk">
            <wire x2="4656" y1="2576" y2="2576" x1="4464" />
        </branch>
        <branch name="led_sout">
            <wire x2="4656" y1="2608" y2="2608" x1="4464" />
        </branch>
        <branch name="LED_PEN">
            <wire x2="4656" y1="2640" y2="2640" x1="4464" />
        </branch>
        <branch name="led_clrn">
            <wire x2="4656" y1="2672" y2="2672" x1="4464" />
        </branch>
        <iomarker fontsize="28" x="4656" y="2576" name="led_clk" orien="R0" />
        <iomarker fontsize="28" x="4656" y="2608" name="led_sout" orien="R0" />
        <iomarker fontsize="28" x="4656" y="2640" name="LED_PEN" orien="R0" />
        <iomarker fontsize="28" x="4656" y="2672" name="led_clrn" orien="R0" />
        <branch name="clk_100MHz">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3792" y="2480" type="branch" />
            <wire x2="4032" y1="2480" y2="2480" x1="3792" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3792" y="2528" type="branch" />
            <wire x2="4032" y1="2528" y2="2528" x1="3792" />
        </branch>
        <branch name="V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3792" y="2576" type="branch" />
            <wire x2="4032" y1="2576" y2="2576" x1="3792" />
        </branch>
        <branch name="Div(20)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3792" y="2624" type="branch" />
            <wire x2="4032" y1="2624" y2="2624" x1="3792" />
        </branch>
        <branch name="SW(13:0),SW_OK(15:0),N0,N0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3792" y="2672" type="branch" />
            <wire x2="4032" y1="2672" y2="2672" x1="3792" />
        </branch>
        <instance x="5008" y="992" name="XLXI_20" orien="R0" />
        <instance x="5008" y="1408" name="XLXI_21" orien="R0" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4960" y="1088" type="branch" />
            <wire x2="5072" y1="1088" y2="1088" x1="4960" />
            <wire x2="5072" y1="992" y2="1088" x1="5072" />
        </branch>
        <iomarker fontsize="28" x="3440" y="304" name="RDY" orien="R0" />
        <branch name="XLXN_137(1:0)">
            <wire x2="4672" y1="2480" y2="2480" x1="4464" />
        </branch>
        <branch name="XLXN_138(15:0)">
            <wire x2="4672" y1="2512" y2="2512" x1="4464" />
        </branch>
        <branch name="XLXN_141(13:0)">
            <wire x2="4672" y1="2544" y2="2544" x1="4464" />
            <wire x2="4672" y1="2544" y2="2560" x1="4672" />
        </branch>
        <branch name="N0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4944" y="1200" type="branch" />
            <wire x2="5072" y1="1200" y2="1200" x1="4944" />
            <wire x2="5072" y1="1200" y2="1280" x1="5072" />
        </branch>
    </sheet>
    <sheet sheetnum="2" width="5440" height="3520">
        <instance x="1936" y="1856" name="U71" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="32" y="0" type="instance" />
        </instance>
        <branch name="XLXN_85(21:0)">
            <wire x2="2736" y1="1824" y2="1824" x1="2416" />
        </branch>
        <branch name="LED(7:0)">
            <wire x2="2736" y1="1728" y2="1728" x1="2416" />
        </branch>
        <branch name="XLXN_83(1:0)">
            <wire x2="2736" y1="1632" y2="1632" x1="2416" />
        </branch>
        <branch name="Ai(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1616" y="1824" type="branch" />
            <wire x2="1968" y1="1824" y2="1824" x1="1616" />
        </branch>
        <branch name="V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1616" y="1760" type="branch" />
            <wire x2="1968" y1="1760" y2="1760" x1="1616" />
        </branch>
        <branch name="clk_100MHz">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1616" y="1632" type="branch" />
            <wire x2="1968" y1="1632" y2="1632" x1="1616" />
        </branch>
        <iomarker fontsize="28" x="2736" y="1728" name="LED(7:0)" orien="R0" />
        <branch name="SW_OK(1),Div(19:18)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1737" y="816" type="branch" />
            <wire x2="1744" y1="816" y2="816" x1="1616" />
            <wire x2="2000" y1="816" y2="816" x1="1744" />
        </branch>
        <instance x="2000" y="1024" name="U61" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="AN(3:0)">
            <wire x2="2560" y1="960" y2="960" x1="2352" />
        </branch>
        <branch name="SEGMENT(7:0)">
            <wire x2="2560" y1="832" y2="832" x1="2352" />
        </branch>
        <branch name="LE_out(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1616" y="992" type="branch" />
            <wire x2="2000" y1="992" y2="992" x1="1616" />
        </branch>
        <branch name="point_out(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1616" y="960" type="branch" />
            <wire x2="1632" y1="960" y2="960" x1="1616" />
            <wire x2="2000" y1="960" y2="960" x1="1632" />
        </branch>
        <branch name="Disp_num(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1625" y="928" type="branch" />
            <wire x2="1632" y1="928" y2="928" x1="1616" />
            <wire x2="2000" y1="928" y2="928" x1="1632" />
        </branch>
        <branch name="Div(25)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1616" y="880" type="branch" />
            <wire x2="2000" y1="880" y2="880" x1="1616" />
        </branch>
        <branch name="SW_OK(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1616" y="848" type="branch" />
            <wire x2="1664" y1="848" y2="848" x1="1616" />
            <wire x2="2000" y1="848" y2="848" x1="1664" />
        </branch>
        <iomarker fontsize="28" x="2560" y="960" name="AN(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2560" y="832" name="SEGMENT(7:0)" orien="R0" />
        <instance x="2000" y="1344" name="XLXI_19" orien="R0" />
        <branch name="Buzzer">
            <wire x2="2576" y1="1312" y2="1312" x1="2224" />
        </branch>
        <branch name="V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1616" y="1312" type="branch" />
            <wire x2="2000" y1="1312" y2="1312" x1="1616" />
        </branch>
        <iomarker fontsize="28" x="2576" y="1312" name="Buzzer" orien="R0" />
        <branch name="N0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="1696" type="branch" />
            <wire x2="1968" y1="1696" y2="1696" x1="1600" />
        </branch>
    </sheet>
</drawing>