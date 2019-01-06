.class Lcom/android/keyguard/KeyguardUpdateMonitor$3;
.super Landroid/os/Handler;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v0, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap22(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap3(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-static {v1, v2, v3, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap21(Lcom/android/keyguard/KeyguardUpdateMonitor;IILcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleRingerModeChange(I)V

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handlePhoneStateChanged(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleDeviceProvisioned()V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleDevicePolicyManagerStateChanged()V

    goto :goto_0

    :sswitch_7
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IRemoteCallback;

    invoke-virtual {v1, v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserSwitching(ILandroid/os/IRemoteCallback;)V

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserSwitchComplete(I)V

    goto :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap13(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap12(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    goto :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleBootCompleted()V

    goto :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap23(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    goto :goto_0

    :sswitch_d
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap16(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_0

    :sswitch_e
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleStartedGoingToSleep(I)V

    goto :goto_0

    :sswitch_f
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFinishedGoingToSleep(I)V

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v0, "KeyguardUpdateMonitor#handler MSG_STARTED_WAKING_UP"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleStartedWakingUp()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v1, "KeyguardUpdateMonitor#handler MSG_FACE_UNLOCK_STATE_CHANGED"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap5(Lcom/android/keyguard/KeyguardUpdateMonitor;ZI)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    :sswitch_12
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimSubscriptionInfoChanged()V

    goto/16 :goto_0

    :sswitch_13
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap2(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_0

    :sswitch_14
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/ServiceState;

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap19(Lcom/android/keyguard/KeyguardUpdateMonitor;ILandroid/telephony/ServiceState;)V

    goto/16 :goto_0

    :sswitch_15
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap18(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v0, "KeyguardUpdateMonitor#handler MSG_SCREEN_TURNED_ON"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap17(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    :sswitch_17
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap4(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    goto/16 :goto_0

    :sswitch_18
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap24(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    :sswitch_19
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap14(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_0

    :sswitch_1a
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap20(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x12d -> :sswitch_0
        0x12e -> :sswitch_1
        0x130 -> :sswitch_2
        0x131 -> :sswitch_3
        0x132 -> :sswitch_4
        0x134 -> :sswitch_5
        0x135 -> :sswitch_6
        0x136 -> :sswitch_7
        0x138 -> :sswitch_9
        0x139 -> :sswitch_b
        0x13a -> :sswitch_8
        0x13d -> :sswitch_c
        0x13e -> :sswitch_d
        0x13f -> :sswitch_10
        0x140 -> :sswitch_f
        0x141 -> :sswitch_e
        0x142 -> :sswitch_a
        0x147 -> :sswitch_11
        0x148 -> :sswitch_12
        0x149 -> :sswitch_13
        0x14a -> :sswitch_14
        0x14b -> :sswitch_15
        0x14c -> :sswitch_16
        0x14d -> :sswitch_17
        0x14e -> :sswitch_18
        0x14f -> :sswitch_1a
        0x1f4 -> :sswitch_19
    .end sparse-switch
.end method
