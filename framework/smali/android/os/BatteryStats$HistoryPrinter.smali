.class public Landroid/os/BatteryStats$HistoryPrinter;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoryPrinter"
.end annotation


# instance fields
.field lastTime:J

.field oldChargeMAh:I

.field oldHealth:I

.field oldLevel:I

.field oldPlug:I

.field oldState:I

.field oldState2:I

.field oldStatus:I

.field oldTemp:I

.field oldVolt:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    return-void
.end method

.method private printStepCpuUidCheckinDetails(Ljava/io/PrintWriter;III)V
    .registers 6

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    return-void
.end method

.method private printStepCpuUidDetails(Ljava/io/PrintWriter;III)V
    .registers 6

    invoke-static {p1, p2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, "u+"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, "s"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V
    .registers 20

    if-nez p5, :cond_39

    const-string/jumbo v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v0, v0, p3

    const/16 v2, 0x13

    invoke-static {v0, v1, p1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    const-string/jumbo v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ") "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_22
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6b

    if-eqz p5, :cond_2f

    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2f
    const-string/jumbo v0, "START"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    :goto_38
    return-void

    :cond_39
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    const-string/jumbo v0, "h"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    iget-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_62

    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v0, v0, p3

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    :goto_5d
    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    goto :goto_22

    :cond_62
    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v2, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_5d

    :cond_6b
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v1, 0x5

    if-eq v0, v1, :cond_75

    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v1, 0x7

    if-ne v0, v1, :cond_b0

    :cond_75
    if-eqz p5, :cond_7d

    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_7d
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v1, 0x7

    if-ne v0, v1, :cond_8b

    const-string/jumbo v0, "RESET:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    :cond_8b
    const-string/jumbo v0, "TIME:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p5, :cond_99

    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    goto :goto_38

    :cond_99
    const-string/jumbo v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "yyyy-MM-dd-HH-mm-ss"

    iget-wide v2, p2, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_38

    :cond_b0
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v1, 0x8

    if-ne v0, v1, :cond_c6

    if-eqz p5, :cond_be

    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_be
    const-string/jumbo v0, "SHUTDOWN"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_38

    :cond_c6
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_db

    if-eqz p5, :cond_d3

    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_d3
    const-string/jumbo v0, "*OVERFLOW*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_38

    :cond_db
    if-nez p5, :cond_3d4

    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const/16 v1, 0xa

    if-ge v0, v1, :cond_372

    const-string/jumbo v0, "00"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_e9
    :goto_e9
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    if-eqz p6, :cond_10f

    const-string/jumbo v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    if-ltz v0, :cond_106

    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_380

    const-string/jumbo v0, "0000000"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_106
    :goto_106
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_10f
    :goto_10f
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    iget-byte v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    if-eq v0, v1, :cond_12b

    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    if-eqz p5, :cond_3eb

    const-string/jumbo v0, ",Bs="

    :goto_11e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    packed-switch v0, :pswitch_data_64c

    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    :cond_12b
    :goto_12b
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    iget-byte v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-eq v0, v1, :cond_147

    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    if-eqz p5, :cond_436

    const-string/jumbo v0, ",Bh="

    :goto_13a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    packed-switch v0, :pswitch_data_65a

    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    :cond_147
    :goto_147
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    iget-byte v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-eq v0, v1, :cond_163

    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    if-eqz p5, :cond_49d

    const-string/jumbo v0, ",Bp="

    :goto_156
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    packed-switch v0, :pswitch_data_66c

    :pswitch_15e
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    :cond_163
    :goto_163
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    iget-short v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    if-eq v0, v1, :cond_17a

    iget-short v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    if-eqz p5, :cond_4da

    const-string/jumbo v0, ",Bt="

    :goto_172
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    :cond_17a
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    iget-char v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    if-eq v0, v1, :cond_191

    iget-char v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    if-eqz p5, :cond_4df

    const-string/jumbo v0, ",Bv="

    :goto_189
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    :cond_191
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    div-int/lit16 v6, v0, 0x3e8

    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    if-eq v0, v6, :cond_1a8

    iput v6, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    if-eqz p5, :cond_4e4

    const-string/jumbo v0, ",Bcc="

    :goto_1a0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    :cond_1a8
    iget v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    iget v2, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object v3, p2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    sget-object v4, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    xor-int/lit8 v5, p5, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/io/PrintWriter;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    iget v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    iget v2, p2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    sget-object v4, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    xor-int/lit8 v5, p5, 0x1

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/io/PrintWriter;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_1d6

    if-eqz p5, :cond_4e9

    const-string/jumbo v0, ",wr="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget v0, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    :cond_1d6
    :goto_1d6
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v0, :cond_214

    if-eqz p5, :cond_50b

    const-string/jumbo v0, ","

    :goto_1df
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_510

    const-string/jumbo v0, "+"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1f0
    :goto_1f0
    if-eqz p5, :cond_51e

    sget-object v7, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    :goto_1f4
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v1, -0xc001

    and-int v8, v0, v1

    if-ltz v8, :cond_522

    array-length v0, v7

    if-ge v8, v0, :cond_522

    aget-object v0, v7, v8

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_205
    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p5, :cond_533

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v0, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    :cond_214
    :goto_214
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-eqz v0, :cond_368

    if-nez p5, :cond_557

    const-string/jumbo v0, "                 Details: cpu="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, "u+"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, "s"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    if-ltz v0, :cond_293

    const-string/jumbo v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/io/PrintWriter;III)V

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    if-ltz v0, :cond_273

    const-string/jumbo v0, ", "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/io/PrintWriter;III)V

    :cond_273
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    if-ltz v0, :cond_28e

    const-string/jumbo v0, ", "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/io/PrintWriter;III)V

    :cond_28e
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    :cond_293
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "                          /proc/stat="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " usr, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " sys, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " io, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " irq, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " sirq, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " idle"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    add-int/2addr v0, v1

    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    add-int/2addr v0, v1

    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    add-int/2addr v0, v1

    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    add-int v12, v0, v1

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    add-int v11, v12, v0

    if-lez v11, :cond_348

    const-string/jumbo v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-float v0, v12

    int-to-float v1, v11

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v9, v0, v1

    const-string/jumbo v0, "%.1f%%"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " of "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    mul-int/lit8 v0, v11, 0xa

    int-to-long v0, v0

    invoke-static {v10, v0, v1}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_348
    const-string/jumbo v0, ", PlatformIdleStat "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statPlatformIdleState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, ", SubsystemPowerState "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_368
    :goto_368
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    goto/16 :goto_38

    :cond_372
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const/16 v1, 0x64

    if-ge v0, v1, :cond_e9

    const-string/jumbo v0, "0"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_e9

    :cond_380
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v1, 0x100

    if-ge v0, v1, :cond_38e

    const-string/jumbo v0, "000000"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_106

    :cond_38e
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v1, 0x1000

    if-ge v0, v1, :cond_39c

    const-string/jumbo v0, "00000"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_106

    :cond_39c
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_3aa

    const-string/jumbo v0, "0000"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_106

    :cond_3aa
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v1, 0x100000

    if-ge v0, v1, :cond_3b8

    const-string/jumbo v0, "000"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_106

    :cond_3b8
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v1, 0x1000000

    if-ge v0, v1, :cond_3c6

    const-string/jumbo v0, "00"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_106

    :cond_3c6
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v1, 0x10000000

    if-ge v0, v1, :cond_106

    const-string/jumbo v0, "0"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_106

    :cond_3d4
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    iget-byte v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-eq v0, v1, :cond_10f

    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    const-string/jumbo v0, ",Bl="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    goto/16 :goto_10f

    :cond_3eb
    const-string/jumbo v0, " status="

    goto/16 :goto_11e

    :pswitch_3f0
    if-eqz p5, :cond_3fa

    const-string/jumbo v0, "?"

    :goto_3f5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_12b

    :cond_3fa
    const-string/jumbo v0, "unknown"

    goto :goto_3f5

    :pswitch_3fe
    if-eqz p5, :cond_408

    const-string/jumbo v0, "c"

    :goto_403
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_12b

    :cond_408
    const-string/jumbo v0, "charging"

    goto :goto_403

    :pswitch_40c
    if-eqz p5, :cond_416

    const-string/jumbo v0, "d"

    :goto_411
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_12b

    :cond_416
    const-string/jumbo v0, "discharging"

    goto :goto_411

    :pswitch_41a
    if-eqz p5, :cond_424

    const-string/jumbo v0, "n"

    :goto_41f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_12b

    :cond_424
    const-string/jumbo v0, "not-charging"

    goto :goto_41f

    :pswitch_428
    if-eqz p5, :cond_432

    const-string/jumbo v0, "f"

    :goto_42d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_12b

    :cond_432
    const-string/jumbo v0, "full"

    goto :goto_42d

    :cond_436
    const-string/jumbo v0, " health="

    goto/16 :goto_13a

    :pswitch_43b
    if-eqz p5, :cond_445

    const-string/jumbo v0, "?"

    :goto_440
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_147

    :cond_445
    const-string/jumbo v0, "unknown"

    goto :goto_440

    :pswitch_449
    if-eqz p5, :cond_453

    const-string/jumbo v0, "g"

    :goto_44e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_147

    :cond_453
    const-string/jumbo v0, "good"

    goto :goto_44e

    :pswitch_457
    if-eqz p5, :cond_461

    const-string/jumbo v0, "h"

    :goto_45c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_147

    :cond_461
    const-string/jumbo v0, "overheat"

    goto :goto_45c

    :pswitch_465
    if-eqz p5, :cond_46f

    const-string/jumbo v0, "d"

    :goto_46a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_147

    :cond_46f
    const-string/jumbo v0, "dead"

    goto :goto_46a

    :pswitch_473
    if-eqz p5, :cond_47d

    const-string/jumbo v0, "v"

    :goto_478
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_147

    :cond_47d
    const-string/jumbo v0, "over-voltage"

    goto :goto_478

    :pswitch_481
    if-eqz p5, :cond_48b

    const-string/jumbo v0, "f"

    :goto_486
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_147

    :cond_48b
    const-string/jumbo v0, "failure"

    goto :goto_486

    :pswitch_48f
    if-eqz p5, :cond_499

    const-string/jumbo v0, "c"

    :goto_494
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_147

    :cond_499
    const-string/jumbo v0, "cold"

    goto :goto_494

    :cond_49d
    const-string/jumbo v0, " plug="

    goto/16 :goto_156

    :pswitch_4a2
    if-eqz p5, :cond_4ac

    const-string/jumbo v0, "n"

    :goto_4a7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_163

    :cond_4ac
    const-string/jumbo v0, "none"

    goto :goto_4a7

    :pswitch_4b0
    if-eqz p5, :cond_4ba

    const-string/jumbo v0, "a"

    :goto_4b5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_163

    :cond_4ba
    const-string/jumbo v0, "ac"

    goto :goto_4b5

    :pswitch_4be
    if-eqz p5, :cond_4c8

    const-string/jumbo v0, "u"

    :goto_4c3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_163

    :cond_4c8
    const-string/jumbo v0, "usb"

    goto :goto_4c3

    :pswitch_4cc
    if-eqz p5, :cond_4d6

    const-string/jumbo v0, "w"

    :goto_4d1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_163

    :cond_4d6
    const-string/jumbo v0, "wireless"

    goto :goto_4d1

    :cond_4da
    const-string/jumbo v0, " temp="

    goto/16 :goto_172

    :cond_4df
    const-string/jumbo v0, " volt="

    goto/16 :goto_189

    :cond_4e4
    const-string/jumbo v0, " charge="

    goto/16 :goto_1a0

    :cond_4e9
    const-string/jumbo v0, " wake_reason="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget v0, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ":\""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "\""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1d6

    :cond_50b
    const-string/jumbo v0, " "

    goto/16 :goto_1df

    :cond_510
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_1f0

    const-string/jumbo v0, "-"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1f0

    :cond_51e
    sget-object v7, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    goto/16 :goto_1f4

    :cond_522
    if-eqz p5, :cond_52f

    const-string/jumbo v0, "Ev"

    :goto_527
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    goto/16 :goto_205

    :cond_52f
    const-string/jumbo v0, "event"

    goto :goto_527

    :cond_533
    sget-object v0, Landroid/os/BatteryStats;->HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

    aget-object v0, v0, v8

    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v1, v1, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-interface {v0, v1}, Landroid/os/BatteryStats$IntToString;->applyAsString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string/jumbo v0, ":\""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "\""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_214

    :cond_557
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    const-string/jumbo v0, "h"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, ",0,Dcpu="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    if-ltz v0, :cond_5c0

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/io/PrintWriter;III)V

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    if-ltz v0, :cond_5ab

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/io/PrintWriter;III)V

    :cond_5ab
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    if-ltz v0, :cond_5c0

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/io/PrintWriter;III)V

    :cond_5c0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    const-string/jumbo v0, "h"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, ",0,Dpst="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statPlatformIdleState:Ljava/lang/String;

    if-eqz v0, :cond_639

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statPlatformIdleState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    if-eqz v0, :cond_639

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    :cond_639
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    if-eqz v0, :cond_646

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_646
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_368

    nop

    :pswitch_data_64c
    .packed-switch 0x1
        :pswitch_3f0
        :pswitch_3fe
        :pswitch_40c
        :pswitch_41a
        :pswitch_428
    .end packed-switch

    :pswitch_data_65a
    .packed-switch 0x1
        :pswitch_43b
        :pswitch_449
        :pswitch_457
        :pswitch_465
        :pswitch_473
        :pswitch_481
        :pswitch_48f
    .end packed-switch

    :pswitch_data_66c
    .packed-switch 0x0
        :pswitch_4a2
        :pswitch_4b0
        :pswitch_4be
        :pswitch_15e
        :pswitch_4cc
    .end packed-switch
.end method

.method reset()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    return-void
.end method
