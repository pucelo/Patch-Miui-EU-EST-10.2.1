.class Lcom/android/server/am/ActivityStarterInjector;
.super Ljava/lang/Object;
.source "ActivityStarterInjector.java"


# static fields
.field private static final DEBUG_ACTIVITY:Z = false

.field private static final MIUI_AI_MODE_STACK_ID:I = 0x7

.field private static final TAG:Ljava/lang/String; = "ActivityStarterInjector"

.field static final advertisingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityStarterInjector;->advertisingActivities:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/am/ActivityStarterInjector;->advertisingActivities:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.xiaomi.gamecenter.ui.SDKAdActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/ActivityStarterInjector;->advertisingActivities:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.baidu.searchbox.update.UpdateDialogActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/ActivityStarterInjector;->advertisingActivities:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.alipay.android.phone.preinstall.channel.ChannelActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activityExistInFullScreenWorkspaceStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityManagerService;)Z
    .registers 4

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityStarterInjector;->reusedActivityInFullScreenWorkspaceStack(Lcom/android/server/am/ActivityRecord;I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0, p2}, Lcom/android/server/am/ActivityStarterInjector;->reusedActivityProcessExist(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityManagerService;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static activityExistInMiuiAiModeStack(Lcom/android/server/am/ActivityRecord;I)Z
    .registers 5

    const/4 v2, 0x7

    const/4 v0, 0x0

    if-eqz p0, :cond_d

    if-ne p1, v2, :cond_d

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStackId()I

    move-result v1

    if-ne v1, v2, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method public static clearTaskIfNeeded(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStackSupervisor;)Z
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityStarterInjector;->reusedActivityInFullScreenWorkspaceStack(Lcom/android/server/am/ActivityRecord;I)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p2, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0, v1}, Lcom/android/server/am/ActivityStarterInjector;->reusedActivityProcessExist(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityManagerService;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget v1, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {p2, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZ)Z

    return v3

    :cond_1c
    return v2
.end method

.method public static interceptAdvertiseActivityInMiuiAiMode(Landroid/content/Intent;Lcom/android/server/am/ActivityStackSupervisor;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/android/server/am/ActivityStarterInjector;->advertisingActivities:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public static reparentMiuiAiTaskIfNeeded(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;II)Z
    .registers 13

    const/4 v6, 0x0

    const/4 v5, 0x7

    const/4 v3, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_61

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStackId()I

    move-result v2

    if-ne v2, v5, :cond_61

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getUid()I

    move-result v2

    if-ne v2, p3, :cond_18

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v4, :cond_61

    :cond_18
    if-eq p2, v5, :cond_61

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStackId()I

    move-result v2

    if-ne v2, v5, :cond_23

    return v3

    :cond_23
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v4, :cond_35

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v8

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityRecord;->setVisible(Z)V

    invoke-virtual {v8, p0}, Lcom/android/server/am/ActivityStack;->stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    iput-object v6, v8, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    :cond_35
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    const-string/jumbo v7, "moveTasksToFullscreenStack"

    move v2, v1

    move v4, v1

    move v5, v1

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/TaskRecord;->reparent(IZIZZZLjava/lang/String;)Z

    iput-boolean v1, v0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove_preload_pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return v1

    :cond_61
    return v3
.end method

.method private static reusedActivityInFullScreenWorkspaceStack(Lcom/android/server/am/ActivityRecord;I)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_10

    const/4 v2, 0x7

    if-ne p1, v2, :cond_10

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStackId()I

    move-result v2

    if-ne v2, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    move v0, v1

    goto :goto_d

    :cond_10
    move v0, v1

    goto :goto_d
.end method

.method private static reusedActivityProcessExist(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityManagerService;)Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1c

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0
.end method
