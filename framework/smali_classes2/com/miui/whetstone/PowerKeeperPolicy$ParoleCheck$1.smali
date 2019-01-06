.class Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck$1;
.super Ljava/lang/Object;
.source "PowerKeeperPolicy.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;


# direct methods
.method constructor <init>(Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck$1;->this$1:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck$1;->this$1:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-static {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->-get1(Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck$1;->this$1:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-static {v0, p1}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->-wrap0(Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;Landroid/os/Message;)Z
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit v1

    return v0

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method
