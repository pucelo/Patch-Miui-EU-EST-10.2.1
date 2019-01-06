.class public Lcom/android/keyguard/doze/MiuiDozeBrightnessTimeoutAdapter;
.super Lcom/android/keyguard/doze/DozeMachine$Service$Delegate;
.source "MiuiDozeBrightnessTimeoutAdapter.java"


# instance fields
.field private mLastBrightness:I

.field private final mSetDozeScreenBrightnessTimeout:Lcom/android/keyguard/util/AlarmTimeout;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/doze/DozeMachine$Service;Landroid/app/AlarmManager;Landroid/os/Handler;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/keyguard/doze/DozeMachine$Service$Delegate;-><init>(Lcom/android/keyguard/doze/DozeMachine$Service;)V

    new-instance v0, Lcom/android/keyguard/util/AlarmTimeout;

    new-instance v1, Lcom/android/keyguard/doze/-$Lambda$LPp-I_aaQk3CKXn7JUvi-PIbjx4;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/android/keyguard/doze/-$Lambda$LPp-I_aaQk3CKXn7JUvi-PIbjx4;-><init>(BLjava/lang/Object;)V

    const-string/jumbo v2, "SetDozeScreenBrightnessTimeout"

    invoke-direct {v0, p2, v1, v2, p3}, Lcom/android/keyguard/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/doze/MiuiDozeBrightnessTimeoutAdapter;->mSetDozeScreenBrightnessTimeout:Lcom/android/keyguard/util/AlarmTimeout;

    return-void
.end method

.method private onSetDozeScreenBrightnessTimeout()V
    .locals 1

    iget v0, p0, Lcom/android/keyguard/doze/MiuiDozeBrightnessTimeoutAdapter;->mLastBrightness:I

    invoke-super {p0, v0}, Lcom/android/keyguard/doze/DozeMachine$Service$Delegate;->setDozeScreenBrightness(I)V

    return-void
.end method


# virtual methods
.method synthetic -com_android_keyguard_doze_MiuiDozeBrightnessTimeoutAdapter-mthref-0()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/doze/MiuiDozeBrightnessTimeoutAdapter;->onSetDozeScreenBrightnessTimeout()V

    return-void
.end method

.method public finish()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/doze/DozeMachine$Service$Delegate;->finish()V

    iget-object v0, p0, Lcom/android/keyguard/doze/MiuiDozeBrightnessTimeoutAdapter;->mSetDozeScreenBrightnessTimeout:Lcom/android/keyguard/util/AlarmTimeout;

    invoke-virtual {v0}, Lcom/android/keyguard/util/AlarmTimeout;->cancel()V

    return-void
.end method

.method public setDozeScreenBrightness(I)V
    .locals 4

    iget v0, p0, Lcom/android/keyguard/doze/MiuiDozeBrightnessTimeoutAdapter;->mLastBrightness:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/doze/MiuiDozeBrightnessTimeoutAdapter;->mSetDozeScreenBrightnessTimeout:Lcom/android/keyguard/util/AlarmTimeout;

    const-wide/16 v2, 0x2710

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/keyguard/util/AlarmTimeout;->schedule(JI)V

    iput p1, p0, Lcom/android/keyguard/doze/MiuiDozeBrightnessTimeoutAdapter;->mLastBrightness:I

    :cond_0
    return-void
.end method
