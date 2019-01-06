.class public Lorg/mipay/android/manager/MipayManagerImpl;
.super Ljava/lang/Object;
.source "MipayManagerImpl.java"

# interfaces
.implements Lorg/mipay/android/manager/IMipayManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mipay/android/manager/MipayManagerImpl$1;,
        Lorg/mipay/android/manager/MipayManagerImpl$2;
    }
.end annotation


# static fields
.field private static CODE_CONTAINS:I

.field private static CODE_GEN_KEY_PAIR:I

.field private static CODE_GET_FP_IDS:I

.field private static CODE_RM_ALL_KEY:I

.field private static CODE_SIGN:I

.field private static CODE_SIGN_INIT:I

.field private static CODE_SIGN_UPDATE:I

.field private static DEBUG:Z

.field private static volatile INSTANCE:Lorg/mipay/android/manager/MipayManagerImpl;

.field private static INTERFACE_DESCRIPTOR:Ljava/lang/String;

.field private static MIPAY_TYPE_FINGER:I

.field private static MIPAY_TYPE_IRIS:I

.field private static MIPAY_VERISON_1:I

.field private static SERVICE_NAME:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private static mPackName:Ljava/lang/String;

.field private static mService:Landroid/os/IBinder;

.field private static mTidaActName:Ljava/lang/String;

.field private static mTidaInterfaceDesc:Ljava/lang/String;

.field private static mipayconn:Landroid/content/ServiceConnection;


