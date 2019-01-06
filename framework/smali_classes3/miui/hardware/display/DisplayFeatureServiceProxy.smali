.class Lmiui/hardware/display/DisplayFeatureServiceProxy;
.super Ljava/lang/Object;
.source "DisplayFeatureServiceProxy.java"


# static fields
.field private static final HIDL_TRANSACTION_interfaceDescriptor:I = 0xf445343

.field private static final HIDL_TRANSACTION_setFeature:I = 0x1

.field private static final HWBINDER_BASE_INTERFACE_DESCRIPTOR:Ljava/lang/String; = "android.hidl.base@1.0::IBase"

.field private static final HWBINDER_INTERFACE_DESCRIPTOR:Ljava/lang/String; = "vendor.xiaomi.hardware.displayfeature@1.0::IDisplayFeature"

.field private static final INTERFACE_DESCRIPTOR:Ljava/lang/String; = "miui.hardware.display.IDisplayFeatureService"

.field private static TAG:Ljava/lang/String; = null

.field private static final TRANSACTION_setFeature:I = 0x64


# instance fields
.field private mDescriptor:Ljava/lang/String;

.field private mHwService:Landroid/os/IHwBinder;

.field private mService:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "DisplayFeatureServiceProxy"

    sput-object v0, Lmiui/hardware/display/DisplayFeatureServiceProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    instance-of v1, p1, Landroid/os/IBinder;

    if-eqz v1, :cond_21

    check-cast p1, Landroid/os/IBinder;

    iput-object p1, p0, Lmiui/hardware/display/DisplayFeatureServiceProxy;->mService:Landroid/os/IBinder;

    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureServiceProxy;->mService:Landroid/os/IBinder;

    invoke-interface {v1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/hardware/display/DisplayFeatureServiceProxy;->mDescriptor:Ljava/lang/String;

    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureServiceProxy;->mDescriptor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string/jumbo v1, "miui.hardware.display.IDisplayFeatureService"

    iput-object v1, p0, Lmiui/hardware/display/DisplayFeatureServiceProxy;->mDescriptor:Ljava/lang/String;

    :cond_20
    :goto_20
    return-void

    :cond_21
    instance-of v1, p1, Landroid/os/IHwBinder;

    if-eqz v1, :cond_20

    check-cast p1, Landroid/os/IHwBinder;

    iput-object p1, p0, Lmiui/hardware/display/DisplayFeatureServiceProxy;->mHwService:Landroid/os/IHwBinder;

    invoke-virtual {p0}, Lmiui/hardware/display/DisplayFeatureServiceProxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/hardware/display/DisplayFeatureServiceProxy;->mDescriptor:Ljava/lang/String;

    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureServiceProxy;->mDescriptor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string/jumbo v1, "vendor.xiaomi.hardware.displayfeature@1.0::IDisplayFeature"

    iput-object v1, p0, Lmiui/hardware/display/DisplayFeatureServiceProxy;->mDescriptor:Ljava/lang/String;
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3c} :catch_3d

    goto :goto_20

    :catch_3d
    move-exception v0

    goto :goto_20
.end method

.method private varargs callBinderTransact(I[I)I
    .registers 11

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const/4 v4, -0x1

    :try_start_a
    iget-object v6, p0, Lmiui/hardware/display/DisplayFeatureServiceProxy;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    array-length v6, p2

    :goto_10
    if-ge v5, v6, :cond_1a

    aget v2, p2, v5

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_1a
    iget-object v5, p0, Lmiui/hardware/display/DisplayFeatureServiceProxy;->mService:Landroid/os/IBinder;

    const/4 v6, 0x0

    invoke-interface {v5, p1, v0, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_29} :catch_31
    .catchall {:try_start_a .. :try_end_29} :catchall_52

    move-result v4

    :cond_2a
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :goto_30
    return v4

    :catch_31
    move-exception v1

    :try_start_32
    sget-object v5, Lmiui/hardware/display/DisplayFeatureServiceProxy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "callBinderTransact transact fail. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_32 .. :try_end_4b} :catchall_52

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_30

    :catchall_52
    move-exception v5

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method private varargs callHwBinderTransact(I[I)V
    .registers 10

    const/4 v4, 0x0

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_6
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    iget-object v5, p0, Lmiui/hardware/display/DisplayFeatureServiceProxy;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    array-length v5, p2

    :goto_11
    if-ge v4, v5, :cond_1b

    aget v3, p2, v4

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_1b
    iget-object v4, p0, Lmiui/hardware/display/DisplayFeatureServiceProxy;->mHwService:Landroid/os/IHwBinder;

    const/4 v5, 0x0

    invoke-interface {v4, p1, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_27} :catch_2b
    .catchall {:try_start_6 .. :try_end_27} :catchall_49

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    :try_start_2c
    sget-object v4, Lmiui/hardware/display/DisplayFeatureServiceProxy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "callHwBinderTransact transact fail. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_2c .. :try_end_45} :catchall_49

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    goto :goto_2a

    :catchall_49
    move-exception v4

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v4
.end method


# virtual methods
.method public interfaceDescriptor()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_10
    iget-object v3, p0, Lmiui/hardware/display/DisplayFeatureServiceProxy;->mHwService:Landroid/os/IHwBinder;

    const v4, 0xf445343

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_27

    move-result-object v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method setFeature(IIII)V
    .registers 11

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_DISPLAYFEATURE_HIDL:Z

    if-eqz v0, :cond_17

    new-array v0, v5, [I

    aput p1, v0, v2

    aput p2, v0, v1

    aput p3, v0, v3

    aput p4, v0, v4

    invoke-direct {p0, v1, v0}, Lmiui/hardware/display/DisplayFeatureServiceProxy;->callHwBinderTransact(I[I)V

    :goto_16
    return-void

    :cond_17
    new-array v0, v5, [I

    aput p1, v0, v2

    aput p2, v0, v1

    aput p3, v0, v3

    aput p4, v0, v4

    const/16 v1, 0x64

    invoke-direct {p0, v1, v0}, Lmiui/hardware/display/DisplayFeatureServiceProxy;->callBinderTransact(I[I)I

    goto :goto_16
.end method
