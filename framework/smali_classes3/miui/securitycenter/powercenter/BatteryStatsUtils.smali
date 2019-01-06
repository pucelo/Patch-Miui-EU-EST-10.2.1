.class Lmiui/securitycenter/powercenter/BatteryStatsUtils;
.super Ljava/lang/Object;
.source "BatteryStatsUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BatteryStatsHelper"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;
    .registers 12

    const/4 v8, 0x0

    const-string/jumbo v9, "batterystats"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v7

    :try_start_c
    invoke-interface {v7}, Lcom/android/internal/app/IBatteryStats;->getStatisticsStream()Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    if-eqz v6, :cond_40

    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v4, v6}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1a} :catch_4c

    move-result-object v5

    :try_start_1b
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-static {v9}, Landroid/os/MemoryFile;->getSize(Ljava/io/FileDescriptor;)I

    move-result v9

    invoke-static {v4, v9}, Lmiui/securitycenter/powercenter/BatteryStatsUtils;->readFully(Ljava/io/FileInputStream;I)[B

    move-result-object v1

    array-length v9, v1

    const/4 v10, 0x0

    invoke-virtual {v5, v1, v10, v9}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v9, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, v5}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;

    move-object v8, v0
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_3a} :catch_57
    .catchall {:try_start_1b .. :try_end_3a} :catchall_73

    :try_start_3a
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3d} :catch_4c

    :try_start_3d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_40} :catch_4c

    :cond_40
    :goto_40
    return-object v8

    :catch_41
    move-exception v3

    :try_start_42
    const-string/jumbo v9, ""

    const-string/jumbo v10, "fis close"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_4b} :catch_4c

    goto :goto_40

    :catch_4c
    move-exception v2

    const-string/jumbo v9, "BatteryStatsHelper"

    const-string/jumbo v10, "remote exception:"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    :catch_57
    move-exception v3

    :try_start_58
    const-string/jumbo v9, "BatteryStatsHelper"

    const-string/jumbo v10, "Unable to read statistics stream"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_61
    .catchall {:try_start_58 .. :try_end_61} :catchall_73

    :try_start_61
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_64} :catch_4c

    :try_start_64
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_67} :catch_4c

    goto :goto_40

    :catch_68
    move-exception v3

    :try_start_69
    const-string/jumbo v9, ""

    const-string/jumbo v10, "fis close"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    :catchall_73
    move-exception v9

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_77} :catch_4c

    :try_start_77
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_7a} :catch_4c

    :goto_7a
    :try_start_7a
    throw v9

    :catch_7b
    move-exception v3

    const-string/jumbo v10, ""

    const-string/jumbo v11, "fis close"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_85} :catch_4c

    goto :goto_7a
.end method

.method private static readFully(Ljava/io/FileInputStream;I)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v3, 0x0

    new-array v1, p1, [B

    :cond_4
    :goto_4
    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {p0, v1, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    if-gtz v0, :cond_d

    return-object v1

    :cond_d
    add-int/2addr v3, v0

    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result p1

    array-length v4, v1

    sub-int/2addr v4, v3

    if-le p1, v4, :cond_4

    add-int v4, v3, p1

    new-array v2, v4, [B

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object v1, v2

    goto :goto_4
.end method
