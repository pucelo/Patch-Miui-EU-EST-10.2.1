.class Lcom/android/keyguard/MiuiBleUnlockHelper$2;
.super Landroid/content/BroadcastReceiver;
.source "MiuiBleUnlockHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/MiuiBleUnlockHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MiuiBleUnlockHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$2;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/16 v4, 0xa

    const-string/jumbo v1, "MiuiBleUnlockHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ble action name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "com.miui.keyguard.bluetoothdeviceunlock.disable"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.xiaomi.hm.health.ACTION_DEVICE_UNBIND_APPLICATION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$2;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    invoke-virtual {v1}, Lcom/android/keyguard/MiuiBleUnlockHelper;->disconnectBleDeviceIfNecessary()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$2;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    iget-object v2, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$2;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    invoke-static {v2}, Lcom/android/keyguard/MiuiBleUnlockHelper;->-get0(Lcom/android/keyguard/MiuiBleUnlockHelper;)Landroid/security/MiuiLockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Landroid/security/MiuiLockPatternUtils;->getBluetoothAddressToUnlock()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/MiuiBleUnlockHelper;->connectBLEDevice(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0xd

    if-eq v0, v1, :cond_4

    if-ne v0, v4, :cond_1

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$2;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    invoke-virtual {v1}, Lcom/android/keyguard/MiuiBleUnlockHelper;->disconnectBleDeviceIfNecessary()V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$2;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    iget-object v2, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$2;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    invoke-static {v2}, Lcom/android/keyguard/MiuiBleUnlockHelper;->-get0(Lcom/android/keyguard/MiuiBleUnlockHelper;)Landroid/security/MiuiLockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Landroid/security/MiuiLockPatternUtils;->getBluetoothAddressToUnlock()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/MiuiBleUnlockHelper;->connectBLEDevice(Ljava/lang/String;)V

    goto :goto_0
.end method
