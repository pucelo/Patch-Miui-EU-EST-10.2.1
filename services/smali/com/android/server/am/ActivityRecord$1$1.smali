.class Lcom/android/server/am/ActivityRecord$1$1;
.super Ljava/lang/Object;
.source "ActivityRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityRecord$1;->onGestureCancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityRecord$1;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityRecord$1;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ActivityRecord$1$1;->this$1:Lcom/android/server/am/ActivityRecord$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord$1$1;->this$1:Lcom/android/server/am/ActivityRecord$1;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord$1$1;->this$1:Lcom/android/server/am/ActivityRecord$1;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_1b

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method
