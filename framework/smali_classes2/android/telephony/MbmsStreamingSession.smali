.class public Landroid/telephony/MbmsStreamingSession;
.super Ljava/lang/Object;
.source "MbmsStreamingSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/MbmsStreamingSession$1;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MbmsStreamingSession"

.field public static final MBMS_STREAMING_SERVICE_ACTION:Ljava/lang/String; = "android.telephony.action.EmbmsStreaming"

.field private static sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

.field private mKnownActiveStreamingServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/telephony/mbms/StreamingService;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/telephony/mbms/vendor/IMbmsStreamingService;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionId:I


# direct methods
.method static synthetic -get0(Landroid/telephony/MbmsStreamingSession;)Landroid/os/IBinder$DeathRecipient;
    .registers 2

    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic -get1(Landroid/telephony/MbmsStreamingSession;)Landroid/telephony/mbms/InternalStreamingSessionCallback;
    .registers 2

    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    return-object v0
.end method

.method static synthetic -get2(Landroid/telephony/MbmsStreamingSession;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 2

    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic -get3(Landroid/telephony/MbmsStreamingSession;)I
    .registers 2

    iget v0, p0, Landroid/telephony/MbmsStreamingSession;->mSubscriptionId:I

    return v0
.end method

.method static synthetic -get4()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object v0, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/telephony/MbmsStreamingSession;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/MbmsStreamingSession;->sendErrorToApp(ILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/telephony/mbms/MbmsStreamingSessionCallback;ILandroid/os/Handler;)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Landroid/telephony/MbmsStreamingSession$1;

    invoke-direct {v0, p0}, Landroid/telephony/MbmsStreamingSession$1;-><init>(Landroid/telephony/MbmsStreamingSession;)V

    iput-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mKnownActiveStreamingServices:Ljava/util/Set;

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/MbmsStreamingSession;->mSubscriptionId:I

    iput-object p1, p0, Landroid/telephony/MbmsStreamingSession;->mContext:Landroid/content/Context;

    iput p3, p0, Landroid/telephony/MbmsStreamingSession;->mSubscriptionId:I

    if-nez p4, :cond_2b

    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_2b
    new-instance v0, Landroid/telephony/mbms/InternalStreamingSessionCallback;

    invoke-direct {v0, p2, p4}, Landroid/telephony/mbms/InternalStreamingSessionCallback;-><init>(Landroid/telephony/mbms/MbmsStreamingSessionCallback;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    return-void
.end method

.method private bindAndInitialize()I
    .registers 4

    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.telephony.action.EmbmsStreaming"

    new-instance v2, Landroid/telephony/MbmsStreamingSession$3;

    invoke-direct {v2, p0}, Landroid/telephony/MbmsStreamingSession$3;-><init>(Landroid/telephony/MbmsStreamingSession;)V

    invoke-static {v0, v1, v2}, Landroid/telephony/mbms/MbmsUtils;->startBinding(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)I

    move-result v0

    return v0
.end method

.method public static create(Landroid/content/Context;Landroid/telephony/mbms/MbmsStreamingSessionCallback;ILandroid/os/Handler;)Landroid/telephony/MbmsStreamingSession;
    .registers 9

    const/4 v4, 0x0

    sget-object v2, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_13

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Cannot create two instances of MbmsStreamingSession"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_13
    new-instance v1, Landroid/telephony/MbmsStreamingSession;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/telephony/MbmsStreamingSession;-><init>(Landroid/content/Context;Landroid/telephony/mbms/MbmsStreamingSessionCallback;ILandroid/os/Handler;)V

    invoke-direct {v1}, Landroid/telephony/MbmsStreamingSession;->bindAndInitialize()I

    move-result v0

    if-eqz v0, :cond_2d

    sget-object v2, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v2, Landroid/telephony/MbmsStreamingSession$2;

    invoke-direct {v2, p1, v0}, Landroid/telephony/MbmsStreamingSession$2;-><init>(Landroid/telephony/mbms/MbmsStreamingSessionCallback;I)V

    invoke-virtual {p3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    return-object v2

    :cond_2d
    return-object v1
.end method

.method public static create(Landroid/content/Context;Landroid/telephony/mbms/MbmsStreamingSessionCallback;Landroid/os/Handler;)Landroid/telephony/MbmsStreamingSession;
    .registers 4

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Landroid/telephony/MbmsStreamingSession;->create(Landroid/content/Context;Landroid/telephony/mbms/MbmsStreamingSessionCallback;ILandroid/os/Handler;)Landroid/telephony/MbmsStreamingSession;

    move-result-object v0

    return-object v0
.end method

.method private sendErrorToApp(ILjava/lang/String;)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/telephony/MbmsStreamingSession;->mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/mbms/InternalStreamingSessionCallback;->onError(ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method


# virtual methods
.method public close()V
    .registers 9

    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_2
    iget-object v4, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_3b
    .catchall {:try_start_2 .. :try_end_a} :catchall_61

    if-nez v3, :cond_1c

    iget-object v4, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v4, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v4, p0, Landroid/telephony/MbmsStreamingSession;->mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    invoke-virtual {v4}, Landroid/telephony/mbms/InternalStreamingSessionCallback;->stop()V

    return-void

    :cond_1c
    :try_start_1c
    iget v4, p0, Landroid/telephony/MbmsStreamingSession;->mSubscriptionId:I

    invoke-interface {v3, v4}, Landroid/telephony/mbms/vendor/IMbmsStreamingService;->dispose(I)V

    iget-object v4, p0, Landroid/telephony/MbmsStreamingSession;->mKnownActiveStreamingServices:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/StreamingService;

    invoke-virtual {v1}, Landroid/telephony/mbms/StreamingService;->getCallback()Landroid/telephony/mbms/InternalStreamingServiceCallback;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/mbms/InternalStreamingServiceCallback;->stop()V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_3a} :catch_3b
    .catchall {:try_start_1c .. :try_end_3a} :catchall_61

    goto :goto_27

    :catch_3b
    move-exception v0

    iget-object v4, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v4, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v4, p0, Landroid/telephony/MbmsStreamingSession;->mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    invoke-virtual {v4}, Landroid/telephony/mbms/InternalStreamingSessionCallback;->stop()V

    :goto_4b
    return-void

    :cond_4c
    :try_start_4c
    iget-object v4, p0, Landroid/telephony/MbmsStreamingSession;->mKnownActiveStreamingServices:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_51} :catch_3b
    .catchall {:try_start_4c .. :try_end_51} :catchall_61

    iget-object v4, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v4, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v4, p0, Landroid/telephony/MbmsStreamingSession;->mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    invoke-virtual {v4}, Landroid/telephony/mbms/InternalStreamingSessionCallback;->stop()V

    goto :goto_4b

    :catchall_61
    move-exception v4

    iget-object v5, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v5, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v5, p0, Landroid/telephony/MbmsStreamingSession;->mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    invoke-virtual {v5}, Landroid/telephony/mbms/InternalStreamingSessionCallback;->stop()V

    throw v4
.end method

.method public onStreamingServiceStopped(Landroid/telephony/mbms/StreamingService;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mKnownActiveStreamingServices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestUpdateStreamingServices(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    if-nez v2, :cond_15

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Middleware not yet bound"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_15
    :try_start_15
    iget v3, p0, Landroid/telephony/MbmsStreamingSession;->mSubscriptionId:I

    invoke-interface {v2, v3, p1}, Landroid/telephony/mbms/vendor/IMbmsStreamingService;->requestUpdateStreamingServices(ILjava/util/List;)I

    move-result v1

    if-eqz v1, :cond_21

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Landroid/telephony/MbmsStreamingSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_21} :catch_22

    :cond_21
    :goto_21
    return-void

    :catch_22
    move-exception v0

    const-string/jumbo v3, "MbmsStreamingSession"

    const-string/jumbo v4, "Remote process died"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v3, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v3, 0x3

    invoke-direct {p0, v3, v5}, Landroid/telephony/MbmsStreamingSession;->sendErrorToApp(ILjava/lang/String;)V

    goto :goto_21
.end method

.method public startStreaming(Landroid/telephony/mbms/StreamingServiceInfo;Landroid/telephony/mbms/StreamingServiceCallback;Landroid/os/Handler;)Landroid/telephony/mbms/StreamingService;
    .registers 14

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v1, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    if-nez v2, :cond_15

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Middleware not yet bound"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    new-instance v5, Landroid/telephony/mbms/InternalStreamingServiceCallback;

    invoke-direct {v5, p2, p3}, Landroid/telephony/mbms/InternalStreamingServiceCallback;-><init>(Landroid/telephony/mbms/StreamingServiceCallback;Landroid/os/Handler;)V

    new-instance v0, Landroid/telephony/mbms/StreamingService;

    iget v1, p0, Landroid/telephony/MbmsStreamingSession;->mSubscriptionId:I

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Landroid/telephony/mbms/StreamingService;-><init>(ILandroid/telephony/mbms/vendor/IMbmsStreamingService;Landroid/telephony/MbmsStreamingSession;Landroid/telephony/mbms/StreamingServiceInfo;Landroid/telephony/mbms/InternalStreamingServiceCallback;)V

    iget-object v1, p0, Landroid/telephony/MbmsStreamingSession;->mKnownActiveStreamingServices:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :try_start_28
    iget v1, p0, Landroid/telephony/MbmsStreamingSession;->mSubscriptionId:I

    invoke-virtual {p1}, Landroid/telephony/mbms/StreamingServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3, v5}, Landroid/telephony/mbms/vendor/IMbmsStreamingService;->startStreaming(ILjava/lang/String;Landroid/telephony/mbms/IStreamingServiceCallback;)I

    move-result v7

    if-eqz v7, :cond_52

    const/4 v1, 0x0

    invoke-direct {p0, v7, v1}, Landroid/telephony/MbmsStreamingSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_38} :catch_39

    return-object v8

    :catch_39
    move-exception v6

    const-string/jumbo v1, "MbmsStreamingSession"

    const-string/jumbo v3, "Remote process died"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v1, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v1, 0x3

    invoke-direct {p0, v1, v8}, Landroid/telephony/MbmsStreamingSession;->sendErrorToApp(ILjava/lang/String;)V

    return-object v8

    :cond_52
    return-object v0
.end method