# instance fields
.field private mHwService:Landroid/os/IHwBinder;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lorg/mipay/android/manager/MipayManagerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .registers 1

    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2()Landroid/content/Context;
    .registers 1

    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3()Landroid/os/IBinder$DeathRecipient;
    .registers 1

    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic -get4()Landroid/os/IBinder;
    .registers 1

    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->mService:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -set0(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 1

    sput-object p0, Lorg/mipay/android/manager/MipayManagerImpl;->mService:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic -wrap0()V
    .registers 0

    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->bindTidaService()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const-string/jumbo v0, "MipayManagerImpl"

    sput-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lorg/mipay/android/manager/MipayManagerImpl;->DEBUG:Z

    sput v1, Lorg/mipay/android/manager/MipayManagerImpl;->MIPAY_VERISON_1:I

    sput v1, Lorg/mipay/android/manager/MipayManagerImpl;->MIPAY_TYPE_FINGER:I

    sput v2, Lorg/mipay/android/manager/MipayManagerImpl;->MIPAY_TYPE_IRIS:I

    sput v1, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_CONTAINS:I

    sput v2, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_GEN_KEY_PAIR:I

    const/4 v0, 0x3

    sput v0, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_SIGN_INIT:I

    const/4 v0, 0x4

    sput v0, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_SIGN_UPDATE:I

    const/4 v0, 0x5

    sput v0, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_SIGN:I

    const/4 v0, 0x6

    sput v0, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_RM_ALL_KEY:I

    const/4 v0, 0x7

    sput v0, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_GET_FP_IDS:I

    const-string/jumbo v0, "vendor.xiaomi.hardware.tidaservice@1.0::ITidaService"

    sput-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->SERVICE_NAME:Ljava/lang/String;

    const-string/jumbo v0, "vendor.xiaomi.hardware.tidaservice@1.0::ITidaService"

    sput-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->INTERFACE_DESCRIPTOR:Ljava/lang/String;

    const-string/jumbo v0, "com.tencent.soter.soterserver"

    sput-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->mPackName:Ljava/lang/String;

    const-string/jumbo v0, "org.mipay.android.manager.MipayService"

    sput-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->mTidaActName:Ljava/lang/String;

    const-string/jumbo v0, "org.mipay.android.manager.IMipayService"

    sput-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->mTidaInterfaceDesc:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->INSTANCE:Lorg/mipay/android/manager/MipayManagerImpl;

    new-instance v0, Lorg/mipay/android/manager/MipayManagerImpl$1;

    invoke-direct {v0}, Lorg/mipay/android/manager/MipayManagerImpl$1;-><init>()V

    sput-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Lorg/mipay/android/manager/MipayManagerImpl$2;

    invoke-direct {v0}, Lorg/mipay/android/manager/MipayManagerImpl$2;-><init>()V

    sput-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->mipayconn:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bindTidaService()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lorg/mipay/android/manager/MipayManagerImpl;->mPackName:Ljava/lang/String;

    sget-object v2, Lorg/mipay/android/manager/MipayManagerImpl;->mTidaActName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lorg/mipay/android/manager/MipayManagerImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lorg/mipay/android/manager/MipayManagerImpl;->mipayconn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_32

    sget-object v1, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cannot bind service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/mipay/android/manager/MipayManagerImpl;->mTidaActName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    return-void
.end method

.method private static connectService(ILandroid/os/Parcel;Landroid/os/Parcel;)I
    .registers 11

    const/16 v3, 0xa

    const/4 v2, -0x1

    move v4, v3

    :goto_4
    add-int/lit8 v3, v4, -0x1

    if-lez v4, :cond_1b

    sget-object v5, Lorg/mipay/android/manager/MipayManagerImpl;->mService:Landroid/os/IBinder;

    if-eqz v5, :cond_38

    sget-object v5, Lorg/mipay/android/manager/MipayManagerImpl;->mService:Landroid/os/IBinder;

    invoke-interface {v5}, Landroid/os/IBinder;->pingBinder()Z

    move-result v5

    if-eqz v5, :cond_38

    :try_start_14
    sget-object v5, Lorg/mipay/android/manager/MipayManagerImpl;->mService:Landroid/os/IBinder;

    const/4 v6, 0x0

    invoke-interface {v5, p0, p1, p2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_1c

    const/4 v2, 0x0

    :cond_1b
    return v2

    :catch_1c
    move-exception v0

    sget-object v5, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "connectService transact failed. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_36
    move v4, v3

    goto :goto_4

    :cond_38
    sget-object v5, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "connectService waiting mipayService, remain: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " time(s)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x1e

    :try_start_5a
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5d
    .catch Ljava/lang/InterruptedException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_36

    :catch_5e
    move-exception v1

    sget-object v5, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "connectService InterruptedException while waiting: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/mipay/android/manager/IMipayManager;
    .registers 4

    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->INSTANCE:Lorg/mipay/android/manager/MipayManagerImpl;

    if-nez v0, :cond_1e

    const-class v1, Lorg/mipay/android/manager/MipayManagerImpl;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->INSTANCE:Lorg/mipay/android/manager/MipayManagerImpl;

    if-nez v0, :cond_1d

    new-instance v0, Lorg/mipay/android/manager/MipayManagerImpl;

    invoke-direct {v0}, Lorg/mipay/android/manager/MipayManagerImpl;-><init>()V

    sput-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->INSTANCE:Lorg/mipay/android/manager/MipayManagerImpl;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_1d

    sput-object p0, Lorg/mipay/android/manager/MipayManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->bindTidaService()V
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_21

    :cond_1d
    monitor-exit v1

    :cond_1e
    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->INSTANCE:Lorg/mipay/android/manager/MipayManagerImpl;

    return-object v0

    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initService()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    if-nez v0, :cond_f

    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->SERVICE_NAME:Ljava/lang/String;

    const-string/jumbo v1, "default"

    invoke-static {v0, v1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    iput-object v0, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    :cond_f
    return-void
.end method

.method private signUpdate(Ljava/lang/String;)I
    .registers 12

    const/4 v5, -0x1

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1c

    if-lt v7, v8, :cond_60

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    sget-object v7, Lorg/mipay/android/manager/MipayManagerImpl;->mTidaInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget v7, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_SIGN_UPDATE:I

    invoke-static {v7, v0, v4}, Lorg/mipay/android/manager/MipayManagerImpl;->connectService(ILandroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v5

    if-eqz v5, :cond_52

    sget-object v7, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "MipayService not found"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    :goto_34
    sget-boolean v7, Lorg/mipay/android/manager/MipayManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_51

    sget-object v7, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "signUpdate, res:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    return v5

    :cond_52
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    goto :goto_34

    :cond_60
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    :try_start_65
    invoke-direct {p0}, Lorg/mipay/android/manager/MipayManagerImpl;->initService()V

    iget-object v7, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    if-eqz v7, :cond_8b

    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    sget-object v7, Lorg/mipay/android/manager/MipayManagerImpl;->INTERFACE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    iget-object v7, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    sget v8, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_SIGN_UPDATE:I

    const/4 v9, 0x0

    invoke-interface {v7, v8, v3, v2, v9}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_8a} :catch_8f
    .catchall {:try_start_65 .. :try_end_8a} :catchall_ad

    move-result v5

    :cond_8b
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto :goto_34

    :catch_8f
    move-exception v1

    :try_start_90
    sget-object v7, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "transact fail. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catchall {:try_start_90 .. :try_end_a9} :catchall_ad

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto :goto_34

    :catchall_ad
    move-exception v7

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v7
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .registers 13

    const/4 v5, 0x0

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1c

    if-lt v8, v9, :cond_6b

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    sget-object v8, Lorg/mipay/android/manager/MipayManagerImpl;->mTidaInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget v8, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_CONTAINS:I

    invoke-static {v8, v0, v4}, Lorg/mipay/android/manager/MipayManagerImpl;->connectService(ILandroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v6

    if-eqz v6, :cond_5d

    sget-object v8, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "MipayService not found"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    :goto_34
    sget-boolean v8, Lorg/mipay/android/manager/MipayManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_5c

    sget-object v8, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "contains, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " res:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    return v5

    :cond_5d
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v4}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    goto :goto_34

    :cond_6b
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    :try_start_70
    invoke-direct {p0}, Lorg/mipay/android/manager/MipayManagerImpl;->initService()V

    iget-object v8, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    if-eqz v8, :cond_96

    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    sget-object v8, Lorg/mipay/android/manager/MipayManagerImpl;->INTERFACE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    iget-object v8, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    sget v9, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_CONTAINS:I

    const/4 v10, 0x0

    invoke-interface {v8, v9, v3, v2, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readBool()Z
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_95} :catch_9a
    .catchall {:try_start_70 .. :try_end_95} :catchall_b9

    move-result v5

    :cond_96
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto :goto_34

    :catch_9a
    move-exception v1

    :try_start_9b
    sget-object v8, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "transact fail. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4
    .catchall {:try_start_9b .. :try_end_b4} :catchall_b9

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto/16 :goto_34

    :catchall_b9
    move-exception v8

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v8
.end method

.method public generateKeyPair(Ljava/lang/String;Ljava/lang/String;)I
    .registers 13

    const/4 v5, -0x1

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1c

    if-lt v7, v8, :cond_79

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    sget-object v7, Lorg/mipay/android/manager/MipayManagerImpl;->mTidaInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget v7, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_GEN_KEY_PAIR:I

    invoke-static {v7, v0, v4}, Lorg/mipay/android/manager/MipayManagerImpl;->connectService(ILandroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v5

    if-eqz v5, :cond_6b

    sget-object v7, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "MipayService not found"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    :goto_37
    sget-boolean v7, Lorg/mipay/android/manager/MipayManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_6a

    sget-object v7, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "generateKeyPair, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " res:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    return v5

    :cond_6b
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    goto :goto_37

    :cond_79
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    :try_start_7e
    invoke-direct {p0}, Lorg/mipay/android/manager/MipayManagerImpl;->initService()V

    iget-object v7, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    if-eqz v7, :cond_a7

    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    sget-object v7, Lorg/mipay/android/manager/MipayManagerImpl;->INTERFACE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    iget-object v7, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    sget v8, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_GEN_KEY_PAIR:I

    const/4 v9, 0x0

    invoke-interface {v7, v8, v3, v2, v9}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I
    :try_end_a6
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_a6} :catch_ab
    .catchall {:try_start_7e .. :try_end_a6} :catchall_ca

    move-result v5

    :cond_a7
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto :goto_37

    :catch_ab
    move-exception v1

    :try_start_ac
    sget-object v7, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "transact fail. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catchall {:try_start_ac .. :try_end_c5} :catchall_ca

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto/16 :goto_37

    :catchall_ca
    move-exception v7

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v7
.end method

.method public getFpIds()Ljava/lang/String;
    .registers 11

    const-string/jumbo v2, ""

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1c

    if-lt v7, v8, :cond_58

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    sget-object v7, Lorg/mipay/android/manager/MipayManagerImpl;->mTidaInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v7, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_GET_FP_IDS:I

    invoke-static {v7, v0, v5}, Lorg/mipay/android/manager/MipayManagerImpl;->connectService(ILandroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v6

    if-eqz v6, :cond_4a

    sget-object v7, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "MipayService not found"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    :goto_2c
    sget-boolean v7, Lorg/mipay/android/manager/MipayManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_49

    sget-object v7, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getFpIds, fpIds:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    return-object v2

    :cond_4a
    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v5}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    :cond_58
    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    :try_start_5d
    invoke-direct {p0}, Lorg/mipay/android/manager/MipayManagerImpl;->initService()V

    iget-object v7, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    if-eqz v7, :cond_80

    new-instance v4, Landroid/os/HwParcel;

    invoke-direct {v4}, Landroid/os/HwParcel;-><init>()V

    sget-object v7, Lorg/mipay/android/manager/MipayManagerImpl;->INTERFACE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v7, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    sget v8, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_GET_FP_IDS:I

    const/4 v9, 0x0

    invoke-interface {v7, v8, v4, v3, v9}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v3}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v4}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v3}, Landroid/os/HwParcel;->readString()Ljava/lang/String;
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_7f} :catch_84
    .catchall {:try_start_5d .. :try_end_7f} :catchall_a2

    move-result-object v2

    :cond_80
    invoke-virtual {v3}, Landroid/os/HwParcel;->release()V

    goto :goto_2c

    :catch_84
    move-exception v1

    :try_start_85
    sget-object v7, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "transact fail. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_85 .. :try_end_9e} :catchall_a2

    invoke-virtual {v3}, Landroid/os/HwParcel;->release()V

    goto :goto_2c

    :catchall_a2
    move-exception v7

    invoke-virtual {v3}, Landroid/os/HwParcel;->release()V

    throw v7
