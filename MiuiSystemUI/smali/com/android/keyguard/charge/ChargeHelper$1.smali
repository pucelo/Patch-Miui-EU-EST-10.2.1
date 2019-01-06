.class Lcom/android/keyguard/charge/ChargeHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "ChargeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/charge/ChargeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/charge/ChargeHelper;


# direct methods
.method constructor <init>(Lcom/android/keyguard/charge/ChargeHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/charge/ChargeHelper$1;->this$0:Lcom/android/keyguard/charge/ChargeHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    iget-object v2, p0, Lcom/android/keyguard/charge/ChargeHelper$1;->this$0:Lcom/android/keyguard/charge/ChargeHelper;

    const-string/jumbo v3, "EXTREME_POWER_SAVE_MODE_OPEN"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/keyguard/charge/ChargeHelper;->-set0(Lcom/android/keyguard/charge/ChargeHelper;Z)Z

    iget-object v2, p0, Lcom/android/keyguard/charge/ChargeHelper$1;->this$0:Lcom/android/keyguard/charge/ChargeHelper;

    invoke-static {v2}, Lcom/android/keyguard/charge/ChargeHelper;->-get0(Lcom/android/keyguard/charge/ChargeHelper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/charge/ChargeHelper$ExtremePowerSaveModeChangeCallback;

    invoke-interface {v0}, Lcom/android/keyguard/charge/ChargeHelper$ExtremePowerSaveModeChangeCallback;->onModeChange()V

    goto :goto_0

    :cond_0
    return-void
.end method
