.class final Lcom/android/server/display/MiuiProjectionManager;
.super Ljava/lang/Object;
.source "MiuiProjectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;,
        Lcom/android/server/display/MiuiProjectionManager$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MIUI_PROJECTION"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayController:Lcom/android/server/display/WifiDisplayController;

.field private mHandler:Landroid/os/Handler;

.field private mIface:Ljava/lang/String;

.field private mState:Lcom/android/server/display/MiuiProjectionManager$State;


# direct methods
.method static synthetic -get0(Lcom/android/server/display/MiuiProjectionManager;)Lcom/android/server/display/WifiDisplayController;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/display/MiuiProjectionManager;Lcom/android/server/display/MiuiProjectionManager$State;)Lcom/android/server/display/MiuiProjectionManager$State;
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/MiuiProjectionManager;->mState:Lcom/android/server/display/MiuiProjectionManager$State;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/display/MiuiProjectionManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/MiuiProjectionManager;->startProjectionInternal()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/display/MiuiProjectionManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/MiuiProjectionManager;->stopProjectionInternal()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/WifiDisplayController;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/MiuiProjectionManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/display/MiuiProjectionManager;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    sget-object v0, Lcom/android/server/display/MiuiProjectionManager$State;->STATE_DISCONNECTED:Lcom/android/server/display/MiuiProjectionManager$State;

    iput-object v0, p0, Lcom/android/server/display/MiuiProjectionManager;->mState:Lcom/android/server/display/MiuiProjectionManager$State;

    return-void
.end method

.method private startProjectionInternal()V
    .registers 13

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v7, "mRemoteDisplayConnected"

    const-class v8, Ljava/lang/Boolean;

    invoke-static {v6, v7, v8}, Lmiui/util/ReflectionUtils;->tryGetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Lmiui/util/ObjectReference;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1e

    return-void

    :cond_1e
    iget-object v6, p0, Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v6}, Lcom/android/server/display/WifiDisplayController;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v6, "com.android.server.display.ExtendedRemoteDisplayHelper"

    invoke-direct {p0, v6}, Lcom/android/server/display/MiuiProjectionManager;->tryFindClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_7b

    const-string/jumbo v6, "isAvailable"

    const-class v7, Ljava/lang/Boolean;

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v2, v6, v7, v8}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v3

    if-eqz v3, :cond_7b

    invoke-virtual {v3}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_7b

    const-string/jumbo v6, "listen"

    const-class v7, Ljava/lang/Object;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/server/display/MiuiProjectionManager;->mIface:Ljava/lang/String;

    aput-object v9, v8, v10

    new-instance v9, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;

    invoke-direct {v9, p0, v11}, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;-><init>(Lcom/android/server/display/MiuiProjectionManager;Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;)V

    const/4 v10, 0x1

    aput-object v9, v8, v10

    iget-object v9, p0, Lcom/android/server/display/MiuiProjectionManager;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    aput-object v9, v8, v10

    iget-object v9, p0, Lcom/android/server/display/MiuiProjectionManager;->mContext:Landroid/content/Context;

    const/4 v10, 0x3

    aput-object v9, v8, v10

    invoke-static {v2, v6, v7, v8}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v5

    if-eqz v5, :cond_7b

    iget-object v6, p0, Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v7, "mExtRemoteDisplay"

    invoke-virtual {v5}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lmiui/util/ReflectionUtils;->trySetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v6, Lcom/android/server/display/MiuiProjectionManager$State;->STATE_LISTENING:Lcom/android/server/display/MiuiProjectionManager$State;

    iput-object v6, p0, Lcom/android/server/display/MiuiProjectionManager;->mState:Lcom/android/server/display/MiuiProjectionManager$State;

    return-void

    :cond_7b
    iget-object v6, p0, Lcom/android/server/display/MiuiProjectionManager;->mIface:Ljava/lang/String;

    new-instance v7, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;

    invoke-direct {v7, p0, v11}, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;-><init>(Lcom/android/server/display/MiuiProjectionManager;Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;)V

    iget-object v8, p0, Lcom/android/server/display/MiuiProjectionManager;->mHandler:Landroid/os/Handler;

    invoke-static {v6, v7, v8, v11}, Landroid/media/RemoteDisplay;->listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;)Landroid/media/RemoteDisplay;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v7, "mRemoteDisplay"

    invoke-static {v6, v7, v4}, Lmiui/util/ReflectionUtils;->trySetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v6, Lcom/android/server/display/MiuiProjectionManager$State;->STATE_LISTENING:Lcom/android/server/display/MiuiProjectionManager$State;

    iput-object v6, p0, Lcom/android/server/display/MiuiProjectionManager;->mState:Lcom/android/server/display/MiuiProjectionManager$State;

    return-void
