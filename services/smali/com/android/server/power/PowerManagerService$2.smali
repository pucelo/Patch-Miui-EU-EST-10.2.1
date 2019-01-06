.class Lcom/android/server/power/PowerManagerService$2;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVrStateChanged(Z)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    if-eqz p1, :cond_2c

    const/4 v0, 0x1

    :goto_5
    const/4 v2, 0x7

    invoke-static {v1, v2, v0}, Lcom/android/server/power/PowerManagerService;->-wrap23(Lcom/android/server/power/PowerManagerService;II)V

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get9(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_10
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get7(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-eq v0, p1, :cond_2a

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setVrModeEnabled(Z)V

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_2e

    :cond_2a
    monitor-exit v1

    return-void

    :cond_2c
    const/4 v0, 0x0

    goto :goto_5

    :catchall_2e
    move-exception v0

    monitor-exit v1

    throw v0
.end method
