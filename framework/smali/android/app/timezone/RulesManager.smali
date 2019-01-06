.class public final Landroid/app/timezone/RulesManager;
.super Ljava/lang/Object;
.source "RulesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timezone/RulesManager$CallbackWrapper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final ERROR_OPERATION_IN_PROGRESS:I = 0x1

.field public static final ERROR_UNKNOWN_FAILURE:I = 0x2

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "timezone.RulesManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIRulesManager:Landroid/app/timezone/IRulesManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/timezone/RulesManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "timezone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/timezone/IRulesManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/timezone/IRulesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/timezone/RulesManager;->mIRulesManager:Landroid/app/timezone/IRulesManager;

    return-void
.end method

.method static logDebug(Ljava/lang/String;)V
    .registers 1

    return-void
.end method


# virtual methods
.method public getRulesState()Landroid/app/timezone/RulesState;
    .registers 5

    :try_start_0
    const-string/jumbo v2, "sIRulesManager.getRulesState()"

    invoke-static {v2}, Landroid/app/timezone/RulesManager;->logDebug(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/timezone/RulesManager;->mIRulesManager:Landroid/app/timezone/IRulesManager;

    invoke-interface {v2}, Landroid/app/timezone/IRulesManager;->getRulesState()Landroid/app/timezone/RulesState;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sIRulesManager.getRulesState() returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/app/timezone/RulesManager;->logDebug(Ljava/lang/String;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_23} :catch_24

    return-object v1

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public requestInstall(Landroid/os/ParcelFileDescriptor;[BLandroid/app/timezone/Callback;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Landroid/app/timezone/RulesManager$CallbackWrapper;

    iget-object v2, p0, Landroid/app/timezone/RulesManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p3}, Landroid/app/timezone/RulesManager$CallbackWrapper;-><init>(Landroid/app/timezone/RulesManager;Landroid/content/Context;Landroid/app/timezone/Callback;)V

    :try_start_7
    const-string/jumbo v2, "sIRulesManager.requestInstall()"

    invoke-static {v2}, Landroid/app/timezone/RulesManager;->logDebug(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/timezone/RulesManager;->mIRulesManager:Landroid/app/timezone/IRulesManager;

    invoke-interface {v2, p1, p2, v1}, Landroid/app/timezone/IRulesManager;->requestInstall(Landroid/os/ParcelFileDescriptor;[BLandroid/app/timezone/ICallback;)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_14

    move-result v2

    return v2

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public requestNothing([BZ)V
    .registers 6

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sIRulesManager.requestNothing() with token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/timezone/RulesManager;->logDebug(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/timezone/RulesManager;->mIRulesManager:Landroid/app/timezone/IRulesManager;

    invoke-interface {v1, p1, p2}, Landroid/app/timezone/IRulesManager;->requestNothing([BZ)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestUninstall([BLandroid/app/timezone/Callback;)I
    .registers 6

    new-instance v1, Landroid/app/timezone/RulesManager$CallbackWrapper;

    iget-object v2, p0, Landroid/app/timezone/RulesManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p2}, Landroid/app/timezone/RulesManager$CallbackWrapper;-><init>(Landroid/app/timezone/RulesManager;Landroid/content/Context;Landroid/app/timezone/Callback;)V

    :try_start_7
    const-string/jumbo v2, "sIRulesManager.requestUninstall()"

    invoke-static {v2}, Landroid/app/timezone/RulesManager;->logDebug(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/timezone/RulesManager;->mIRulesManager:Landroid/app/timezone/IRulesManager;

    invoke-interface {v2, p1, v1}, Landroid/app/timezone/IRulesManager;->requestUninstall([BLandroid/app/timezone/ICallback;)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_14

    move-result v2

    return v2

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
