.class Lcom/android/server/connectivity/DataConnectionStats$2;
.super Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;
.source "DataConnectionStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/DataConnectionStats;->startMultSimMonitoring()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/DataConnectionStats;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/DataConnectionStats;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats$2;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-direct {p0}, Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(ILcom/android/internal/telephony/IccCardConstants$State;)V
    .registers 7

    if-eqz p2, :cond_3a

    iget-object v1, p0, Lcom/android/server/connectivity/DataConnectionStats$2;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {v1}, Lcom/android/server/connectivity/DataConnectionStats;->-get2(Lcom/android/server/connectivity/DataConnectionStats;)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    if-eq v1, p2, :cond_3a

    const-string/jumbo v1, "DataConnectionStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChanged: simState new="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/DataConnectionStats$2;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {v3}, Lcom/android/server/connectivity/DataConnectionStats;->-get2(Lcom/android/server/connectivity/DataConnectionStats;)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/connectivity/DataConnectionStats$2;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {v1, p2}, Lcom/android/server/connectivity/DataConnectionStats;->-set3(Lcom/android/server/connectivity/DataConnectionStats;Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/telephony/IccCardConstants$State;

    :cond_3a
    iget-object v1, p0, Lcom/android/server/connectivity/DataConnectionStats$2;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {v1}, Lcom/android/server/connectivity/DataConnectionStats;->-get1(Lcom/android/server/connectivity/DataConnectionStats;)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/PhoneStateListener;->getSubId()I

    move-result v1

    if-eq p1, v1, :cond_98

    const-string/jumbo v1, "DataConnectionStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChanged: listen phone state subId new="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/DataConnectionStats$2;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {v3}, Lcom/android/server/connectivity/DataConnectionStats;->-get1(Lcom/android/server/connectivity/DataConnectionStats;)Landroid/telephony/PhoneStateListener;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/PhoneStateListener;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/connectivity/DataConnectionStats$2;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {v1}, Lcom/android/server/connectivity/DataConnectionStats;->-get1(Lcom/android/server/connectivity/DataConnectionStats;)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/PhoneStateListener;->setSubId(I)V

    iget-object v1, p0, Lcom/android/server/connectivity/DataConnectionStats$2;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {v1}, Lcom/android/server/connectivity/DataConnectionStats;->-get0(Lcom/android/server/connectivity/DataConnectionStats;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/connectivity/DataConnectionStats$2;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {v1}, Lcom/android/server/connectivity/DataConnectionStats;->-get1(Lcom/android/server/connectivity/DataConnectionStats;)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    const/16 v2, 0x1c1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_98
    return-void
.end method
