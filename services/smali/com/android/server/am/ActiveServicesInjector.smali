.class public Lcom/android/server/am/ActiveServicesInjector;
.super Ljava/lang/Object;
.source "ActiveServicesInjector.java"


# static fields
.field private static final DEBUG_SERVICE:Z = false

.field public static final MIUI_AI_MODE_STACK_ID:I = 0x7

.field private static final PROCESS_STATE_FOREGROUND_SERVICE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ActiveServicesInjector"

.field static final miuiAdvertisingPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sMayRestartProcessList:Ljava/util/ArrayList;
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

    sput-object v0, Lcom/android/server/am/ActiveServicesInjector;->sMayRestartProcessList:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/am/ActiveServicesInjector;->sMayRestartProcessList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.incallui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ActiveServicesInjector;->miuiAdvertisingPackages:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/am/ActiveServicesInjector;->miuiAdvertisingPackages:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.miui.systemAdSolution"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canRestartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ActivityManagerService;)Z
    .registers 13

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0, v1, p1}, Lcom/android/server/am/AutoStartManagerService;->canRestartServiceLocked(Ljava/lang/String;ILcom/android/server/am/ActivityManagerService;)Z

    move-result v0

    if-nez v0, :cond_10

    return v9

    :cond_10
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v0

    if-eqz v0, :cond_9a

    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "Restart: AMS"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    if-eqz v5, :cond_92

    iget-object v5, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    :goto_2d
    iget-object v6, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    if-eqz v8, :cond_3b

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v3}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    :cond_3b
    aput-object v3, v7, v9

    const/4 v3, 0x2

    invoke-virtual/range {v0 .. v7}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->checkPackageState(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v10, :cond_9a

    const-string/jumbo v1, "WhetstonePackageState"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission denied by Whetstone, cannot re-start service from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    if-eqz v0, :cond_96

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :goto_6a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", UserId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_92
    const-string/jumbo v5, ""

    goto :goto_2d

    :cond_96
    const-string/jumbo v0, ""

    goto :goto_6a

    :cond_9a
    sget-boolean v0, Lcom/miui/whetstone/WhetstonePackageState;->DEBUG:Z

    if-eqz v0, :cond_eb

    const-string/jumbo v1, "WhetstonePackageState"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restart service from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    if-eqz v0, :cond_ec

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :goto_c4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", UserId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_eb
    return v10

    :cond_ec
    const-string/jumbo v0, ""

    goto :goto_c4
.end method

.method public static closeCheckPriority(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    sget-object v0, Lcom/android/server/am/LowPriorityServiceHelper;->mInstance:Lcom/android/server/am/LowPriorityServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/am/LowPriorityServiceHelper;->closeCheckPriority()V

    return-void
.end method

.method public static interceptMiuiSystemAdInMiuiAiModeIfNeeded(Ljava/lang/String;Lcom/android/server/am/ActivityManagerService;)Z
    .registers 4

    sget-object v0, Lcom/android/server/am/ActiveServicesInjector;->miuiAdvertisingPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    return v0

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public static isServiceForeground(Lcom/android/server/am/ActivityManagerService;Landroid/content/ComponentName;I)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_5

    return v1

    :cond_5
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2727

    invoke-virtual {v3, v5, p2, v4}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    :goto_13
    return v1

    :cond_14
    move v1, v2

    goto :goto_13
.end method

.method public static removeServiceLocked(ILandroid/util/SparseArray;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/ActiveServices$ServiceMap;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;)V"
        }
    .end annotation

    const/4 v2, -0x1

    if-ne p0, v2, :cond_17

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_9
    if-ltz v0, :cond_22

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActiveServices$ServiceMap;

    invoke-static {v2, p2}, Lcom/android/server/am/ActiveServicesInjector;->removeServiceLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Ljava/util/ArrayList;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_17
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-eqz v1, :cond_22

    invoke-static {v1, p2}, Lcom/android/server/am/ActiveServicesInjector;->removeServiceLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Ljava/util/ArrayList;)V

    :cond_22
    return-void
.end method

.method public static removeServiceLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActiveServices$ServiceMap;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_8
    if-ltz v0, :cond_1f

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    sget-object v2, Lcom/android/server/am/LowPriorityServiceHelper;->mInstance:Lcom/android/server/am/LowPriorityServiceHelper;

    invoke-virtual {v2, v1}, Lcom/android/server/am/LowPriorityServiceHelper;->forceRemoveServiceLocked(Lcom/android/server/am/ServiceRecord;)Z

    move-result v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1f
    return-void
.end method

.method public static removeServicePriority(Lcom/android/server/am/ActivityManagerService;Lcom/android/internal/app/MiuiServicePriority;Z)V
    .registers 4

    sget-object v0, Lcom/android/server/am/LowPriorityServiceHelper;->mInstance:Lcom/android/server/am/LowPriorityServiceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/LowPriorityServiceHelper;->removeServicePriority(Lcom/android/internal/app/MiuiServicePriority;Z)V

    return-void
.end method

.method public static setServicePriority(Lcom/android/server/am/ActivityManagerService;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/server/am/LowPriorityServiceHelper;->mInstance:Lcom/android/server/am/LowPriorityServiceHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/am/LowPriorityServiceHelper;->setServicePriority(Ljava/util/List;)V

    return-void
.end method

.method public static setServicePriority(Lcom/android/server/am/ActivityManagerService;Ljava/util/List;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;J)V"
        }
    .end annotation

    sget-object v0, Lcom/android/server/am/LowPriorityServiceHelper;->mInstance:Lcom/android/server/am/LowPriorityServiceHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/am/LowPriorityServiceHelper;->setServicePriority(Ljava/util/List;)V

    sget-object v0, Lcom/android/server/am/LowPriorityServiceHelper;->mInstance:Lcom/android/server/am/LowPriorityServiceHelper;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/am/LowPriorityServiceHelper;->setNoProcDelayTime(J)V

    return-void
.end method

.method public static whetherShowNotificationForBackgroundRunningService()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static willRestartNow(Lcom/android/server/am/ProcessRecord;)Z
    .registers 4

    if-eqz p0, :cond_17

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    if-ltz v1, :cond_17

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_17

    sget-object v1, Lcom/android/server/am/ActiveServicesInjector;->sMayRestartProcessList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static willRestartNow(Lcom/android/server/am/ServiceRecord;)Z
    .registers 3

    sget-object v0, Lcom/android/server/am/ActiveServicesInjector;->sMayRestartProcessList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
