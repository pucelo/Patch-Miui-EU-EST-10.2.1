.class Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$10;
.super Ljava/lang/Object;
.source "MiuiKeyguardChargingContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->setChargingInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$10;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v0, 0x0

    const/4 v9, 0x0

    :try_start_0
    const-string/jumbo v10, "content://com.miui.powercenter.provider"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$10;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v10}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get8(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "getBatteryCurrent"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v9, v11, v12, v13}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    return-void

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v10, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$10;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v10}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get8(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "getBatteryInfo"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v9, v11, v12, v13}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_1
    if-nez v0, :cond_1

    return-void

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    const-string/jumbo v10, "last_charged_time"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string/jumbo v10, "last_drained_time"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string/jumbo v10, "last_drained_percent"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v10, "lastChargedTime"

    invoke-virtual {v5, v10, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v10, "drainedTime"

    invoke-virtual {v5, v10, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v10, "drainedPercent"

    invoke-virtual {v5, v10, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    invoke-virtual {v8, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v10, 0x1

    iput v10, v8, Landroid/os/Message;->what:I

    iget-object v10, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$10;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    iget-object v10, v10, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargeHandler:Landroid/os/Handler;

    invoke-virtual {v10, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
