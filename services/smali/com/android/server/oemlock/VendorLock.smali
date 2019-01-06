.class Lcom/android/server/oemlock/VendorLock;
.super Lcom/android/server/oemlock/OemLock;
.source "VendorLock.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OemLock"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/hardware/oemlock/V1_0/IOemLock;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/oemlock/OemLock;-><init>()V

    iput-object p1, p0, Lcom/android/server/oemlock/VendorLock;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    return-void
.end method

.method static getOemLockHalService()Landroid/hardware/oemlock/V1_0/IOemLock;
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/hardware/oemlock/V1_0/IOemLock;->getService()Landroid/hardware/oemlock/V1_0/IOemLock;
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_3} :catch_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v2

    return-object v2

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catch_b
    move-exception v1

    const-string/jumbo v2, "OemLock"

    const-string/jumbo v3, "OemLock HAL not present on device"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2
.end method

.method static synthetic lambda$-com_android_server_oemlock_VendorLock_2991([Ljava/lang/Integer;[Ljava/lang/Boolean;IZ)V
    .registers 6

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v1

    return-void
.end method

.method static synthetic lambda$-com_android_server_oemlock_VendorLock_4760([Ljava/lang/Integer;[Ljava/lang/Boolean;IZ)V
    .registers 6

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v1

    return-void
.end method

.method private toByteArrayList([B)Ljava/util/ArrayList;
    .registers 7

    const/4 v2, 0x0

    if-nez p1, :cond_4

    return-object v2

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    array-length v3, p1

    :goto_c
    if-ge v2, v3, :cond_1a

    aget-byte v0, p1, v2

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1a
    return-object v1
.end method


# virtual methods
.method isOemUnlockAllowedByCarrier()Z
    .registers 7

    const/4 v3, 0x1

    const/4 v5, 0x0

    new-array v2, v3, [Ljava/lang/Integer;

    new-array v0, v3, [Ljava/lang/Boolean;

    :try_start_6
    iget-object v3, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    new-instance v4, Lcom/android/server/oemlock/-$Lambda$bvOlENw7oAYGZ6eQjqNp0EVu-PE;

    invoke-direct {v4, v2, v0}, Lcom/android/server/oemlock/-$Lambda$bvOlENw7oAYGZ6eQjqNp0EVu-PE;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Landroid/hardware/oemlock/V1_0/IOemLock;->isOemUnlockAllowedByCarrier(Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByCarrierCallback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_2b

    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_42

    const-string/jumbo v3, "OemLock"

    const-string/jumbo v4, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_22
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Failed to get carrier OEM unlock state"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_2b
    move-exception v1

    const-string/jumbo v3, "OemLock"

    const-string/jumbo v4, "Failed to get carrier state from HAL"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :pswitch_3a
    aget-object v3, v0, v5

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_22
    .end packed-switch
.end method

.method isOemUnlockAllowedByDevice()Z
    .registers 7

    const/4 v3, 0x1

    const/4 v5, 0x0

    new-array v2, v3, [Ljava/lang/Integer;

    new-array v0, v3, [Ljava/lang/Boolean;

    :try_start_6
    iget-object v3, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    new-instance v4, Lcom/android/server/oemlock/-$Lambda$bvOlENw7oAYGZ6eQjqNp0EVu-PE$1;

    invoke-direct {v4, v2, v0}, Lcom/android/server/oemlock/-$Lambda$bvOlENw7oAYGZ6eQjqNp0EVu-PE$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Landroid/hardware/oemlock/V1_0/IOemLock;->isOemUnlockAllowedByDevice(Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByDeviceCallback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_2b

    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_42

    const-string/jumbo v3, "OemLock"

    const-string/jumbo v4, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_22
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Failed to get device OEM unlock state"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_2b
    move-exception v1

    const-string/jumbo v3, "OemLock"

    const-string/jumbo v4, "Failed to get devie state from HAL"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :pswitch_3a
    aget-object v3, v0, v5

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_22
    .end packed-switch
.end method

.method setOemUnlockAllowedByCarrier(Z[B)V
    .registers 7

    :try_start_0
    iget-object v1, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    invoke-direct {p0, p2}, Lcom/android/server/oemlock/VendorLock;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/hardware/oemlock/V1_0/IOemLock;->setOemUnlockAllowedByCarrier(ZLjava/util/ArrayList;)I

    move-result v1

    packed-switch v1, :pswitch_data_52

    const-string/jumbo v1, "OemLock"

    const-string/jumbo v2, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_16
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Failed to set carrier OEM unlock state"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_1f

    :catch_1f
    move-exception v0

    const-string/jumbo v1, "OemLock"

    const-string/jumbo v2, "Failed to set carrier state with HAL"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :pswitch_2e
    :try_start_2e
    const-string/jumbo v1, "OemLock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Updated carrier allows OEM lock state to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_49
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Invalid signature used in attempt to carrier unlock"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_52} :catch_1f

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_16
        :pswitch_49
    .end packed-switch
.end method

.method setOemUnlockAllowedByDevice(Z)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    invoke-interface {v1, p1}, Landroid/hardware/oemlock/V1_0/IOemLock;->setOemUnlockAllowedByDevice(Z)I

    move-result v1

    packed-switch v1, :pswitch_data_46

    const-string/jumbo v1, "OemLock"

    const-string/jumbo v2, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_12
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Failed to set device OEM unlock state"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1b

    :catch_1b
    move-exception v0

    const-string/jumbo v1, "OemLock"

    const-string/jumbo v2, "Failed to set device state with HAL"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :pswitch_2a
    :try_start_2a
    const-string/jumbo v1, "OemLock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Updated device allows OEM lock state to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_44} :catch_1b

    return-void

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_12
    .end packed-switch
.end method