.end method

.method private stopProjectionInternal()V
    .registers 10

    const/4 v8, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v5, "mExtRemoteDisplay"

    const-class v6, Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lmiui/util/ReflectionUtils;->tryGetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Lmiui/util/ObjectReference;

    move-result-object v2

    if-eqz v2, :cond_38

    invoke-virtual {v2}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    const-string/jumbo v4, "com.android.server.display.ExtendedRemoteDisplayHelper"

    invoke-direct {p0, v4}, Lcom/android/server/display/MiuiProjectionManager;->tryFindClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_33

    const-string/jumbo v4, "dispose"

    const-class v5, Ljava/lang/Void;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v0, v4, v5, v6}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    iget-object v4, p0, Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v5, "mExtRemoteDisplay"

    invoke-static {v4, v5, v8}, Lmiui/util/ReflectionUtils;->trySetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_33
    :goto_33
    sget-object v4, Lcom/android/server/display/MiuiProjectionManager$State;->STATE_DISCONNECTED:Lcom/android/server/display/MiuiProjectionManager$State;

    iput-object v4, p0, Lcom/android/server/display/MiuiProjectionManager;->mState:Lcom/android/server/display/MiuiProjectionManager$State;

    return-void

    :cond_38
    iget-object v4, p0, Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v5, "mRemoteDisplay"

    const-class v6, Landroid/media/RemoteDisplay;

    invoke-static {v4, v5, v6}, Lmiui/util/ReflectionUtils;->tryGetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Lmiui/util/ObjectReference;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/RemoteDisplay;

    invoke-virtual {v4}, Landroid/media/RemoteDisplay;->dispose()V

    iget-object v4, p0, Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v5, "mRemoteDisplay"

    invoke-static {v4, v5, v8}, Lmiui/util/ReflectionUtils;->trySetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_33
.end method

.method private tryFindClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v1

    :goto_5
    return-object v1

    :catch_6
    move-exception v0

    const-string/jumbo v2, "MIUI_PROJECTION"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "class not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method


# virtual methods
.method public startProjection(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/display/MiuiProjectionManager;->mState:Lcom/android/server/display/MiuiProjectionManager$State;

    sget-object v1, Lcom/android/server/display/MiuiProjectionManager$State;->STATE_DISCONNECTED:Lcom/android/server/display/MiuiProjectionManager$State;

    if-ne v0, v1, :cond_31

    const-string/jumbo v0, "MIUI_PROJECTION"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start projection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/display/MiuiProjectionManager;->mIface:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/display/MiuiProjectionManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/MiuiProjectionManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/MiuiProjectionManager$1;-><init>(Lcom/android/server/display/MiuiProjectionManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_31
    return-void
.end method

.method public stopProjection()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/MiuiProjectionManager;->mState:Lcom/android/server/display/MiuiProjectionManager$State;

    sget-object v1, Lcom/android/server/display/MiuiProjectionManager$State;->STATE_DISCONNECTED:Lcom/android/server/display/MiuiProjectionManager$State;

    if-eq v0, v1, :cond_19

    const-string/jumbo v0, "MIUI_PROJECTION"

    const-string/jumbo v1, "stop projection"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/MiuiProjectionManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/MiuiProjectionManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/display/MiuiProjectionManager$2;-><init>(Lcom/android/server/display/MiuiProjectionManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_19
    return-void
.end method
