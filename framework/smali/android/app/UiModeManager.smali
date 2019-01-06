.class public Landroid/app/UiModeManager;
.super Ljava/lang/Object;
.source "UiModeManager.java"


# static fields
.field public static ACTION_ENTER_CAR_MODE:Ljava/lang/String; = null

.field public static ACTION_ENTER_DESK_MODE:Ljava/lang/String; = null

.field public static ACTION_EXIT_CAR_MODE:Ljava/lang/String; = null

.field public static ACTION_EXIT_DESK_MODE:Ljava/lang/String; = null

.field public static final DISABLE_CAR_MODE_GO_HOME:I = 0x1

.field public static final ENABLE_CAR_MODE_ALLOW_SLEEP:I = 0x2

.field public static final ENABLE_CAR_MODE_GO_CAR_HOME:I = 0x1

.field public static final MODE_NIGHT_AUTO:I = 0x0

.field public static final MODE_NIGHT_NO:I = 0x1

.field public static final MODE_NIGHT_YES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "UiModeManager"


# instance fields
.field private mService:Landroid/app/IUiModeManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "android.app.action.ENTER_CAR_MODE"

    sput-object v0, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    const-string/jumbo v0, "android.app.action.EXIT_CAR_MODE"

    sput-object v0, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    const-string/jumbo v0, "android.app.action.ENTER_DESK_MODE"

    sput-object v0, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    const-string/jumbo v0, "android.app.action.EXIT_DESK_MODE"

    sput-object v0, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "uimode"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    return-void
.end method


# virtual methods
.method public disableCarMode(I)V
    .registers 4

    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v1, :cond_9

    :try_start_4
    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    invoke-interface {v1, p1}, Landroid/app/IUiModeManager;->disableCarMode(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    return-void

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public enableCarMode(I)V
    .registers 4

    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v1, :cond_9

    :try_start_4
    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    invoke-interface {v1, p1}, Landroid/app/IUiModeManager;->enableCarMode(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    return-void

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getCurrentModeType()I
    .registers 3

    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v1, :cond_11

    :try_start_4
    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    invoke-interface {v1}, Landroid/app/IUiModeManager;->getCurrentModeType()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_11
    const/4 v1, 0x1

    return v1
.end method

.method public getNightMode()I
    .registers 3

    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v1, :cond_11

    :try_start_4
    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    invoke-interface {v1}, Landroid/app/IUiModeManager;->getNightMode()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_11
    const/4 v1, -0x1

    return v1
.end method

.method public isNightModeLocked()Z
    .registers 3

    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v1, :cond_11

    :try_start_4
    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    invoke-interface {v1}, Landroid/app/IUiModeManager;->isNightModeLocked()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_11
    const/4 v1, 0x1

    return v1
.end method

.method public isUiModeLocked()Z
    .registers 3

    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v1, :cond_11

    :try_start_4
    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    invoke-interface {v1}, Landroid/app/IUiModeManager;->isUiModeLocked()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_11
    const/4 v1, 0x1

    return v1
.end method

.method public setNightMode(I)V
    .registers 4

    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v1, :cond_9

    :try_start_4
    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    invoke-interface {v1, p1}, Landroid/app/IUiModeManager;->setNightMode(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    return-void

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
