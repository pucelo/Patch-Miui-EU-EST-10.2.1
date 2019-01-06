.class Lcom/android/server/vr/VrManagerService$1;
.super Ljava/lang/Object;
.source "VrManagerService.java"

# interfaces
.implements Lcom/android/server/utils/ManagedApplicationService$EventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/VrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceEvent(Lcom/android/server/utils/ManagedApplicationService$LogEvent;)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v1, p1}, Lcom/android/server/vr/VrManagerService;->-wrap13(Lcom/android/server/vr/VrManagerService;Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->-get6(Lcom/android/server/vr/VrManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_d
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->-get5(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_49

    move-result-object v1

    if-nez v1, :cond_3e

    const/4 v0, 0x0

    :goto_16
    monitor-exit v2

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->-get0(Lcom/android/server/vr/VrManagerService;)Z

    move-result v1

    if-nez v1, :cond_3d

    iget v1, p1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->event:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3d

    if-eqz v0, :cond_2e

    iget-object v1, p1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    :cond_2e
    const-string/jumbo v1, "VrManagerService"

    const-string/jumbo v2, "VrListenerSevice has died permanently, leaving system VR mode."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/vr/VrManagerService;->-wrap21(Lcom/android/server/vr/VrManagerService;Z)V

    :cond_3d
    return-void

    :cond_3e
    :try_start_3e
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->-get5(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_49

    move-result-object v0

    goto :goto_16

    :catchall_49
    move-exception v1

    monitor-exit v2

    throw v1
.end method
