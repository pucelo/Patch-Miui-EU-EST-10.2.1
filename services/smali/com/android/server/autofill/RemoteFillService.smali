.class final Lcom/android/server/autofill/RemoteFillService;
.super Ljava/lang/Object;
.source "RemoteFillService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;,
        Lcom/android/server/autofill/RemoteFillService$MyHandler;,
        Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;,
        Lcom/android/server/autofill/RemoteFillService$PendingRequest;,
        Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;,
        Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RemoteFillService"

.field private static final TIMEOUT_IDLE_BIND_MILLIS:J = 0x1388L

.field private static final TIMEOUT_REMOTE_REQUEST_MILLIS:J = 0x1388L


# instance fields
.field private mAutoFillService:Landroid/service/autofill/IAutoFillService;

.field private mBinding:Z

.field private final mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

.field private mCompleted:Z

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private final mHandler:Lcom/android/internal/os/HandlerCaller;

.field private final mIntent:Landroid/content/Intent;

.field private mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceDied:Z

.field private final mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/autofill/RemoteFillService;)Landroid/service/autofill/IAutoFillService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/autofill/RemoteFillService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mBinding:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/autofill/RemoteFillService;)Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/autofill/RemoteFillService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/autofill/RemoteFillService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mDestroyed:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/autofill/RemoteFillService;)Lcom/android/internal/os/HandlerCaller;
    .registers 2

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Lcom/android/internal/os/HandlerCaller;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/autofill/RemoteFillService;)Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    .registers 2

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/autofill/RemoteFillService;)Landroid/content/ServiceConnection;
    .registers 2

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/IAutoFillService;)Landroid/service/autofill/IAutoFillService;
    .registers 2

    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/autofill/RemoteFillService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/autofill/RemoteFillService;->mBinding:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    .registers 2

    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/autofill/RemoteFillService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/autofill/RemoteFillService;->mServiceDied:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/autofill/RemoteFillService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->isBound()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/RemoteFillService;->dispatchOnFillRequestFailure(Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;IILandroid/service/autofill/FillResponse;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/autofill/RemoteFillService;->dispatchOnFillRequestSuccess(Lcom/android/server/autofill/RemoteFillService$PendingRequest;IILandroid/service/autofill/FillResponse;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/autofill/RemoteFillService;Landroid/os/ICancellationSignal;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->dispatchOnFillTimeout(Landroid/os/ICancellationSignal;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/RemoteFillService;->dispatchOnSaveRequestFailure(Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->dispatchOnSaveRequestSuccess(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/autofill/RemoteFillService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->handleBinderDied()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/autofill/RemoteFillService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->handleDestroy()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handlePendingRequest(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/autofill/RemoteFillService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->handleUnbind()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;-><init>(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;)V

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mServiceConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    iput-object p2, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.service.autofill.AutofillService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mIntent:Landroid/content/Intent;

    iput p3, p0, Lcom/android/server/autofill/RemoteFillService;->mUserId:I

    new-instance v0, Lcom/android/server/autofill/RemoteFillService$MyHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/autofill/RemoteFillService$MyHandler;-><init>(Lcom/android/server/autofill/RemoteFillService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Lcom/android/internal/os/HandlerCaller;

    return-void
.end method

.method private cancelScheduledUnbind()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->removeMessages(I)V

    return-void
.end method

.method private dispatchOnFillRequestFailure(Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/-$Lambda$JYqZriexGNVTrQ5cwTlcgjPSZFY;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1, p2}, Lcom/android/server/autofill/-$Lambda$JYqZriexGNVTrQ5cwTlcgjPSZFY;-><init>(BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private dispatchOnFillRequestSuccess(Lcom/android/server/autofill/RemoteFillService$PendingRequest;IILandroid/service/autofill/FillResponse;)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/android/server/autofill/-$Lambda$JYqZriexGNVTrQ5cwTlcgjPSZFY$1;

    move v1, p3

    move v2, p2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/autofill/-$Lambda$JYqZriexGNVTrQ5cwTlcgjPSZFY$1;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private dispatchOnFillTimeout(Landroid/os/ICancellationSignal;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/-$Lambda$tQjSpU6IVjrOfYzILn21rTYl4Vo;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lcom/android/server/autofill/-$Lambda$tQjSpU6IVjrOfYzILn21rTYl4Vo;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private dispatchOnSaveRequestFailure(Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/-$Lambda$JYqZriexGNVTrQ5cwTlcgjPSZFY;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1, p2}, Lcom/android/server/autofill/-$Lambda$JYqZriexGNVTrQ5cwTlcgjPSZFY;-><init>(BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private dispatchOnSaveRequestSuccess(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/-$Lambda$tQjSpU6IVjrOfYzILn21rTYl4Vo$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Lcom/android/server/autofill/-$Lambda$tQjSpU6IVjrOfYzILn21rTYl4Vo$1;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private ensureBound()V
    .registers 7

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->isBound()Z

    move-result v1

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/android/server/autofill/RemoteFillService;->mBinding:Z

    if-eqz v1, :cond_b

    :cond_a
    return-void

    :cond_b
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_32

    const-string/jumbo v1, "RemoteFillService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/autofill/RemoteFillService;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] ensureBound()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/autofill/RemoteFillService;->mBinding:Z

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/autofill/RemoteFillService;->mUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const v5, 0x4000001

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_82

    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_78

    const-string/jumbo v1, "RemoteFillService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/autofill/RemoteFillService;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] could not bind to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/autofill/RemoteFillService;->mBinding:Z

    iget-boolean v1, p0, Lcom/android/server/autofill/RemoteFillService;->mServiceDied:Z

    if-nez v1, :cond_82

    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService;->binderDied()V

    :cond_82
    return-void
.end method

.method private ensureUnbound()V
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->isBound()Z

    move-result v1

    if-nez v1, :cond_f

    iget-boolean v1, p0, Lcom/android/server/autofill/RemoteFillService;->mBinding:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_f

    return-void

    :cond_f
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_36

    const-string/jumbo v1, "RemoteFillService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/autofill/RemoteFillService;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] ensureUnbound()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    iput-boolean v4, p0, Lcom/android/server/autofill/RemoteFillService;->mBinding:Z

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->isBound()Z

    move-result v1

    if-eqz v1, :cond_53

    :try_start_3e
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/service/autofill/IAutoFillService;->onConnectedStateChanged(Z)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_44} :catch_5b

    :goto_44
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    invoke-interface {v1}, Landroid/service/autofill/IAutoFillService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iput-object v5, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    :cond_53
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    :catch_5b
    move-exception v0

    const-string/jumbo v1, "RemoteFillService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception calling onDisconnected(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44
.end method

.method private handleBinderDied()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    invoke-interface {v0}, Landroid/service/autofill/IAutoFillService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_f
    iput-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mServiceDied:Z

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    invoke-interface {v0, p0}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onServiceDied(Lcom/android/server/autofill/RemoteFillService;)V

    return-void
.end method

.method private handleDestroy()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->cancel()Z

    iput-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    :cond_c
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->ensureUnbound()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mDestroyed:Z

    return-void
.end method

.method private handlePendingRequest(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mDestroyed:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCompleted:Z

    if-eqz v0, :cond_9

    :cond_8
    return-void

    :cond_9
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->isBound()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->cancel()Z

    :cond_18
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->ensureBound()V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_45

    const-string/jumbo v0, "RemoteFillService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/autofill/RemoteFillService;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] handlePendingRequest()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    invoke-virtual {p1}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->run()V

    invoke-virtual {p1}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->isFinal()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCompleted:Z

    goto :goto_1d
.end method

.method private handleResponseCallbackCommon(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Z
    .registers 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mDestroyed:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    return v0

    :cond_7
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    if-ne v0, p1, :cond_d

    iput-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    :cond_d
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->scheduleUnbind()V

    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method private handleUnbind()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->ensureUnbound()V

    return-void
.end method

.method private isBound()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static synthetic lambda$-com_android_server_autofill_RemoteFillService_10745(Landroid/os/ICancellationSignal;)V
    .registers 5

    :try_start_0
    invoke-interface {p0}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    const-string/jumbo v1, "RemoteFillService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error calling cancellation signal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private scheduleUnbind()V
    .registers 5

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->cancelScheduledUnbind()V

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Lcom/android/internal/os/HandlerCaller;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/os/HandlerCaller;->sendMessageDelayed(Landroid/os/Message;J)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public cancelCurrentRequest()I
    .registers 4

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/server/autofill/RemoteFillService;->mDestroyed:Z

    if-eqz v1, :cond_8

    const/high16 v1, -0x80000000

    return v1

    :cond_8
    const/high16 v0, -0x80000000

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    instance-of v1, v1, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    check-cast v1, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-static {v1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->-get0(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Landroid/service/autofill/FillRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v0

    :cond_20
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    invoke-virtual {v1}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->cancel()Z

    iput-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    :cond_27
    return v0
.end method

.method public destroy()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    const-string/jumbo v0, "  "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "service:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "userId="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget v2, p0, Lcom/android/server/autofill/RemoteFillService;->mUserId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "componentName="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "destroyed="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/autofill/RemoteFillService;->mDestroyed:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "bound="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->isBound()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "hasPendingRequest="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    if-eqz v1, :cond_a6

    const/4 v1, 0x1

    :goto_97
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void

    :cond_a6
    const/4 v1, 0x0

    goto :goto_97
.end method

.method synthetic lambda$-com_android_server_autofill_RemoteFillService_10019(Lcom/android/server/autofill/RemoteFillService$PendingRequest;ILandroid/service/autofill/FillResponse;I)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handleResponseCallbackCommon(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, p3, p4, v1}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestSuccess(ILandroid/service/autofill/FillResponse;ILjava/lang/String;)V

    :cond_11
    return-void
.end method

.method synthetic lambda$-com_android_server_autofill_RemoteFillService_10424(Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handleResponseCallbackCommon(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestFailure(Ljava/lang/CharSequence;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method synthetic lambda$-com_android_server_autofill_RemoteFillService_11081(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handleResponseCallbackCommon(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onSaveRequestSuccess(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method synthetic lambda$-com_android_server_autofill_RemoteFillService_11426(Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handleResponseCallbackCommon(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onSaveRequestFailure(Ljava/lang/CharSequence;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public onFillRequest(Landroid/service/autofill/FillRequest;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->cancelScheduledUnbind()V

    new-instance v0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-direct {v0, p1, p0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;-><init>(Landroid/service/autofill/FillRequest;Lcom/android/server/autofill/RemoteFillService;)V

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onSaveRequest(Landroid/service/autofill/SaveRequest;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->cancelScheduledUnbind()V

    new-instance v0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    invoke-direct {v0, p1, p0}, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;-><init>(Landroid/service/autofill/SaveRequest;Lcom/android/server/autofill/RemoteFillService;)V

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
