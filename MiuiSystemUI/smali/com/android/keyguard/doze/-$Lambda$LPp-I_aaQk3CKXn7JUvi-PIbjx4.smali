.class final synthetic Lcom/android/keyguard/doze/-$Lambda$LPp-I_aaQk3CKXn7JUvi-PIbjx4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/doze/-$Lambda$LPp-I_aaQk3CKXn7JUvi-PIbjx4;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/doze/DozePauser;

    invoke-virtual {v0}, Lcom/android/keyguard/doze/DozePauser;->-com_android_keyguard_doze_DozePauser-mthref-0()V

    return-void
.end method

.method private final synthetic $m$1()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/doze/-$Lambda$LPp-I_aaQk3CKXn7JUvi-PIbjx4;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/doze/DozeUi;

    invoke-virtual {v0}, Lcom/android/keyguard/doze/DozeUi;->-com_android_keyguard_doze_DozeUi-mthref-0()V

    return-void
.end method

.method private final synthetic $m$2()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/doze/-$Lambda$LPp-I_aaQk3CKXn7JUvi-PIbjx4;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/doze/MiuiDozeBrightnessTimeoutAdapter;

    invoke-virtual {v0}, Lcom/android/keyguard/doze/MiuiDozeBrightnessTimeoutAdapter;->-com_android_keyguard_doze_MiuiDozeBrightnessTimeoutAdapter-mthref-0()V

    return-void
.end method

.method private final synthetic $m$3()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/doze/-$Lambda$LPp-I_aaQk3CKXn7JUvi-PIbjx4;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;

    invoke-virtual {v0}, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->-com_android_keyguard_doze_MiuiDozeScreenBrightnessController-mthref-0()V

    return-void
.end method

.method private final synthetic $m$4()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/doze/-$Lambda$LPp-I_aaQk3CKXn7JUvi-PIbjx4;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;

    invoke-virtual {v0}, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->-com_android_keyguard_doze_MiuiDozeScreenBrightnessController-mthref-1()V

    return-void
.end method

.method private final synthetic $m$5()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/doze/-$Lambda$LPp-I_aaQk3CKXn7JUvi-PIbjx4;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/doze/MiuiDozeTimeController;

    invoke-virtual {v0}, Lcom/android/keyguard/doze/MiuiDozeTimeController;->-com_android_keyguard_doze_MiuiDozeTimeController-mthref-0()V

    return-void
.end method

.method private final synthetic $m$6()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/doze/-$Lambda$LPp-I_aaQk3CKXn7JUvi-PIbjx4;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/doze/MiuiDozeTimeController;

    invoke-virtual {v0}, Lcom/android/keyguard/doze/MiuiDozeTimeController;->-com_android_keyguard_doze_MiuiDozeTimeController-mthref-1()V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/keyguard/doze/-$Lambda$LPp-I_aaQk3CKXn7JUvi-PIbjx4;->$id:B

    iput-object p2, p0, Lcom/android/keyguard/doze/-$Lambda$LPp-I_aaQk3CKXn7JUvi-PIbjx4;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .locals 1

    iget-byte v0, p0, Lcom/android/keyguard/doze/-$Lambda$LPp-I_aaQk3CKXn7JUvi-PIbjx4;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/keyguard/doze/-$Lambda$LPp-I_aaQk3CKXn7JUvi-PIbjx4;->$m$0()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/keyguard/doze/-$Lambda$LPp-I_aaQk3CKXn7JUvi-PIbjx4;->$m$1()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Lcom/android/keyguard/doze/-$Lambda$LPp-I_aaQk3CKXn7JUvi-PIbjx4;->$m$2()V

    return-void

    :pswitch_3
    invoke-direct {p0}, Lcom/android/keyguard/doze/-$Lambda$LPp-I_aaQk3CKXn7JUvi-PIbjx4;->$m$3()V

    return-void

    :pswitch_4
    invoke-direct {p0}, Lcom/android/keyguard/doze/-$Lambda$LPp-I_aaQk3CKXn7JUvi-PIbjx4;->$m$4()V

    return-void

    :pswitch_5
    invoke-direct {p0}, Lcom/android/keyguard/doze/-$Lambda$LPp-I_aaQk3CKXn7JUvi-PIbjx4;->$m$5()V

    return-void

    :pswitch_6
    invoke-direct {p0}, Lcom/android/keyguard/doze/-$Lambda$LPp-I_aaQk3CKXn7JUvi-PIbjx4;->$m$6()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
