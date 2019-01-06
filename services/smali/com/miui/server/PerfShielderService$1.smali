.class Lcom/miui/server/PerfShielderService$1;
.super Ljava/lang/Object;
.source "PerfShielderService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/PerfShielderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/PerfShielderService;


# direct methods
.method constructor <init>(Lcom/miui/server/PerfShielderService;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/server/PerfShielderService$1;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    iget-object v1, p0, Lcom/miui/server/PerfShielderService$1;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-static {p2}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/daemon/performance/server/IMiuiPerfService;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    iget-object v1, p0, Lcom/miui/server/PerfShielderService$1;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-static {v1}, Lcom/miui/server/PerfShielderService;->-get1(Lcom/miui/server/PerfShielderService;)Lcom/miui/server/PerfShielderService$BindServiceHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/server/PerfShielderService$BindServiceHandler;->removeMessages(I)V

    :try_start_12
    const-string/jumbo v1, "PerfShielderService"

    const-string/jumbo v2, "Miui performance service connected!"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/server/PerfShielderService$1;->this$0:Lcom/miui/server/PerfShielderService;

    iget-object v1, v1, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    invoke-interface {v1}, Lcom/miui/daemon/performance/server/IMiuiPerfService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/PerfShielderService$1;->this$0:Lcom/miui/server/PerfShielderService;

    iget-object v2, v2, Lcom/miui/server/PerfShielderService;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2b} :catch_2c

    :goto_2b
    return-void

    :catch_2c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2b
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    const/4 v2, 0x0

    const-string/jumbo v0, "PerfShielderService"

    const-string/jumbo v1, "Miui performance service disconnected!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/server/PerfShielderService$1;->this$0:Lcom/miui/server/PerfShielderService;

    iput-object v2, v0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    iget-object v0, p0, Lcom/miui/server/PerfShielderService$1;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-static {v0}, Lcom/miui/server/PerfShielderService;->-get0(Lcom/miui/server/PerfShielderService;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/miui/server/PerfShielderService$1;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-static {v0}, Lcom/miui/server/PerfShielderService;->-get0(Lcom/miui/server/PerfShielderService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/PerfShielderService$1;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-static {v1}, Lcom/miui/server/PerfShielderService;->-get4(Lcom/miui/server/PerfShielderService;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_25
    return-void
.end method