.end method

.method public getSupportBIOTypes(Landroid/content/Context;)I
    .registers 5

    sget-boolean v0, Lorg/mipay/android/manager/MipayManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1f

    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSupportBIOTypes :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/mipay/android/manager/MipayManagerImpl;->MIPAY_TYPE_FINGER:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    sget v0, Lorg/mipay/android/manager/MipayManagerImpl;->MIPAY_TYPE_FINGER:I

    return v0
.end method

.method public getVersion()I
    .registers 4

    sget-boolean v0, Lorg/mipay/android/manager/MipayManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1f

    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getVersion :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/mipay/android/manager/MipayManagerImpl;->MIPAY_VERISON_1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    sget v0, Lorg/mipay/android/manager/MipayManagerImpl;->MIPAY_VERISON_1:I

    return v0
.end method

.method public removeAllKey()I
    .registers 11

    const/4 v5, -0x1

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1c

    if-lt v7, v8, :cond_5d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    sget-object v7, Lorg/mipay/android/manager/MipayManagerImpl;->mTidaInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    sget v7, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_RM_ALL_KEY:I

    invoke-static {v7, v0, v4}, Lorg/mipay/android/manager/MipayManagerImpl;->connectService(ILandroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v5

    if-eqz v5, :cond_4f

    sget-object v7, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "MipayService not found"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    :goto_31
    sget-boolean v7, Lorg/mipay/android/manager/MipayManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_4e

    sget-object v7, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removeAllKey, res:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    return v5

    :cond_4f
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    goto :goto_31

    :cond_5d
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    :try_start_62
    invoke-direct {p0}, Lorg/mipay/android/manager/MipayManagerImpl;->initService()V

    iget-object v7, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    if-eqz v7, :cond_85

    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    sget-object v7, Lorg/mipay/android/manager/MipayManagerImpl;->INTERFACE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v7, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    sget v8, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_RM_ALL_KEY:I

    const/4 v9, 0x0

    invoke-interface {v7, v8, v3, v2, v9}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_84} :catch_89
    .catchall {:try_start_62 .. :try_end_84} :catchall_a7

    move-result v5

    :cond_85
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto :goto_31

    :catch_89
    move-exception v1

    :try_start_8a
    sget-object v7, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "transact fail. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catchall {:try_start_8a .. :try_end_a3} :catchall_a7

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto :goto_31

    :catchall_a7
    move-exception v7

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v7
.end method

