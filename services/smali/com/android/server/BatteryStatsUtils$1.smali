.class final Lcom/android/server/BatteryStatsUtils$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryStatsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryStatsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-static {}, Lcom/android/server/BatteryStatsUtils;->-get0()Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;

    move-result-object v2

    if-eqz v2, :cond_23

    invoke-static {}, Lcom/android/server/BatteryStatsUtils;->-get0()Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;

    move-result-object v2

    invoke-static {}, Lcom/android/server/BatteryStatsUtils;->-get1()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/BatteryStatsUtils;->getSubId(I)I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;->onChanged(ILcom/android/internal/telephony/IccCardConstants$State;)V

    :cond_23
    :goto_23
    return-void

    :cond_24
    const-string/jumbo v2, "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/BatteryStatsUtils;->-set0(I)I

    invoke-static {}, Lcom/android/server/BatteryStatsUtils;->-get0()Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;

    move-result-object v2

    if-eqz v2, :cond_23

    sget v2, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    invoke-static {p2, v2}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdExtra(Landroid/content/Intent;I)I

    move-result v1

    invoke-static {}, Lcom/android/server/BatteryStatsUtils;->-get0()Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;

    move-result-object v2

    invoke-static {}, Lcom/android/server/BatteryStatsUtils;->-get1()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/BatteryStatsUtils;->-wrap0(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;->onChanged(ILcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_23
.end method
