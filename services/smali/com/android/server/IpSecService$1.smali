.class Lcom/android/server/IpSecService$1;
.super Ljava/lang/Thread;
.source "IpSecService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/IpSecService;->connectNativeNetdService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/IpSecService;


# direct methods
.method constructor <init>(Lcom/android/server/IpSecService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/IpSecService$1;->this$0:Lcom/android/server/IpSecService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/IpSecService$1;->this$0:Lcom/android/server/IpSecService;

    monitor-enter v0

    const-wide/16 v2, 0x1388

    :try_start_5
    invoke-static {v2, v3}, Landroid/net/util/NetdService;->get(J)Landroid/net/INetd;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_a

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method
