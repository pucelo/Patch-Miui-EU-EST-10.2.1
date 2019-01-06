.class public Landroid/os/statistics/PerfEventFactory;
.super Ljava/lang/Object;
.source "PerfEventFactory.java"


# static fields
.field private static final MACRO_EVENT_TYPE_INDEX_OFFSET:I = -0xfff3


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPerfEvent(I)Landroid/os/statistics/PerfEvent;
    .registers 4

    const/4 v1, 0x0

    const/high16 v2, 0x10000

    if-ge p0, v2, :cond_a

    move v0, p0

    :goto_6
    packed-switch v0, :pswitch_data_7c

    :goto_9
    :pswitch_9
    return-object v1

    :cond_a
    const v2, -0xfff3

    add-int v0, p0, v2

    goto :goto_6

    :pswitch_10
    new-instance v1, Landroid/os/statistics/MonitorSuperviser$SingleLockHold;

    invoke-direct {v1}, Landroid/os/statistics/MonitorSuperviser$SingleLockHold;-><init>()V

    goto :goto_9

    :pswitch_16
    new-instance v1, Landroid/os/statistics/MonitorSuperviser$SingleLockWait;

    invoke-direct {v1}, Landroid/os/statistics/MonitorSuperviser$SingleLockWait;-><init>()V

    goto :goto_9

    :pswitch_1c
    new-instance v1, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;

    invoke-direct {v1}, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;-><init>()V

    goto :goto_9

    :pswitch_22
    new-instance v1, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;

    invoke-direct {v1}, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;-><init>()V

    goto :goto_9

    :pswitch_28
    new-instance v1, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;

    invoke-direct {v1}, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;-><init>()V

    goto :goto_9

    :pswitch_2e
    new-instance v1, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;

    invoke-direct {v1}, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;-><init>()V

    goto :goto_9

    :pswitch_34
    new-instance v1, Landroid/os/statistics/PerfTracer$SingleTracePoint;

    invoke-direct {v1}, Landroid/os/statistics/PerfTracer$SingleTracePoint;-><init>()V

    goto :goto_9

    :pswitch_3a
    new-instance v1, Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent;

    invoke-direct {v1}, Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent;-><init>()V

    goto :goto_9

    :pswitch_40
    new-instance v1, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;

    invoke-direct {v1}, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;-><init>()V

    goto :goto_9

    :pswitch_46
    new-instance v1, Landroid/os/statistics/InputEventSuperviser$SingleInputEvent;

    invoke-direct {v1}, Landroid/os/statistics/InputEventSuperviser$SingleInputEvent;-><init>()V

    goto :goto_9

    :pswitch_4c
    new-instance v1, Landroid/os/statistics/SingleJniMethod;

    invoke-direct {v1}, Landroid/os/statistics/SingleJniMethod;-><init>()V

    goto :goto_9

    :pswitch_52
    new-instance v1, Landroid/os/statistics/LooperOnce;

    invoke-direct {v1}, Landroid/os/statistics/LooperOnce;-><init>()V

    goto :goto_9

    :pswitch_58
    new-instance v1, Landroid/os/statistics/LooperCheckPoint;

    invoke-direct {v1}, Landroid/os/statistics/LooperCheckPoint;-><init>()V

    goto :goto_9

    :pswitch_5e
    new-instance v1, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;

    invoke-direct {v1}, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;-><init>()V

    goto :goto_9

    :pswitch_64
    new-instance v1, Landroid/os/statistics/SingleJankRecord;

    invoke-direct {v1}, Landroid/os/statistics/SingleJankRecord;-><init>()V

    goto :goto_9

    :pswitch_6a
    new-instance v1, Landroid/os/statistics/BinderSuperviser$BinderStarvation;

    invoke-direct {v1}, Landroid/os/statistics/BinderSuperviser$BinderStarvation;-><init>()V

    goto :goto_9

    :pswitch_70
    new-instance v1, Landroid/os/statistics/E2EScenarioOnce;

    invoke-direct {v1}, Landroid/os/statistics/E2EScenarioOnce;-><init>()V

    goto :goto_9

    :pswitch_76
    new-instance v1, Landroid/os/statistics/MemorySlowpath;

    invoke-direct {v1}, Landroid/os/statistics/MemorySlowpath;-><init>()V

    goto :goto_9

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_10
        :pswitch_16
        :pswitch_1c
        :pswitch_22
        :pswitch_28
        :pswitch_2e
        :pswitch_34
        :pswitch_3a
        :pswitch_40
        :pswitch_46
        :pswitch_4c
        :pswitch_52
        :pswitch_58
        :pswitch_5e
        :pswitch_9
        :pswitch_64
        :pswitch_9
        :pswitch_6a
        :pswitch_70
        :pswitch_76
    .end packed-switch
.end method

.method public static createPerfEvent(IJLandroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)Landroid/os/statistics/PerfEvent;
    .registers 13

    invoke-static {p0}, Landroid/os/statistics/PerfEventFactory;->createPerfEvent(I)Landroid/os/statistics/PerfEvent;

    move-result-object v1

    if-eqz v1, :cond_d

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/os/statistics/PerfEvent;->fillIn(JLandroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V

    :cond_d
    return-object v1
.end method
