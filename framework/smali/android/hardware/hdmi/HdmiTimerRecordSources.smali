.class public Landroid/hardware/hdmi/HdmiTimerRecordSources;
.super Ljava/lang/Object;
.source "HdmiTimerRecordSources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;,
        Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;,
        Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;,
        Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;,
        Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;,
        Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;
    }
.end annotation


# static fields
.field private static final EXTERNAL_SOURCE_SPECIFIER_EXTERNAL_PHYSICAL_ADDRESS:I = 0x5

.field private static final EXTERNAL_SOURCE_SPECIFIER_EXTERNAL_PLUG:I = 0x4

.field public static final RECORDING_SEQUENCE_REPEAT_FRIDAY:I = 0x20

.field private static final RECORDING_SEQUENCE_REPEAT_MASK:I = 0x7f

.field public static final RECORDING_SEQUENCE_REPEAT_MONDAY:I = 0x2

.field public static final RECORDING_SEQUENCE_REPEAT_ONCE_ONLY:I = 0x0

.field public static final RECORDING_SEQUENCE_REPEAT_SATUREDAY:I = 0x40

.field public static final RECORDING_SEQUENCE_REPEAT_SUNDAY:I = 0x1

.field public static final RECORDING_SEQUENCE_REPEAT_THURSDAY:I = 0x10

.field public static final RECORDING_SEQUENCE_REPEAT_TUESDAY:I = 0x4

.field public static final RECORDING_SEQUENCE_REPEAT_WEDNESDAY:I = 0x8

.field private static final TAG:Ljava/lang/String; = "HdmiTimerRecordingSources"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkDurationValue(II)V
    .registers 5

    if-ltz p0, :cond_6

    const/16 v0, 0x63

    if-le p0, v0, :cond_20

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Hour should be in rage of [0, 99]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    if-ltz p1, :cond_26

    const/16 v0, 0x3b

    if-le p1, v0, :cond_40

    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "minute should be in rage of [0, 59]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    return-void
.end method

.method private static checkTimeValue(II)V
    .registers 5

    if-ltz p0, :cond_6

    const/16 v0, 0x17

    if-le p0, v0, :cond_20

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Hour should be in rage of [0, 23]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    if-ltz p1, :cond_26

    const/16 v0, 0x3b

    if-le p1, v0, :cond_40

    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Minute should be in rage of [0, 59]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    return-void
.end method

.method public static checkTimerRecordSource(I[B)Z
    .registers 9

    const/4 v6, 0x7

    const/4 v5, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    array-length v4, p1

    add-int/lit8 v0, v4, -0x7

    packed-switch p0, :pswitch_data_2a

    return v3

    :pswitch_b
    if-ne v6, v0, :cond_e

    :goto_d
    return v2

    :cond_e
    move v2, v3

    goto :goto_d

    :pswitch_10
    if-ne v5, v0, :cond_13

    :goto_12
    return v2

    :cond_13
    move v2, v3

    goto :goto_12

    :pswitch_15
    aget-byte v1, p1, v6

    if-ne v1, v5, :cond_1f

    const/4 v4, 0x2

    if-ne v4, v0, :cond_1d

    :goto_1c
    return v2

    :cond_1d
    move v2, v3

    goto :goto_1c

    :cond_1f
    const/4 v4, 0x5

    if-ne v1, v4, :cond_28

    const/4 v4, 0x3

    if-ne v4, v0, :cond_26

    :goto_25
    return v2

    :cond_26
    move v2, v3

    goto :goto_25

    :cond_28
    return v3

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_b
        :pswitch_10
        :pswitch_15
    .end packed-switch
.end method

.method private static checkTimerRecordSourceInputs(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;)V
    .registers 4

    if-nez p0, :cond_14

    const-string/jumbo v0, "HdmiTimerRecordingSources"

    const-string/jumbo v1, "TimerInfo should not be null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "TimerInfo should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    if-nez p1, :cond_28

    const-string/jumbo v0, "HdmiTimerRecordingSources"

    const-string/jumbo v1, "source should not be null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    return-void
.end method

.method public static durationOf(II)Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;
    .registers 4

    invoke-static {p0, p1}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkDurationValue(II)V

    new-instance v0, Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;-><init>(IILandroid/hardware/hdmi/HdmiTimerRecordSources$Duration;)V

    return-object v0
.end method

.method public static ofAnalogueSource(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;)Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;
    .registers 4

    invoke-static {p0, p1}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkTimerRecordSourceInputs(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;)V

    new-instance v0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;-><init>(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;)V

    return-object v0
.end method

.method public static ofDigitalSource(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;)Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;
    .registers 4

    invoke-static {p0, p1}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkTimerRecordSourceInputs(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;)V

    new-instance v0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;-><init>(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;)V

    return-object v0
.end method

.method public static ofExternalPhysicalAddress(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;)Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;
    .registers 6

    const/4 v3, 0x0

    invoke-static {p0, p1}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkTimerRecordSourceInputs(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;)V

    new-instance v0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;

    new-instance v1, Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;

    const/4 v2, 0x5

    invoke-direct {v1, p1, v2, v3}, Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;-><init>(Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;ILandroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;)V

    invoke-direct {v0, p0, v1, v3}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;-><init>(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;)V

    return-object v0
.end method

.method public static ofExternalPlug(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$ExternalPlugData;)Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;
    .registers 6

    const/4 v3, 0x0

    invoke-static {p0, p1}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkTimerRecordSourceInputs(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;)V

    new-instance v0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;

    new-instance v1, Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;

    const/4 v2, 0x4

    invoke-direct {v1, p1, v2, v3}, Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;-><init>(Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;ILandroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;)V

    invoke-direct {v0, p0, v1, v3}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;-><init>(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;)V

    return-object v0
.end method

.method public static timeOf(II)Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;
    .registers 4

    invoke-static {p0, p1}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkTimeValue(II)V

    new-instance v0, Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;-><init>(IILandroid/hardware/hdmi/HdmiTimerRecordSources$Time;)V

    return-object v0
.end method

.method public static timerInfoOf(IILandroid/hardware/hdmi/HdmiTimerRecordSources$Time;Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;I)Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;
    .registers 12

    if-ltz p0, :cond_6

    const/16 v0, 0x1f

    if-le p0, v0, :cond_20

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Day of month should be in range of [0, 31]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    const/4 v0, 0x1

    if-lt p1, v0, :cond_27

    const/16 v0, 0xc

    if-le p1, v0, :cond_41

    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Month of year should be in range of [1, 12]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    iget v0, p2, Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;->mHour:I

    iget v1, p2, Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;->mMinute:I

    invoke-static {v0, v1}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkTimeValue(II)V

    iget v0, p3, Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;->mHour:I

    iget v1, p3, Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;->mMinute:I

    invoke-static {v0, v1}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkDurationValue(II)V

    if-eqz p4, :cond_6f

    and-int/lit8 v0, p4, -0x80

    if-eqz v0, :cond_6f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid reecording sequence value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6f
    new-instance v0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;

    const/4 v6, 0x0

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;-><init>(IILandroid/hardware/hdmi/HdmiTimerRecordSources$Time;Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;ILandroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;)V

    return-object v0
.end method
