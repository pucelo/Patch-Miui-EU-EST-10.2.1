.class public Landroid/mtp/MtpDatabase;
.super Ljava/lang/Object;
.source "MtpDatabase.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpDatabase$1;
    }
.end annotation


# static fields
.field static final AUDIO_PROPERTIES:[I

.field private static final DEVICE_PROPERTIES_DATABASE_VERSION:I = 0x1

.field static final FILE_PROPERTIES:[I

.field private static final FORMAT_PARENT_WHERE:Ljava/lang/String; = "format=? AND parent=?"

.field private static final FORMAT_PROJECTION:[Ljava/lang/String;

.field private static final FORMAT_WHERE:Ljava/lang/String; = "format=?"

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field static final IMAGE_PROPERTIES:[I

.field private static final OBJECT_INFO_PROJECTION:[Ljava/lang/String;

.field private static final PARENT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final PATH_FORMAT_PROJECTION:[Ljava/lang/String;

.field private static final PATH_PROJECTION:[Ljava/lang/String;

.field private static final PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final STORAGE_FORMAT_PARENT_WHERE:Ljava/lang/String; = "storage_id=? AND format=? AND parent=?"

.field private static final STORAGE_FORMAT_WHERE:Ljava/lang/String; = "storage_id=? AND format=?"

.field private static final STORAGE_PARENT_WHERE:Ljava/lang/String; = "storage_id=? AND parent=?"

.field private static final STORAGE_WHERE:Ljava/lang/String; = "storage_id=?"

.field private static final TAG:Ljava/lang/String; = "MtpDatabase"

.field static final VIDEO_PROPERTIES:[I


# instance fields
.field private mBatteryLevel:I

.field private mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryScale:I

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private mDatabaseModified:Z

.field private mDeviceProperties:Landroid/content/SharedPreferences;

.field private mDeviceType:I

.field private final mMediaProvider:Landroid/content/ContentProviderClient;

.field private final mMediaScanner:Landroid/media/MediaScanner;

.field private final mMediaStoragePath:Ljava/lang/String;

.field private mNativeContext:J

.field private final mObjectsUri:Landroid/net/Uri;

.field private final mPackageName:Ljava/lang/String;

.field private final mPropertyGroupsByFormat:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mPropertyGroupsByProperty:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mServer:Landroid/mtp/MtpServer;

.field private final mStorageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubDirectories:[Ljava/lang/String;

.field private mSubDirectoriesWhere:Ljava/lang/String;

.field private mSubDirectoriesWhereArgs:[Ljava/lang/String;

.field private final mUserContext:Landroid/content/Context;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/mtp/MtpDatabase;)I
    .registers 2

    iget v0, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    return v0
.end method

.method static synthetic -get1(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;
    .registers 2

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    return-object v0
.end method

.method static synthetic -set0(Landroid/mtp/MtpDatabase;I)I
    .registers 2

    iput p1, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    return p1
.end method

.method static synthetic -set1(Landroid/mtp/MtpDatabase;I)I
    .registers 2

    iput p1, p0, Landroid/mtp/MtpDatabase;->mBatteryScale:I

    return p1
.end method

.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v3

    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "format"

    aput-object v1, v0, v3

    sput-object v0, Landroid/mtp/MtpDatabase;->FORMAT_PROJECTION:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "format"

    aput-object v1, v0, v4

    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "storage_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "format"

    aput-object v1, v0, v4

    const-string/jumbo v1, "parent"

    aput-object v1, v0, v5

    const-string/jumbo v1, "_data"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "date_added"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "date_modified"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_92

    sput-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_ac

    sput-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_e0

    sput-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_102

    sput-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    return-void

    :array_92
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
    .end array-data

    :array_ac
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
        0xdc46
        0xdc9a
        0xdc9b
        0xdc8b
        0xdc99
        0xdc89
        0xdc8c
        0xdc96
        0xde99
        0xde92
        0xde9a
        0xde94
        0xde93
    .end array-data

    :array_e0
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
        0xdc46
        0xdc9a
        0xdc89
        0xdc48
    .end array-data

    :array_102
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
        0xdc48
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v6

    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    new-instance v6, Landroid/mtp/MtpDatabase$1;

    invoke-direct {v6, p0}, Landroid/mtp/MtpDatabase$1;-><init>(Landroid/mtp/MtpDatabase;)V

    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_setup()V

    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/mtp/MtpDatabase;->mUserContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "media"

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v6

    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iput-object p3, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    iput-object p4, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-static {p3}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    new-instance v6, Landroid/media/MediaScanner;

    iget-object v7, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-direct {v6, p1, v7}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    iput-object p5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    if-eqz p5, :cond_bb

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p5

    const/4 v2, 0x0

    :goto_6a
    if-ge v2, v1, :cond_7f

    const-string/jumbo v6, "_data=? OR _data LIKE ?"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v1, -0x1

    if-eq v2, v6, :cond_7c

    const-string/jumbo v6, " OR "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    :cond_7f
    const-string/jumbo v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    mul-int/lit8 v6, v1, 0x2

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_94
    if-ge v2, v1, :cond_bb

    aget-object v5, p5, v2

    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    add-int/lit8 v3, v4, 0x1

    aput-object v5, v6, v4

    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    add-int/lit8 v4, v3, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_94

    :cond_bb
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->initDeviceProperties(Landroid/content/Context;)V

    const-string/jumbo v6, "sys.usb.mtp.device_type"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Landroid/mtp/MtpDatabase;->mDeviceType:I

    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v7, "close"

    invoke-virtual {v6, v7}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method private beginSendObject(Ljava/lang/String;IIIJJ)I
    .registers 20

    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->inStorageRoot(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string/jumbo v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "attempt to put file outside of storage area: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_22
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->inStorageSubDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, -0x1

    return v0

    :cond_2a
    if-eqz p1, :cond_70

    const/4 v7, 0x0

    :try_start_2d
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_6b

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6b

    const-string/jumbo v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "file already exists in beginSendObject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_64} :catch_ca
    .catchall {:try_start_2d .. :try_end_64} :catchall_da

    const/4 v0, -0x1

    if-eqz v7, :cond_6a

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6a
    return v0

    :cond_6b
    if-eqz v7, :cond_70

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_70
    :goto_70
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v0, "_data"

    invoke-virtual {v10, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "format"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "parent"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "storage_id"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "_size"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v0, "date_modified"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_b0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_e1

    invoke-virtual {v9}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c8
    .catch Landroid/os/RemoteException; {:try_start_b0 .. :try_end_c8} :catch_e3

    move-result v0

    return v0

    :catch_ca
    move-exception v8

    :try_start_cb
    const-string/jumbo v0, "MtpDatabase"

    const-string/jumbo v1, "RemoteException in beginSendObject"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d4
    .catchall {:try_start_cb .. :try_end_d4} :catchall_da

    if-eqz v7, :cond_70

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_70

    :catchall_da
    move-exception v0

    if-eqz v7, :cond_e0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_e0
    throw v0

    :cond_e1
    const/4 v0, -0x1

    return v0

    :catch_e3
    move-exception v8

    const-string/jumbo v0, "MtpDatabase"

    const-string/jumbo v1, "RemoteException in beginSendObject"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    return v0
.end method

.method private createObjectQuery(III)Landroid/database/Cursor;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v0, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_55

    if-nez p2, :cond_32

    if-nez p3, :cond_23

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_d
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    if-eqz v0, :cond_17

    if-nez v3, :cond_ab

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_23
    if-ne p3, v0, :cond_26

    const/4 p3, 0x0

    :cond_26
    const-string/jumbo v3, "parent=?"

    new-array v4, v2, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    goto :goto_d

    :cond_32
    if-nez p3, :cond_40

    const-string/jumbo v3, "format=?"

    new-array v4, v2, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    goto :goto_d

    :cond_40
    if-ne p3, v0, :cond_43

    const/4 p3, 0x0

    :cond_43
    const-string/jumbo v3, "format=? AND parent=?"

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    goto :goto_d

    :cond_55
    if-nez p2, :cond_7a

    if-nez p3, :cond_65

    const-string/jumbo v3, "storage_id=?"

    new-array v4, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    goto :goto_d

    :cond_65
    if-ne p3, v0, :cond_68

    const/4 p3, 0x0

    :cond_68
    const-string/jumbo v3, "storage_id=? AND parent=?"

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    goto :goto_d

    :cond_7a
    if-nez p3, :cond_8e

    const-string/jumbo v3, "storage_id=? AND format=?"

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    goto :goto_d

    :cond_8e
    if-ne p3, v0, :cond_91

    const/4 p3, 0x0

    :cond_91
    const-string/jumbo v3, "storage_id=? AND format=? AND parent=?"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    goto/16 :goto_d

    :cond_ab
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    array-length v0, v4

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v9, v0, [Ljava/lang/String;

    const/4 v7, 0x0

    :goto_cd
    array-length v0, v4

    if-ge v7, v0, :cond_d7

    aget-object v0, v4, v7

    aput-object v0, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_cd

    :cond_d7
    const/4 v8, 0x0

    :goto_d8
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_e8

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    aget-object v0, v0, v8

    aput-object v0, v9, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_d8

    :cond_e8
    move-object v4, v9

    goto/16 :goto_17
.end method

.method private deleteFile(I)I
    .registers 16

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    const/4 v12, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    :try_start_6
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_3d

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_30} :catch_101
    .catchall {:try_start_6 .. :try_end_30} :catchall_11b

    move-result v10

    if-eqz v12, :cond_35

    if-nez v10, :cond_45

    :cond_35
    const/16 v0, 0x2002

    if-eqz v7, :cond_3c

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3c
    return v0

    :cond_3d
    const/16 v0, 0x2009

    if-eqz v7, :cond_44

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_44
    return v0

    :cond_45
    :try_start_45
    invoke-direct {p0, v12}, Landroid/mtp/MtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_48} :catch_101
    .catchall {:try_start_45 .. :try_end_48} :catchall_11b

    move-result v0

    if-eqz v0, :cond_53

    const/16 v0, 0x200d

    if-eqz v7, :cond_52

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_52
    return v0

    :cond_53
    const/16 v0, 0x3001

    if-ne v10, v0, :cond_a4

    :try_start_57
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string/jumbo v1, "_data LIKE ?1 AND lower(substr(_data,1,?2))=lower(?3)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    :cond_a4
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v13

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_113

    const/16 v0, 0x3001

    if-eq v10, v0, :cond_dd

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v12, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/.nomedia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_c5
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_c5} :catch_101
    .catchall {:try_start_57 .. :try_end_c5} :catchall_11b

    move-result v0

    if-eqz v0, :cond_dd

    :try_start_c8
    const-string/jumbo v0, "/"

    invoke-virtual {v12, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v12, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string/jumbo v1, "unhide"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v11, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_dd
    .catch Landroid/os/RemoteException; {:try_start_c8 .. :try_end_dd} :catch_e5
    .catchall {:try_start_c8 .. :try_end_dd} :catchall_11b

    :cond_dd
    :goto_dd
    const/16 v0, 0x2001

    if-eqz v7, :cond_e4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_e4
    return v0

    :catch_e5
    move-exception v9

    :try_start_e6
    const-string/jumbo v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "failed to unhide/rescan for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_100
    .catch Landroid/os/RemoteException; {:try_start_e6 .. :try_end_100} :catch_101
    .catchall {:try_start_e6 .. :try_end_100} :catchall_11b

    goto :goto_dd

    :catch_101
    move-exception v9

    :try_start_102
    const-string/jumbo v0, "MtpDatabase"

    const-string/jumbo v1, "RemoteException in deleteFile"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10b
    .catchall {:try_start_102 .. :try_end_10b} :catchall_11b

    const/16 v0, 0x2002

    if-eqz v7, :cond_112

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_112
    return v0

    :cond_113
    const/16 v0, 0x2009

    if-eqz v7, :cond_11a

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_11a
    return v0

    :catchall_11b
    move-exception v0

    if-eqz v7, :cond_121

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_121
    throw v0
.end method

.method private endSendObject(Ljava/lang/String;IIZ)V
    .registers 15

    const/4 v6, 0x0

    if-eqz p4, :cond_7b

    const v5, 0xba05

    if-ne p3, v5, :cond_75

    move-object v2, p1

    const/16 v5, 0x2f

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_17

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_17
    const-string/jumbo v5, ".pla"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_2a
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    const-string/jumbo v5, "_data"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "format"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v5, "media_scanner_new_object_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_61
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    sget-object v6, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_68} :catch_6a

    move-result-object v3

    :goto_69
    return-void

    :catch_6a
    move-exception v0

    const-string/jumbo v5, "MtpDatabase"

    const-string/jumbo v6, "RemoteException in endSendObject"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_69

    :cond_75
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    invoke-virtual {v5, p1, p2, p3}, Landroid/media/MediaScanner;->scanMtpFile(Ljava/lang/String;II)V

    goto :goto_69

    :cond_7b
    invoke-direct {p0, p2}, Landroid/mtp/MtpDatabase;->deleteFile(I)I

    goto :goto_69
.end method

.method private getDeviceProperty(I[J[C)I
    .registers 15

    const/16 v10, 0x2001

    const/4 v9, 0x0

    sparse-switch p1, :sswitch_data_72

    const/16 v6, 0x200a

    return v6

    :sswitch_9
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0xff

    if-le v3, v6, :cond_20

    const/16 v3, 0xff

    :cond_20
    invoke-virtual {v4, v9, v3, p3, v9}, Ljava/lang/String;->getChars(II[CI)V

    aput-char v9, p3, v3

    return v10

    :sswitch_26
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v9, v6, p3, v9}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    aput-char v9, p3, v6

    return v10

    :sswitch_6b
    iget v6, p0, Landroid/mtp/MtpDatabase;->mDeviceType:I

    int-to-long v6, v6

    aput-wide v6, p2, v9

    return v10

    nop

    :sswitch_data_72
    .sparse-switch
        0x5003 -> :sswitch_26
        0xd401 -> :sswitch_9
        0xd402 -> :sswitch_9
        0xd407 -> :sswitch_6b
    .end sparse-switch
.end method

.method private getNumObjects(III)I
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDatabase;->createObjectQuery(III)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_18
    .catchall {:try_start_1 .. :try_end_a} :catchall_28

    move-result v2

    if-eqz v0, :cond_10

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_10
    return v2

    :cond_11
    if-eqz v0, :cond_16

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_16
    :goto_16
    const/4 v2, -0x1

    return v2

    :catch_18
    move-exception v1

    :try_start_19
    const-string/jumbo v2, "MtpDatabase"

    const-string/jumbo v3, "RemoteException in getNumObjects"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_28

    if-eqz v0, :cond_16

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_16

    :catchall_28
    move-exception v2

    if-eqz v0, :cond_2e

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2e
    throw v2
.end method

.method private getObjectFilePath(I[C[J)I
    .registers 15

    const/16 v10, 0x2001

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_22

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1, p2, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aput-char v2, p2, v0

    const-wide/16 v0, 0x0

    aput-wide v0, p3, v2

    const-wide/16 v0, 0x3001

    aput-wide v0, p3, v3

    return v10

    :cond_22
    const/4 v7, 0x0

    :try_start_23
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_73

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_73

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v0, p2, v2}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    aput-char v1, p2, v0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const/4 v2, 0x0

    aput-wide v0, p3, v2

    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const/4 v2, 0x1

    aput-wide v0, p3, v2
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_6d} :catch_7b
    .catchall {:try_start_23 .. :try_end_6d} :catchall_8d

    if-eqz v7, :cond_72

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_72
    return v10

    :cond_73
    const/16 v0, 0x2009

    if-eqz v7, :cond_7a

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7a
    return v0

    :catch_7b
    move-exception v8

    :try_start_7c
    const-string/jumbo v0, "MtpDatabase"

    const-string/jumbo v1, "RemoteException in getObjectFilePath"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_85
    .catchall {:try_start_7c .. :try_end_85} :catchall_8d

    const/16 v0, 0x2002

    if-eqz v7, :cond_8c

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8c
    return v0

    :catchall_8d
    move-exception v0

    if-eqz v7, :cond_93

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_93
    throw v0
.end method

.method private getObjectFormat(I)I
    .registers 12

    const/4 v9, -0x1

    const/4 v7, 0x0

    :try_start_2
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->FORMAT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2e

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_27} :catch_34
    .catchall {:try_start_2 .. :try_end_27} :catchall_44

    move-result v0

    if-eqz v7, :cond_2d

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2d
    return v0

    :cond_2e
    if-eqz v7, :cond_33

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_33
    return v9

    :catch_34
    move-exception v8

    :try_start_35
    const-string/jumbo v0, "MtpDatabase"

    const-string/jumbo v1, "RemoteException in getObjectFilePath"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_44

    if-eqz v7, :cond_43

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_43
    return v9

    :catchall_44
    move-exception v0

    if-eqz v7, :cond_4a

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4a
    throw v0
.end method

.method private getObjectInfo(I[I[C[J)Z
    .registers 20

    const/4 v9, 0x0

    :try_start_1
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v4, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_88

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_88

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x0

    aput v2, p2, v3

    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    aput v2, p2, v3

    const/4 v2, 0x3

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    aput v2, p2, v3

    const/4 v2, 0x4

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v2, 0x2f

    invoke-virtual {v13, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    if-ltz v12, :cond_86

    add-int/lit8 v14, v12, 0x1

    :goto_49
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v11

    sub-int v2, v11, v14

    const/16 v3, 0xff

    if-le v2, v3, :cond_55

    add-int/lit16 v11, v14, 0xff

    :cond_55
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v11, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    sub-int v2, v11, v14

    const/4 v3, 0x0

    aput-char v3, p3, v2

    const/4 v2, 0x5

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x0

    aput-wide v2, p4, v4

    const/4 v2, 0x6

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x1

    aput-wide v2, p4, v4

    const/4 v2, 0x0

    aget-wide v2, p4, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_7f

    const/4 v2, 0x1

    aget-wide v2, p4, v2

    const/4 v4, 0x0

    aput-wide v2, p4, v4
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7f} :catch_8f
    .catchall {:try_start_1 .. :try_end_7f} :catchall_9f

    :cond_7f
    const/4 v2, 0x1

    if-eqz v9, :cond_85

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_85
    return v2

    :cond_86
    const/4 v14, 0x0

    goto :goto_49

    :cond_88
    if-eqz v9, :cond_8d

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8d
    :goto_8d
    const/4 v2, 0x0

    return v2

    :catch_8f
    move-exception v10

    :try_start_90
    const-string/jumbo v2, "MtpDatabase"

    const-string/jumbo v3, "RemoteException in getObjectInfo"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_99
    .catchall {:try_start_90 .. :try_end_99} :catchall_9f

    if-eqz v9, :cond_8d

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_8d

    :catchall_9f
    move-exception v2

    if-eqz v9, :cond_a5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_a5
    throw v2
.end method

.method private getObjectList(III)[I
    .registers 12

    const/4 v7, 0x0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDatabase;->createObjectQuery(III)Landroid/database/Cursor;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_32
    .catchall {:try_start_2 .. :try_end_5} :catchall_42

    move-result-object v0

    if-nez v0, :cond_e

    if-eqz v0, :cond_d

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_d
    return-object v7

    :cond_e
    :try_start_e
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2c

    new-array v4, v1, [I

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v1, :cond_26

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    aput v5, v4, v3
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_23} :catch_32
    .catchall {:try_start_e .. :try_end_23} :catchall_42

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_26
    if-eqz v0, :cond_2b

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2b
    return-object v4

    :cond_2c
    if-eqz v0, :cond_31

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_31
    :goto_31
    return-object v7

    :catch_32
    move-exception v2

    :try_start_33
    const-string/jumbo v5, "MtpDatabase"

    const-string/jumbo v6, "RemoteException in getObjectList"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_42

    if-eqz v0, :cond_31

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_31

    :catchall_42
    move-exception v5

    if-eqz v0, :cond_48

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_48
    throw v5
.end method

.method private getObjectPropertyList(IIIII)Landroid/mtp/MtpPropertyList;
    .registers 11

    const/4 v2, -0x1

    const/4 v4, 0x0

    if-eqz p4, :cond_d

    new-instance v2, Landroid/mtp/MtpPropertyList;

    const v3, 0xa807

    invoke-direct {v2, v4, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    return-object v2

    :cond_d
    if-ne p3, v2, :cond_42

    if-nez p2, :cond_19

    if-eqz p1, :cond_19

    if-eq p1, v2, :cond_19

    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->getObjectFormat(I)I

    move-result p2

    :cond_19
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpPropertyGroup;

    if-nez v0, :cond_3d

    invoke-direct {p0, p2}, Landroid/mtp/MtpDatabase;->getSupportedObjectProperties(I)[I

    move-result-object v1

    new-instance v0, Landroid/mtp/MtpPropertyGroup;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3, v1}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/ContentProviderClient;Ljava/lang/String;[I)V

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    :goto_3d
    invoke-virtual {v0, p1, p2, p5}, Landroid/mtp/MtpPropertyGroup;->getPropertyList(III)Landroid/mtp/MtpPropertyList;

    move-result-object v2

    return-object v2

    :cond_42
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpPropertyGroup;

    if-nez v0, :cond_3d

    const/4 v2, 0x1

    new-array v1, v2, [I

    aput p3, v1, v4

    new-instance v0, Landroid/mtp/MtpPropertyGroup;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3, v1}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/ContentProviderClient;Ljava/lang/String;[I)V

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d
.end method

.method private getObjectReferences(I)[I
    .registers 15

    const/4 v12, 0x0

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v7, 0x0

    :try_start_9
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    sget-object v2, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_41
    .catchall {:try_start_9 .. :try_end_14} :catchall_51

    move-result-object v7

    if-nez v7, :cond_1d

    if-eqz v7, :cond_1c

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1c
    return-object v12

    :cond_1d
    :try_start_1d
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_3b

    new-array v11, v8, [I

    const/4 v10, 0x0

    :goto_26
    if-ge v10, v8, :cond_35

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v11, v10
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_32} :catch_41
    .catchall {:try_start_1d .. :try_end_32} :catchall_51

    add-int/lit8 v10, v10, 0x1

    goto :goto_26

    :cond_35
    if-eqz v7, :cond_3a

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3a
    return-object v11

    :cond_3b
    if-eqz v7, :cond_40

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_40
    :goto_40
    return-object v12

    :catch_41
    move-exception v9

    :try_start_42
    const-string/jumbo v0, "MtpDatabase"

    const-string/jumbo v2, "RemoteException in getObjectList"

    invoke-static {v0, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_51

    if-eqz v7, :cond_40

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_40

    :catchall_51
    move-exception v0

    if-eqz v7, :cond_57

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_57
    throw v0
.end method

.method private getSupportedCaptureFormats()[I
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method private getSupportedDeviceProperties()[I
    .registers 6

    const v0, 0xd401

    const v1, 0xd402

    const/16 v2, 0x5003

    const/16 v3, 0x5001

    const v4, 0xd407

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    return-object v0
.end method

.method private getSupportedObjectProperties(I)[I
    .registers 3

    sparse-switch p1, :sswitch_data_10

    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    return-object v0

    :sswitch_6
    sget-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    return-object v0

    :sswitch_9
    sget-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    return-object v0

    :sswitch_c
    sget-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    return-object v0

    nop

    :sswitch_data_10
    .sparse-switch
        0x3008 -> :sswitch_6
        0x3009 -> :sswitch_6
        0x300b -> :sswitch_9
        0x3801 -> :sswitch_c
        0x3804 -> :sswitch_c
        0x3807 -> :sswitch_c
        0x380b -> :sswitch_c
        0x3811 -> :sswitch_c
        0x3812 -> :sswitch_c
        0xb901 -> :sswitch_6
        0xb902 -> :sswitch_6
        0xb903 -> :sswitch_6
        0xb981 -> :sswitch_9
        0xb984 -> :sswitch_9
    .end sparse-switch
.end method

.method private getSupportedPlaybackFormats()[I
    .registers 2

    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 4
        0x3000
        0x3001
        0x3004
        0x3005
        0x3008
        0x3009
        0x300b
        0x3801
        0x3802
        0x3804
        0x3807
        0x3808
        0x380b
        0x380d
        0xb901
        0xb902
        0xb903
        0xb982
        0xb983
        0xb984
        0xba05
        0xba10
        0xba11
        0xba14
        0xba82
        0xb906
        0x3811
        0x3812
    .end array-data
.end method

.method private inStorageRoot(Ljava/lang/String;)Z
    .registers 8

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_22} :catch_27

    move-result v5

    if-eqz v5, :cond_13

    const/4 v5, 0x1

    return v5

    :catch_27
    move-exception v1

    :cond_28
    const/4 v5, 0x0

    return v5
.end method

.method private inStorageSubDirectory(Ljava/lang/String;)Z
    .registers 9

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    if-nez v5, :cond_6

    const/4 v5, 0x1

    return v5

    :cond_6
    if-nez p1, :cond_a

    const/4 v5, 0x0

    return v5

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_10
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_35

    xor-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_35

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    aget-object v3, v5, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v2, :cond_32

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_32

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    const/4 v0, 0x1

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_35
    return v0
.end method

.method private initDeviceProperties(Landroid/content/Context;)V
    .registers 18

    const-string/jumbo v11, "device-properties"

    const-string/jumbo v2, "device-properties"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "device-properties"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8a

    const/4 v1, 0x0

    const/4 v9, 0x0

    :try_start_22
    const-string/jumbo v2, "device-properties"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_8e

    const-string/jumbo v2, "properties"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "code"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string/jumbo v4, "value"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_8e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    :goto_5a
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8b

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_6d} :catch_6e
    .catchall {:try_start_22 .. :try_end_6d} :catchall_99

    goto :goto_5a

    :catch_6e
    move-exception v13

    :try_start_6f
    const-string/jumbo v2, "MtpDatabase"

    const-string/jumbo v3, "failed to migrate device properties"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_78
    .catchall {:try_start_6f .. :try_end_78} :catchall_99

    if-eqz v9, :cond_7d

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7d
    if-eqz v1, :cond_82

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_82
    :goto_82
    const-string/jumbo v2, "device-properties"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    :cond_8a
    return-void

    :cond_8b
    :try_start_8b
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_6e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_99

    :cond_8e
    if-eqz v9, :cond_93

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_93
    if-eqz v1, :cond_82

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_82

    :catchall_99
    move-exception v2

    if-eqz v9, :cond_9f

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_9f
    if-eqz v1, :cond_a4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_a4
    throw v2
.end method

.method private isStorageSubDirectory(Ljava/lang/String;)Z
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    if-nez v1, :cond_6

    return v2

    :cond_6
    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1b

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    return v1

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1b
    return v2
.end method

.method private final native native_finalize()V
.end method

.method private final native native_setup()V
.end method

.method private renameFile(ILjava/lang/String;)I
    .registers 21

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v5, v2

    :try_start_c
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v4, "_id=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_2c

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_2b} :catch_36
    .catchall {:try_start_c .. :try_end_2b} :catchall_48

    move-result-object v14

    :cond_2c
    if-eqz v8, :cond_31

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_31
    if-nez v14, :cond_4f

    const/16 v1, 0x2009

    return v1

    :catch_36
    move-exception v9

    :try_start_37
    const-string/jumbo v1, "MtpDatabase"

    const-string/jumbo v2, "RemoteException in getObjectFilePath"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_48

    const/16 v1, 0x2002

    if-eqz v8, :cond_47

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_47
    return v1

    :catchall_48
    move-exception v1

    if-eqz v8, :cond_4e

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4e
    throw v1

    :cond_4f
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/mtp/MtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    const/16 v1, 0x200d

    return v1

    :cond_5a
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2f

    invoke-virtual {v14, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    const/4 v1, 0x1

    if-gt v10, v1, :cond_6b

    const/16 v1, 0x2002

    return v1

    :cond_6b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v10, 0x1

    const/4 v3, 0x0

    invoke-virtual {v14, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v15

    if-nez v15, :cond_bf

    const-string/jumbo v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "renaming "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x2002

    return v1

    :cond_bf
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "_data"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0x0

    :try_start_ce
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string/jumbo v3, "_id=?"

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0, v3, v5}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_de
    .catch Landroid/os/RemoteException; {:try_start_ce .. :try_end_de} :catch_10c

    move-result v16

    :goto_df
    if-nez v16, :cond_117

    const-string/jumbo v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to update path for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const/16 v1, 0x2002

    return v1

    :catch_10c
    move-exception v9

    const-string/jumbo v1, "MtpDatabase"

    const-string/jumbo v2, "RemoteException in mMediaProvider.update"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_df

    :cond_117
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_15f

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_140

    const-string/jumbo v1, "."

    invoke-virtual {v12, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_140

    :try_start_135
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string/jumbo v2, "unhide"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v12, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_140
    .catch Landroid/os/RemoteException; {:try_start_135 .. :try_end_140} :catch_143

    :cond_140
    :goto_140
    const/16 v1, 0x2001

    return v1

    :catch_143
    move-exception v9

    const-string/jumbo v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to unhide/rescan for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_140

    :cond_15f
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_140

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v12, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_140

    :try_start_183
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string/jumbo v2, "unhide"

    invoke-virtual {v13}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_192
    .catch Landroid/os/RemoteException; {:try_start_183 .. :try_end_192} :catch_193

    goto :goto_140

    :catch_193
    move-exception v9

    const-string/jumbo v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to unhide/rescan for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_140
.end method

.method private sessionEnded()V
    .registers 4

    iget-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mUserContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.provider.action.MTP_SESSION_END"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    :cond_14
    return-void
.end method

.method private sessionStarted()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    return-void
.end method

.method private setDeviceProperty(IJLjava/lang/String;)I
    .registers 7

    packed-switch p1, :pswitch_data_20

    const/16 v1, 0x200a

    return v1

    :pswitch_6
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_1c

    const/16 v1, 0x2001

    :goto_1b
    return v1

    :cond_1c
    const/16 v1, 0x2002

    goto :goto_1b

    nop

    :pswitch_data_20
    .packed-switch 0xd401
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private setObjectProperty(IIJLjava/lang/String;)I
    .registers 7

    packed-switch p2, :pswitch_data_c

    const v0, 0xa80a

    return v0

    :pswitch_7
    invoke-direct {p0, p1, p5}, Landroid/mtp/MtpDatabase;->renameFile(ILjava/lang/String;)I

    move-result v0

    return v0

    :pswitch_data_c
    .packed-switch 0xdc07
        :pswitch_7
    .end packed-switch
.end method

.method private setObjectReferences(I[I)I
    .registers 13

    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v8, p1

    invoke-static {v6, v8, v9}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    array-length v0, p2

    new-array v5, v0, [Landroid/content/ContentValues;

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_26

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "_id"

    aget v7, p2, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    aput-object v4, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_26
    :try_start_26
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v6, v3, v5}, Landroid/content/ContentProviderClient;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_31

    move-result v6

    if-lez v6, :cond_3b

    const/16 v6, 0x2001

    return v6

    :catch_31
    move-exception v1

    const-string/jumbo v6, "MtpDatabase"

    const-string/jumbo v7, "RemoteException in setObjectReferences"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3b
    const/16 v6, 0x2002

    return v6
.end method


# virtual methods
.method public addStorage(Landroid/mtp/MtpStorage;)V
    .registers 4

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public close()V
    .registers 4

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    invoke-virtual {v0}, Landroid/media/MediaScanner;->close()V

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_finalize()V

    :cond_1c
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_9
    invoke-virtual {p0}, Landroid/mtp/MtpDatabase;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_10

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_10
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public removeStorage(Landroid/mtp/MtpStorage;)V
    .registers 4

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setServer(Landroid/mtp/MtpServer;)V
    .registers 7

    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    :try_start_2
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_9} :catch_1b

    :goto_9
    if-eqz p1, :cond_1a

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1a
    return-void

    :catch_1b
    move-exception v0

    goto :goto_9
.end method
