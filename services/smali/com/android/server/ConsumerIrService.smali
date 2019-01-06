.class public Lcom/android/server/ConsumerIrService;
.super Landroid/hardware/IConsumerIrService$Stub;
.source "ConsumerIrService.java"


# static fields
.field private static final MAX_XMIT_TIME:I = 0x1e8480

.field private static final TAG:Ljava/lang/String; = "ConsumerIrService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHalLock:Ljava/lang/Object;

.field private final mHasNativeHal:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/hardware/IConsumerIrService$Stub;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string/jumbo v1, "ConsumerIrService"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ConsumerIrService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/server/ConsumerIrService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-static {}, Lcom/android/server/ConsumerIrService;->halOpen()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    iget-object v1, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.hardware.consumerir"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    iget-boolean v1, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    if-nez v1, :cond_53

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "FEATURE_CONSUMER_IR present, but no IR HAL loaded!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_46
    iget-boolean v1, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    if-eqz v1, :cond_53

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "IR HAL present, but FEATURE_CONSUMER_IR is not set!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_53
    return-void
.end method

.method private static native halGetCarrierFrequencies()[I
.end method

.method private static native halOpen()Z
.end method

.method private static native halTransmit(I[I)I
.end method

.method private throwIfNoIrEmitter()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "IR emitter not available"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    return-void
.end method


# virtual methods
.method public getCarrierFrequencies()[I
    .registers 3

    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.TRANSMIT_IR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires TRANSMIT_IR permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    invoke-direct {p0}, Lcom/android/server/ConsumerIrService;->throwIfNoIrEmitter()V

    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1a
    invoke-static {}, Lcom/android/server/ConsumerIrService;->halGetCarrierFrequencies()[I
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_20

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_20
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public hasIrEmitter()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    return v0
.end method

.method public transmit(Ljava/lang/String;I[I)V
    .registers 12

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.TRANSMIT_IR"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_15

    new-instance v4, Ljava/lang/SecurityException;

    const-string/jumbo v5, "Requires TRANSMIT_IR permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_15
    const-wide/16 v2, 0x0

    array-length v5, p3

    :goto_18
    if-ge v4, v5, :cond_2c

    aget v1, p3, v4

    if-gtz v1, :cond_27

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Non-positive IR slice"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_27
    int-to-long v6, v1

    add-long/2addr v2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_2c
    const-wide/32 v4, 0x1e8480

    cmp-long v4, v2, v4

    if-lez v4, :cond_3c

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "IR pattern too long"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3c
    invoke-direct {p0}, Lcom/android/server/ConsumerIrService;->throwIfNoIrEmitter()V

    iget-object v5, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_42
    invoke-static {p2, p3}, Lcom/android/server/ConsumerIrService;->halTransmit(I[I)I

    move-result v0

    if-gez v0, :cond_62

    const-string/jumbo v4, "ConsumerIrService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error transmitting: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_42 .. :try_end_62} :catchall_64

    :cond_62
    monitor-exit v5

    return-void

    :catchall_64
    move-exception v4

    monitor-exit v5

    throw v4
.end method
