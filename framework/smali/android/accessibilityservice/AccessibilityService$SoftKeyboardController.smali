.class public final Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;
.super Ljava/lang/Object;
.source "AccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SoftKeyboardController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;
    }
.end annotation


# instance fields
.field private mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mService:Landroid/accessibilityservice/AccessibilityService;


# direct methods
.method constructor <init>(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mService:Landroid/accessibilityservice/AccessibilityService;

    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private setSoftKeyboardCallbackEnabled(Z)V
    .registers 6

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v3}, Landroid/accessibilityservice/AccessibilityService;->-get0(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_13

    :try_start_10
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setSoftKeyboardCallbackEnabled(Z)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    :cond_13
    return-void

    :catch_14
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public addOnShowModeChangedListener(Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->addOnShowModeChangedListener(Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public addOnShowModeChangedListener(Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;Landroid/os/Handler;)V
    .registers 6

    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    if-nez v1, :cond_e

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    :cond_e
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_1f

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->setSoftKeyboardCallbackEnabled(Z)V
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_21

    :cond_1f
    monitor-exit v2

    return-void

    :catchall_21
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method dispatchSoftKeyboardShowModeChanged(I)V
    .registers 10

    iget-object v6, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    iget-object v5, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    if-eqz v5, :cond_f

    iget-object v5, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1e

    :cond_f
    const-string/jumbo v5, "AccessibilityService"

    const-string/jumbo v7, "Received soft keyboard show mode changed callback with no listeners registered!"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->setSoftKeyboardCallbackEnabled(Z)V
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_46

    monitor-exit v6

    return-void

    :cond_1e
    :try_start_1e
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v5, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    invoke-direct {v1, v5}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_46

    monitor-exit v6

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    :goto_2b
    if-ge v3, v0, :cond_4d

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    if-eqz v2, :cond_49

    new-instance v5, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$1;

    invoke-direct {v5, p0, v4, p1}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$1;-><init>(Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;I)V

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :catchall_46
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_49
    invoke-interface {v4, p0, p1}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;->onShowModeChanged(Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;I)V

    goto :goto_43

    :cond_4d
    return-void
.end method

.method public getShowMode()I
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "accessibility_soft_keyboard_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_c} :catch_e

    move-result v1

    return v1

    :catch_e
    move-exception v0

    const-string/jumbo v1, "AccessibilityService"

    const-string/jumbo v2, "Failed to obtain the soft keyboard mode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method onServiceConnected()V
    .registers 3

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->setSoftKeyboardCallbackEnabled(Z)V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    :cond_15
    monitor-exit v1

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeOnShowModeChangedListener(Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;)Z
    .registers 6

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    if-nez v2, :cond_6

    return v3

    :cond_6
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_9
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_29

    const/4 v0, 0x1

    :goto_12
    if-eqz v0, :cond_19

    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_19
    if-eqz v0, :cond_27

    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->setSoftKeyboardCallbackEnabled(Z)V
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_2b

    :cond_27
    monitor-exit v3

    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_12

    :catchall_2b
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setShowMode(I)Z
    .registers 6

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v3}, Landroid/accessibilityservice/AccessibilityService;->-get0(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_22

    :try_start_10
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setSoftKeyboardShowMode(I)Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_15

    move-result v2

    return v2

    :catch_15
    move-exception v1

    const-string/jumbo v2, "AccessibilityService"

    const-string/jumbo v3, "Failed to set soft keyboard behavior"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_22
    const/4 v2, 0x0

    return v2
.end method
