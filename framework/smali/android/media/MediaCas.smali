.class public final Landroid/media/MediaCas;
.super Ljava/lang/Object;
.source "MediaCas.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCas$1;,
        Landroid/media/MediaCas$2;,
        Landroid/media/MediaCas$EventHandler;,
        Landroid/media/MediaCas$EventListener;,
        Landroid/media/MediaCas$OpenSessionCallback;,
        Landroid/media/MediaCas$PluginDescriptor;,
        Landroid/media/MediaCas$Session;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaCas"

.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Landroid/hardware/cas/V1_0/IMediaCasService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBinder:Landroid/hardware/cas/V1_0/ICasListener$Stub;

.field private mEventHandler:Landroid/media/MediaCas$EventHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mICas:Landroid/hardware/cas/V1_0/ICas;

.field private mListener:Landroid/media/MediaCas$EventListener;


# direct methods
.method static synthetic -get0(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaCas;->mEventHandler:Landroid/media/MediaCas$EventHandler;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_0/ICas;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    return-object v0
.end method

.method static synthetic -get2(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventListener;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaCas;->mListener:Landroid/media/MediaCas$EventListener;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/media/MediaCas;Ljava/util/ArrayList;)[B
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/MediaCas;->toBytes(Ljava/util/ArrayList;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/media/MediaCas;[BII)Ljava/util/ArrayList;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCas;->toByteArray([BII)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Landroid/media/MediaCas;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    return-void
.end method

.method static synthetic -wrap3(Landroid/media/MediaCas;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/MediaCas$1;

    invoke-direct {v0}, Landroid/media/MediaCas$1;-><init>()V

    sput-object v0, Landroid/media/MediaCas;->gDefault:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException$UnsupportedCasException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/media/MediaCas$2;

    invoke-direct {v1, p0}, Landroid/media/MediaCas$2;-><init>(Landroid/media/MediaCas;)V

    iput-object v1, p0, Landroid/media/MediaCas;->mBinder:Landroid/hardware/cas/V1_0/ICasListener$Stub;

    :try_start_a
    invoke-static {}, Landroid/media/MediaCas;->getService()Landroid/hardware/cas/V1_0/IMediaCasService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCas;->mBinder:Landroid/hardware/cas/V1_0/ICasListener$Stub;

    invoke-interface {v1, p1, v2}, Landroid/hardware/cas/V1_0/IMediaCasService;->createPlugin(ILandroid/hardware/cas/V1_0/ICasListener;)Landroid/hardware/cas/V1_0/ICas;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_34
    .catchall {:try_start_a .. :try_end_16} :catchall_70

    iget-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    if-nez v1, :cond_90

    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported CA_system_id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_34
    move-exception v0

    :try_start_35
    const-string/jumbo v1, "MediaCas"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to create plugin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;
    :try_end_52
    .catchall {:try_start_35 .. :try_end_52} :catchall_70

    iget-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    if-nez v1, :cond_90

    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported CA_system_id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_70
    move-exception v1

    iget-object v2, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    if-nez v2, :cond_8f

    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported CA_system_id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8f
    throw v1

    :cond_90
    return-void
.end method

.method private cleanupAndRethrowIllegalState()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static enumeratePlugins()[Landroid/media/MediaCas$PluginDescriptor;
    .registers 8

    const/4 v7, 0x0

    invoke-static {}, Landroid/media/MediaCas;->getService()Landroid/hardware/cas/V1_0/IMediaCasService;

    move-result-object v4

    if-eqz v4, :cond_2e

    :try_start_7
    invoke-interface {v4}, Landroid/hardware/cas/V1_0/IMediaCasService;->enumeratePlugins()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_12

    return-object v7

    :cond_12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v3, v5, [Landroid/media/MediaCas$PluginDescriptor;

    const/4 v2, 0x0

    :goto_19
    array-length v5, v3

    if-ge v2, v5, :cond_2c

    new-instance v6, Landroid/media/MediaCas$PluginDescriptor;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;

    invoke-direct {v6, v5}, Landroid/media/MediaCas$PluginDescriptor;-><init>(Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;)V

    aput-object v6, v3, v2
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_29} :catch_2d

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_2c
    return-object v3

    :catch_2d
    move-exception v1

    :cond_2e
    return-object v7
.end method

.method static getService()Landroid/hardware/cas/V1_0/IMediaCasService;
    .registers 1

    sget-object v0, Landroid/media/MediaCas;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/cas/V1_0/IMediaCasService;

    return-object v0
.end method

.method public static isSystemIdSupported(I)Z
    .registers 4

    invoke-static {}, Landroid/media/MediaCas;->getService()Landroid/hardware/cas/V1_0/IMediaCasService;

    move-result-object v1

    if-eqz v1, :cond_c

    :try_start_6
    invoke-interface {v1, p0}, Landroid/hardware/cas/V1_0/IMediaCasService;->isSystemIdSupported(I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_b

    move-result v2

    return v2

    :catch_b
    move-exception v0

    :cond_c
    const/4 v2, 0x0

    return v2
.end method

.method private toByteArray([B)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_8
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/media/MediaCas;->toByteArray([BII)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private toByteArray([BII)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_6
    if-ge v1, p3, :cond_16

    add-int v2, p2, v1

    aget-byte v2, p1, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_16
    return-object v0
.end method

.method private toBytes(Ljava/util/ArrayList;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [B

    const/4 v1, 0x0

    :goto_a
    array-length v2, v0

    if-ge v1, v2, :cond_1c

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1c
    return-object v0
.end method

.method private validateInternalStates()V
    .registers 2

    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    if-eqz v1, :cond_c

    :try_start_5
    iget-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    invoke-interface {v1}, Landroid/hardware/cas/V1_0/ICas;->release()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_11
    .catchall {:try_start_5 .. :try_end_a} :catchall_d

    :goto_a
    iput-object v2, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    :cond_c
    return-void

    :catchall_d
    move-exception v1

    iput-object v2, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    throw v1

    :catch_11
    move-exception v0

    goto :goto_a
.end method

.method createFromSessionId(Ljava/util/ArrayList;)Landroid/media/MediaCas$Session;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)",
            "Landroid/media/MediaCas$Session;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    return-object v1

    :cond_a
    new-instance v0, Landroid/media/MediaCas$Session;

    invoke-direct {v0, p0, p1}, Landroid/media/MediaCas$Session;-><init>(Landroid/media/MediaCas;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method protected finalize()V
    .registers 1

    invoke-virtual {p0}, Landroid/media/MediaCas;->close()V

    return-void
.end method

.method getBinder()Landroid/os/IHwBinder;
    .registers 2

    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    invoke-interface {v0}, Landroid/hardware/cas/V1_0/ICas;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    return-object v0
.end method

.method public openSession()Landroid/media/MediaCas$Session;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    :try_start_4
    new-instance v0, Landroid/media/MediaCas$OpenSessionCallback;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/media/MediaCas$OpenSessionCallback;-><init>(Landroid/media/MediaCas;Landroid/media/MediaCas$OpenSessionCallback;)V

    iget-object v2, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    invoke-interface {v2, v0}, Landroid/hardware/cas/V1_0/ICas;->openSession(Landroid/hardware/cas/V1_0/ICas$openSessionCallback;)V

    iget v2, v0, Landroid/media/MediaCas$OpenSessionCallback;->mStatus:I

    invoke-static {v2}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V

    iget-object v2, v0, Landroid/media/MediaCas$OpenSessionCallback;->mSession:Landroid/media/MediaCas$Session;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_16} :catch_17

    return-object v2

    :catch_17
    move-exception v1

    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    return-object v3
.end method

.method public processEmm([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/media/MediaCas;->processEmm([BII)V

    return-void
.end method

.method public processEmm([BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    :try_start_3
    iget-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCas;->toByteArray([BII)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/hardware/cas/V1_0/ICas;->processEmm(Ljava/util/ArrayList;)I

    move-result v1

    invoke-static {v1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_10} :catch_11

    :goto_10
    return-void

    :catch_11
    move-exception v0

    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    goto :goto_10
.end method

.method public provision(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    :try_start_3
    iget-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    invoke-interface {v1, p1}, Landroid/hardware/cas/V1_0/ICas;->provision(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    goto :goto_c
.end method

.method public refreshEntitlements(I[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    :try_start_3
    iget-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    invoke-direct {p0, p2}, Landroid/media/MediaCas;->toByteArray([B)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/hardware/cas/V1_0/ICas;->refreshEntitlements(ILjava/util/ArrayList;)I

    move-result v1

    invoke-static {v1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_10} :catch_11

    :goto_10
    return-void

    :catch_11
    move-exception v0

    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    goto :goto_10
.end method

.method public sendEvent(II[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    :try_start_3
    iget-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    invoke-direct {p0, p3}, Landroid/media/MediaCas;->toByteArray([B)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Landroid/hardware/cas/V1_0/ICas;->sendEvent(IILjava/util/ArrayList;)I

    move-result v1

    invoke-static {v1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_10} :catch_11

    :goto_10
    return-void

    :catch_11
    move-exception v0

    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    goto :goto_10
.end method

.method public setEventListener(Landroid/media/MediaCas$EventListener;Landroid/os/Handler;)V
    .registers 7

    const/4 v2, 0x0

    iput-object p1, p0, Landroid/media/MediaCas;->mListener:Landroid/media/MediaCas$EventListener;

    iget-object v1, p0, Landroid/media/MediaCas;->mListener:Landroid/media/MediaCas$EventListener;

    if-nez v1, :cond_a

    iput-object v2, p0, Landroid/media/MediaCas;->mEventHandler:Landroid/media/MediaCas$EventHandler;

    return-void

    :cond_a
    if-eqz p2, :cond_4a

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_10
    if-nez v0, :cond_42

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_42

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_42

    iget-object v1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3c

    :cond_2c
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "MediaCasEventThread"

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    :cond_3c
    iget-object v1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :cond_42
    new-instance v1, Landroid/media/MediaCas$EventHandler;

    invoke-direct {v1, p0, v0}, Landroid/media/MediaCas$EventHandler;-><init>(Landroid/media/MediaCas;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaCas;->mEventHandler:Landroid/media/MediaCas$EventHandler;

    return-void

    :cond_4a
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public setPrivateData([B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    :try_start_3
    iget-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    array-length v2, p1

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v2}, Landroid/media/MediaCas;->toByteArray([BII)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/hardware/cas/V1_0/ICas;->setPrivateData(Ljava/util/ArrayList;)I

    move-result v1

    invoke-static {v1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v0

    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    goto :goto_12
.end method