.method public sign()[B
    .registers 16

    const/4 v14, 0x0

    const/4 v13, 0x0

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1c

    if-lt v11, v12, :cond_3c

    new-array v8, v13, [B

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    sget-object v11, Lorg/mipay/android/manager/MipayManagerImpl;->mTidaInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v11, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_SIGN:I

    invoke-static {v11, v1, v7}, Lorg/mipay/android/manager/MipayManagerImpl;->connectService(ILandroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v9

    if-eqz v9, :cond_2e

    sget-object v11, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "MipayService not found"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    :goto_2d
    return-object v8

    :cond_2e
    invoke-virtual {v7}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v7}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    goto :goto_2d

    :cond_3c
    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    :try_start_41
    invoke-direct {p0}, Lorg/mipay/android/manager/MipayManagerImpl;->initService()V

    iget-object v11, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    if-eqz v11, :cond_80

    new-instance v4, Landroid/os/HwParcel;

    invoke-direct {v4}, Landroid/os/HwParcel;-><init>()V

    sget-object v11, Lorg/mipay/android/manager/MipayManagerImpl;->INTERFACE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v4, v11}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v11, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    sget v12, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_SIGN:I

    const/4 v13, 0x0

    invoke-interface {v11, v12, v4, v3, v13}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v3}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v4}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v3}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v0, v6, [B

    const/4 v5, 0x0

    :goto_6b
    if-ge v5, v6, :cond_7c

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    aput-byte v11, v0, v5
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_79} :catch_8c
    .catchall {:try_start_41 .. :try_end_79} :catchall_aa

    add-int/lit8 v5, v5, 0x1

    goto :goto_6b

    :cond_7c
    invoke-virtual {v3}, Landroid/os/HwParcel;->release()V

    return-object v0

    :cond_80
    invoke-virtual {v3}, Landroid/os/HwParcel;->release()V

    :goto_83
    sget-object v11, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "sign fail, return null"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v14

    :catch_8c
    move-exception v2

    :try_start_8d
    sget-object v11, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "transact fail. "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catchall {:try_start_8d .. :try_end_a6} :catchall_aa

    invoke-virtual {v3}, Landroid/os/HwParcel;->release()V

    goto :goto_83

    :catchall_aa
    move-exception v11

    invoke-virtual {v3}, Landroid/os/HwParcel;->release()V

    throw v11
