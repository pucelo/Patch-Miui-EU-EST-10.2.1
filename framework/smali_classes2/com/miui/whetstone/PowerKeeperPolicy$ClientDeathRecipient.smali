.class Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;
.super Ljava/lang/Object;
.source "PowerKeeperPolicy.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/PowerKeeperPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientDeathRecipient"
.end annotation


# instance fields
.field mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

.field final mUid:I

.field final synthetic this$0:Lcom/miui/whetstone/PowerKeeperPolicy;


# direct methods
.method public constructor <init>(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/bluetooth/BleScanWrapper;I)V
    .registers 4

    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    iput p3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->mUid:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 7

    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get0()Z

    move-result v3

    if-eqz v3, :cond_29

    const-string/jumbo v3, "PowerKeeperPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Binder is dead - unregistering client ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get5(Lcom/miui/whetstone/PowerKeeperPolicy;)Landroid/util/LocalLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Binder is dead uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get1(Lcom/miui/whetstone/PowerKeeperPolicy;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    const/4 v2, 0x0

    :try_start_50
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get2(Lcom/miui/whetstone/PowerKeeperPolicy;)Ljava/util/Map;

    move-result-object v3

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    if-eqz v0, :cond_75

    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->getAllowed()Z

    move-result v2

    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->unlinkToDeath()V

    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->clearResource()V

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get2(Lcom/miui/whetstone/PowerKeeperPolicy;)Ljava/util/Map;

    move-result-object v3

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_75
    const/4 v1, 0x0

    if-eqz v2, :cond_8d

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get6(Lcom/miui/whetstone/PowerKeeperPolicy;)Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isInParoleState()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_8d

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    iget v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->mUid:I

    invoke-static {v3, v5}, Lcom/miui/whetstone/PowerKeeperPolicy;->-wrap4(Lcom/miui/whetstone/PowerKeeperPolicy;I)V

    :cond_8d
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->-wrap0(Lcom/miui/whetstone/PowerKeeperPolicy;)Z

    move-result v3

    if-eqz v3, :cond_ac

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get6(Lcom/miui/whetstone/PowerKeeperPolicy;)Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isWorking()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_ac

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get6(Lcom/miui/whetstone/PowerKeeperPolicy;)Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->startParoleCheck()V
    :try_end_ac
    .catchall {:try_start_50 .. :try_end_ac} :catchall_ae

    :cond_ac
    monitor-exit v4

    return-void

    :catchall_ae
    move-exception v3

    monitor-exit v4

    throw v3
.end method
