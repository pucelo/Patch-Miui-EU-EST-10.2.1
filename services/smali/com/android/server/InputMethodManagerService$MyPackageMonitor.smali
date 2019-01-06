.class final Lcom/android/server/InputMethodManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field private final mChangedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImePackageAppeared:Z

.field private final mKnownImePackageNames:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mKnownImePackageNames:Landroid/util/ArraySet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    return-void
.end method

.method private clearPackageChangeState()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    return-void
.end method

.method private isChangingPackagesOfCurrentUserLocked()Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->getChangingUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    if-ne v1, v2, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private onFinishPackageChangesInternal()V
    .registers 16

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v11, v10, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v11

    :try_start_5
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isChangingPackagesOfCurrentUserLocked()Z
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_120

    move-result v10

    if-nez v10, :cond_d

    monitor-exit v11

    return-void

    :cond_d
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->shouldRebuildInputMethodListLocked()Z
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_120

    move-result v10

    if-nez v10, :cond_15

    monitor-exit v11

    return-void

    :cond_15
    const/4 v3, 0x0

    :try_start_16
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v10, v10, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v10}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v4

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v10, v10, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v4, :cond_8c

    const/4 v6, 0x0

    :goto_29
    if-ge v6, v0, :cond_8c

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v10, v10, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_40

    move-object v3, v7

    :cond_40
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5b

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v10}, Lcom/android/server/InputMethodManagerService;->-get1(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->-wrap0(Lcom/android/server/InputMethodManagerService$InputMethodFileManager;Ljava/lang/String;)V

    :cond_5b
    const/4 v10, 0x2

    if-eq v1, v10, :cond_61

    const/4 v10, 0x3

    if-ne v1, v10, :cond_89

    :cond_61
    const-string/jumbo v10, "InputMethodManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Input method uninstalled, disabling: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    :cond_89
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    :cond_8c
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    const/4 v2, 0x0

    if-eqz v3, :cond_100

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I
    :try_end_9c
    .catchall {:try_start_16 .. :try_end_9c} :catchall_120

    move-result v1

    const/4 v10, 0x2

    if-eq v1, v10, :cond_a3

    const/4 v10, 0x3

    if-ne v1, v10, :cond_100

    :cond_a3
    const/4 v9, 0x0

    :try_start_a4
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v10}, Lcom/android/server/InputMethodManagerService;->-get2(Lcom/android/server/InputMethodManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v10

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v13, v13, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v13}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v13

    const/4 v14, 0x0

    invoke-interface {v10, v12, v14, v13}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    :try_end_ba
    .catch Landroid/os/RemoteException; {:try_start_a4 .. :try_end_ba} :catch_123
    .catchall {:try_start_a4 .. :try_end_ba} :catchall_120

    move-result-object v9

    :goto_bb
    if-nez v9, :cond_100

    :try_start_bd
    const-string/jumbo v10, "InputMethodManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Current input method removed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v12, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v12, v12, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget-object v13, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget v13, v13, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    const/4 v14, 0x0

    invoke-static {v10, v12, v14, v13}, Lcom/android/server/InputMethodManagerService;->-wrap3(Lcom/android/server/InputMethodManagerService;Landroid/os/IBinder;II)V

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v10}, Lcom/android/server/InputMethodManagerService;->-wrap0(Lcom/android/server/InputMethodManagerService;)Z

    move-result v10

    if-nez v10, :cond_100

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v10, "InputMethodManagerService"

    const-string/jumbo v12, "Unsetting current input method"

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    const-string/jumbo v12, ""

    invoke-static {v10, v12}, Lcom/android/server/InputMethodManagerService;->-wrap1(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)V

    :cond_100
    if-nez v3, :cond_112

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v10}, Lcom/android/server/InputMethodManagerService;->-wrap0(Lcom/android/server/InputMethodManagerService;)Z

    move-result v2

    :cond_108
    :goto_108
    if-eqz v2, :cond_110

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V
    :try_end_110
    .catchall {:try_start_bd .. :try_end_110} :catchall_120

    :cond_110
    monitor-exit v11

    return-void

    :cond_112
    if-nez v2, :cond_108

    :try_start_114
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z
    :try_end_11b
    .catchall {:try_start_114 .. :try_end_11b} :catchall_120

    move-result v10

    if-eqz v10, :cond_108

    const/4 v2, 0x1

    goto :goto_108

    :catchall_120
    move-exception v10

    monitor-exit v11

    throw v10

    :catch_123
    move-exception v5

    goto :goto_bb
.end method

.method private shouldRebuildInputMethodListLocked()Z
    .registers 6

    const/4 v4, 0x1

    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    if-eqz v3, :cond_6

    return v4

    :cond_6
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_23

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mKnownImePackageNames:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    return v4

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_23
    const/4 v3, 0x0

    return v3
.end method


# virtual methods
.method final addKnownImePackageNameLocked(Ljava/lang/String;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mKnownImePackageNames:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method clearKnownImePackageNamesLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mKnownImePackageNames:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public onBeginPackageChanges()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->clearPackageChangeState()V

    return-void
.end method

.method public onFinishPackageChanges()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->onFinishPackageChangesInternal()V

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->clearPackageChangeState()V

    return-void
.end method

.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 16

    const/4 v10, 0x1

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v7, v5, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_7
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isChangingPackagesOfCurrentUserLocked()Z
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_6b

    move-result v5

    if-nez v5, :cond_f

    monitor-exit v7

    return v6

    :cond_f
    :try_start_f
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v1, :cond_69

    const/4 v2, 0x0

    :goto_22
    if-ge v2, v0, :cond_69

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66

    array-length v8, p2

    move v5, v6

    :goto_3a
    if-ge v5, v8, :cond_66

    aget-object v4, p2, v5

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_45
    .catchall {:try_start_f .. :try_end_45} :catchall_6b

    move-result v9

    if-eqz v9, :cond_63

    if-nez p4, :cond_4c

    monitor-exit v7

    return v10

    :cond_4c
    :try_start_4c
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/InputMethodManagerServiceInjector;->shouldResetIME(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_6b

    move-result v5

    if-nez v5, :cond_54

    monitor-exit v7

    return v10

    :cond_54
    :try_start_54
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Lcom/android/server/InputMethodManagerService;->-wrap1(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v5}, Lcom/android/server/InputMethodManagerService;->-wrap0(Lcom/android/server/InputMethodManagerService;)Z
    :try_end_61
    .catchall {:try_start_54 .. :try_end_61} :catchall_6b

    monitor-exit v7

    return v10

    :cond_63
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    :cond_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_69
    monitor-exit v7

    return v6

    :catchall_6b
    move-exception v5

    monitor-exit v7

    throw v5
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .registers 8

    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    if-nez v2, :cond_2b

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.view.InputMethod"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->getChangingUserId()I

    move-result v3

    const/16 v4, 0x200

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2b

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    :cond_2b
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x0

    array-length v2, p1

    :goto_2
    if-ge v1, v2, :cond_e

    aget-object v0, p1, v1

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x0

    array-length v2, p1

    :goto_2
    if-ge v1, v2, :cond_e

    aget-object v0, p1, v1

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return-void
.end method
