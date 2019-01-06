.class public Lcom/android/systemui/SystemUICompat;
.super Ljava/lang/Object;
.source "SystemUICompat.java"


# static fields
.field private static sINM:Landroid/app/INotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/SystemUICompat;->sINM:Landroid/app/INotificationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelTaskThumbnailTransition(Landroid/app/IActivityManager;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p0, p1}, Landroid/app/IActivityManager;->cancelTaskThumbnailTransition(I)V

    return-void
.end method

.method public static cancelTaskWindowTransition(Landroid/app/IActivityManager;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p0, p1}, Landroid/app/IActivityManager;->cancelTaskWindowTransition(I)V

    return-void
.end method

.method public static dismissKeyguardOnNextActivity()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/SystemUICompat$1;

    invoke-direct {v2}, Lcom/android/systemui/SystemUICompat$1;-><init>()V

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SystemUICompat"

    const-string/jumbo v2, "Error dismissing keyguard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getDeclaredAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public static getLocales(Landroid/content/res/Configuration;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    return-object v0
.end method

.method public static getNotificationDefaultColor()I
    .locals 1

    const v0, 0x10600ec

    return v0
.end method

.method public static getRecentsWindowRect(Landroid/app/IActivityManager;)Landroid/graphics/Rect;
    .locals 4

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    const/4 v3, 0x5

    :try_start_0
    invoke-interface {p0, v3}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v3, 0x1

    invoke-interface {p0, v3}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    iget-object v3, v1, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-object v2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    :catchall_0
    move-exception v3

    return-object v2
.end method

.method public static getStableInsets(Landroid/graphics/Rect;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Landroid/view/IWindowManager;->getStableInsets(ILandroid/graphics/Rect;)V

    return-void
.end method

.method public static hasDockedTask(Landroid/app/IActivityManager;)Z
    .locals 7

    const/4 v6, 0x0

    if-nez p0, :cond_0

    return v6

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x3

    :try_start_0
    invoke-interface {p0, v5}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    const/4 v1, 0x0

    iget-object v5, v3, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    array-length v5, v5

    add-int/lit8 v2, v5, -0x1

    :goto_1
    if-ltz v2, :cond_2

    xor-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_2

    iget-object v5, v3, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    aget v5, v5, v2

    if-eq v5, v4, :cond_1

    iget-object v5, v3, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    aget v5, v5, v2

    invoke-static {v5}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v1

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    return v1

    :cond_3
    return v6
.end method

.method public static isHighPriority(Ljava/lang/String;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static isHomeOrRecentsStack(ILandroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x5

    if-ne p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isRecentsActivityVisible(Lcom/android/systemui/recents/model/MutableBoolean;Landroid/app/IActivityManager;Landroid/content/pm/PackageManager;)Z
    .locals 13

    const/4 v10, 0x0

    if-nez p1, :cond_0

    return v10

    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/app/IActivityManager;->getAllStackInfos()Ljava/util/List;

    move-result-object v8

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_4

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$StackInfo;

    iget v11, v7, Landroid/app/ActivityManager$StackInfo;->stackId:I

    if-nez v11, :cond_2

    move-object v2, v7

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget v11, v7, Landroid/app/ActivityManager$StackInfo;->stackId:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    move-object v1, v7

    goto :goto_1

    :cond_3
    iget v11, v7, Landroid/app/ActivityManager$StackInfo;->stackId:I

    const/4 v12, 0x5

    if-ne v11, v12, :cond_1

    move-object v5, v7

    goto :goto_1

    :cond_4
    invoke-static {v2, v1}, Lcom/android/systemui/SystemUICompat;->isStackNotOccluded(Landroid/app/ActivityManager$StackInfo;Landroid/app/ActivityManager$StackInfo;)Z

    move-result v3

    invoke-static {v5, v1}, Lcom/android/systemui/SystemUICompat;->isStackNotOccluded(Landroid/app/ActivityManager$StackInfo;Landroid/app/ActivityManager$StackInfo;)Z

    move-result v6

    if-eqz p0, :cond_5

    iput-boolean v3, p0, Lcom/android/systemui/recents/model/MutableBoolean;->value:Z

    :cond_5
    if-eqz v5, :cond_7

    iget-object v9, v5, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    :goto_2
    if-eqz v6, :cond_6

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "com.android.systemui"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    sget-object v11, Lcom/android/systemui/recents/Recents;->RECENTS_ACTIVITIES:Ljava/util/Set;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    :cond_6
    return v10

    :cond_7
    const/4 v9, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return v10
.end method

.method private static isStackNotOccluded(Landroid/app/ActivityManager$StackInfo;Landroid/app/ActivityManager$StackInfo;)Z
    .locals 4

    if-eqz p0, :cond_1

    iget-boolean v1, p0, Landroid/app/ActivityManager$StackInfo;->visible:Z

    :goto_0
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    iget-boolean v2, p1, Landroid/app/ActivityManager$StackInfo;->visible:Z

    if-eqz v2, :cond_3

    iget v2, p1, Landroid/app/ActivityManager$StackInfo;->position:I

    iget v3, p0, Landroid/app/ActivityManager$StackInfo;->position:I

    if-le v2, v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    xor-int/lit8 v2, v0, 0x1

    and-int/2addr v1, v2

    :cond_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static registerStatusBar(Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/internal/statusbar/IStatusBar;Ljava/util/List;Ljava/util/List;[ILjava/util/List;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            "Lcom/android/internal/statusbar/IStatusBar;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/statusbar/StatusBarIcon;",
            ">;[I",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface/range {p0 .. p7}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Ljava/util/List;Ljava/util/List;[ILjava/util/List;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static setRecentsVisibility(Landroid/content/Context;Z)V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->setRecentsVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SystemServicesProxy"

    const-string/jumbo v2, "Unable to reach window manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setTemporaryScreenAutoBrightness(F)V
    .locals 3

    :try_start_0
    const-string/jumbo v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setTemporaryScreenBrightness(I)V
    .locals 3

    :try_start_0
    const-string/jumbo v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static startTaskInDockedMode(Lcom/android/systemui/recents/model/Task;ILandroid/app/IActivityManager;Landroid/content/Context;)Z
    .locals 6

    const/4 v5, 0x0

    if-nez p2, :cond_0

    return v5

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/ActivityOptions;->setDockCreateMode(I)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    iget-object v2, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I

    const-string/jumbo v2, "SystemServicesProxy"

    const-string/jumbo v3, "enter splitScreen mode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SystemServicesProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to dock task: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with createMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v5
.end method