.end method

.method public signInit(Ljava/lang/String;Ljava/lang/String;)I
    .registers 13

    const/4 v5, -0x1

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1c

    if-lt v7, v8, :cond_79

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    sget-object v7, Lorg/mipay/android/manager/MipayManagerImpl;->mTidaInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget v7, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_SIGN_INIT:I

    invoke-static {v7, v0, v4}, Lorg/mipay/android/manager/MipayManagerImpl;->connectService(ILandroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v5

    if-eqz v5, :cond_6b

    sget-object v7, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "MipayService not found"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    :goto_37
    sget-boolean v7, Lorg/mipay/android/manager/MipayManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_6a

    sget-object v7, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "signInit, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " res:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    return v5

    :cond_6b
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    goto :goto_37

    :cond_79
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    :try_start_7e
    invoke-direct {p0}, Lorg/mipay/android/manager/MipayManagerImpl;->initService()V

    iget-object v7, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    if-eqz v7, :cond_a7

    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    sget-object v7, Lorg/mipay/android/manager/MipayManagerImpl;->INTERFACE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    iget-object v7, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    sget v8, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_SIGN_INIT:I

    const/4 v9, 0x0

    invoke-interface {v7, v8, v3, v2, v9}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I
    :try_end_a6
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_a6} :catch_ab
    .catchall {:try_start_7e .. :try_end_a6} :catchall_ca

    move-result v5

    :cond_a7
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto :goto_37

    :catch_ab
    move-exception v1

    :try_start_ac
    sget-object v7, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "transact fail. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catchall {:try_start_ac .. :try_end_c5} :catchall_ca

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto/16 :goto_37

    :catchall_ca
    move-exception v7

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v7
.end method

.method public signUpdate([BII)I
    .registers 6

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-direct {p0, v0}, Lorg/mipay/android/manager/MipayManagerImpl;->signUpdate(Ljava/lang/String;)I

    move-result v1

    return v1
.end method
