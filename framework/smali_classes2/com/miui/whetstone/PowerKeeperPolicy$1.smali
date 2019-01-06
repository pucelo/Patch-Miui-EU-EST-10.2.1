.class Lcom/miui/whetstone/PowerKeeperPolicy$1;
.super Landroid/location/ILocationPolicyListener$Stub;
.source "PowerKeeperPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/PowerKeeperPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/whetstone/PowerKeeperPolicy;


# direct methods
.method constructor <init>(Lcom/miui/whetstone/PowerKeeperPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$1;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-direct {p0}, Landroid/location/ILocationPolicyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRestrictBackgroundChanged(Z)V
    .registers 2

    return-void
.end method

.method public onUidRulesChanged(II)V
    .registers 10

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$1;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v4}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get1(Lcom/miui/whetstone/PowerKeeperPolicy;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    if-eqz p2, :cond_d

    if-ne p2, v2, :cond_1d

    :cond_d
    const/4 v1, 0x1

    :goto_e
    :try_start_e
    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$1;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v5}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get7(Lcom/miui/whetstone/PowerKeeperPolicy;)Landroid/util/SparseBooleanArray;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, p1, v6}, Landroid/util/SparseBooleanArray;->get(IZ)Z
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_47

    move-result v0

    if-ne v0, v1, :cond_1f

    monitor-exit v4

    return-void

    :cond_1d
    const/4 v1, 0x0

    goto :goto_e

    :cond_1f
    :try_start_1f
    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$1;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v5}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get7(Lcom/miui/whetstone/PowerKeeperPolicy;)Landroid/util/SparseBooleanArray;

    move-result-object v5

    invoke-virtual {v5, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$1;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v5}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get3(Lcom/miui/whetstone/PowerKeeperPolicy;)Z
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_47

    move-result v5

    if-nez v5, :cond_32

    monitor-exit v4

    return-void

    :cond_32
    :try_start_32
    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$1;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v5}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get4(Lcom/miui/whetstone/PowerKeeperPolicy;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v1, :cond_45

    :goto_3a
    const/16 v3, 0x3e8

    invoke-virtual {v5, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_43
    .catchall {:try_start_32 .. :try_end_43} :catchall_47

    monitor-exit v4

    return-void

    :cond_45
    move v2, v3

    goto :goto_3a

    :catchall_47
    move-exception v2

    monitor-exit v4

    throw v2
.end method
