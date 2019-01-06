.class public Landroid/media/MediaScannerInjector;
.super Ljava/lang/Object;
.source "MediaScannerInjector.java"


# static fields
.field private static final DEBUG_LOG_PATH:Ljava/lang/String;

.field private static final MEDIA_META_APPROXIMATION:I = 0x400000

.field private static final MSG_PROCESSFILE_TIMEOUT:I = 0x1

.field private static final NOMEDIA_PATH_WHITE_LIST:[Ljava/lang/String;

.field private static final PROCESSFILE_TIMEOUT:I = 0xea60

.field private static final SECURITY_CENTER:Ljava/lang/String; = "com.miui.securitycenter"

.field private static final TAG:Ljava/lang/String; = "MediaScannerInjector"

.field private static mNoMediaWhiteList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;

.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field private static sProcessName:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Landroid/content/Context;
    .registers 1

    sget-object v0, Landroid/media/MediaScannerInjector;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/media/MediaScannerInjector;->sProcessName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Landroid/os/Handler;)Landroid/os/Handler;
    .registers 1

    sput-object p0, Landroid/media/MediaScannerInjector;->sHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageMiuiDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/debug_log/common/android.process.media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaScannerInjector;->DEBUG_LOG_PATH:Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "/Alarms"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "/DCIM"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "/DCIM/Camera"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "/DCIM/Screenshots"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "/Download"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "/Movies"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "/Music"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "/Pictures"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "/Podcasts"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "/Ringtones"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "/Notifications"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/MediaScannerInjector;->NOMEDIA_PATH_WHITE_LIST:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/MediaScannerInjector;->mNoMediaWhiteList:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyFile(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14

    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_83
    .catchall {:try_start_2 .. :try_end_7} :catchall_65

    :try_start_7
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_85
    .catchall {:try_start_7 .. :try_end_c} :catchall_7c

    const/16 v8, 0xaa

    :try_start_e
    invoke-virtual {v6, v8}, Ljava/io/FileOutputStream;->write(I)V

    const/4 v7, 0x0

    const/16 v8, 0x1000

    new-array v0, v8, [B

    :goto_16
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_26

    add-int/2addr v7, v1

    if-lt v7, p2, :cond_33

    sub-int v8, v7, p2

    sub-int/2addr v1, v8

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_26} :catch_38
    .catchall {:try_start_e .. :try_end_26} :catchall_7f

    :cond_26
    if-eqz v4, :cond_2b

    :try_start_28
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    :cond_2b
    if-eqz v6, :cond_30

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_30} :catch_5a

    :cond_30
    :goto_30
    move-object v5, v6

    move-object v3, v4

    :cond_32
    :goto_32
    return-void

    :cond_33
    const/4 v8, 0x0

    :try_start_34
    invoke-virtual {v6, v0, v8, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38
    .catchall {:try_start_34 .. :try_end_37} :catchall_7f

    goto :goto_16

    :catch_38
    move-exception v2

    move-object v5, v6

    move-object v3, v4

    :goto_3b
    :try_start_3b
    const-string/jumbo v8, "MediaScannerInjector"

    const-string/jumbo v9, "IOException "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_65

    if-eqz v3, :cond_49

    :try_start_46
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_49
    if-eqz v5, :cond_32

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4e} :catch_4f

    goto :goto_32

    :catch_4f
    move-exception v2

    const-string/jumbo v8, "MediaScannerInjector"

    const-string/jumbo v9, "IOException"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32

    :catch_5a
    move-exception v2

    const-string/jumbo v8, "MediaScannerInjector"

    const-string/jumbo v9, "IOException"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30

    :catchall_65
    move-exception v8

    :goto_66
    if-eqz v3, :cond_6b

    :try_start_68
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_6b
    if-eqz v5, :cond_70

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_70} :catch_71

    :cond_70
    :goto_70
    throw v8

    :catch_71
    move-exception v2

    const-string/jumbo v9, "MediaScannerInjector"

    const-string/jumbo v10, "IOException"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_70

    :catchall_7c
    move-exception v8

    move-object v3, v4

    goto :goto_66

    :catchall_7f
    move-exception v8

    move-object v5, v6

    move-object v3, v4

    goto :goto_66

    :catch_83
    move-exception v2

    goto :goto_3b

    :catch_85
    move-exception v2

    move-object v3, v4

    goto :goto_3b
.end method

.method public static forceRescanExternal(Landroid/content/Context;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "media"

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v1

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "unhide"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v0, v4}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static getNoMediaWhiteList()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v1, Landroid/media/MediaScannerInjector;->mNoMediaWhiteList:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Landroid/media/MediaScannerInjector;->loadNoMediaWhiteListLocked()V

    sget-object v0, Landroid/media/MediaScannerInjector;->mNoMediaWhiteList:Ljava/util/HashSet;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static initDebugDirectory()V
    .registers 4

    const/4 v2, -0x1

    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/media/MediaScannerInjector;->DEBUG_LOG_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3d

    invoke-static {v0, v2, v2, v2}, Lmiui/os/FileUtils;->mkdirs(Ljava/io/File;III)Z

    move-result v1

    if-nez v1, :cond_38

    const-string/jumbo v1, "MediaScannerInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mkdir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/media/MediaScannerInjector;->DEBUG_LOG_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_38
    sget-object v1, Landroid/media/MediaScannerInjector;->DEBUG_LOG_PATH:Ljava/lang/String;

    invoke-static {v1}, Lmiui/os/FileUtils;->addNoMedia(Ljava/lang/String;)Z

    :cond_3d
    return-void
.end method

.method public static declared-synchronized initMediaFileCapture(Ljava/lang/String;)V
    .registers 4

    const-class v1, Landroid/media/MediaScannerInjector;

    monitor-enter v1

    :try_start_3
    sput-object p0, Landroid/media/MediaScannerInjector;->sProcessName:Ljava/lang/String;

    sget-object v0, Landroid/media/MediaScannerInjector;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1c

    sget-object v0, Landroid/media/MediaScannerInjector;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_1c

    new-instance v0, Landroid/media/MediaScannerInjector$1;

    const-string/jumbo v2, "MediaScannerInjector"

    invoke-direct {v0, v2}, Landroid/media/MediaScannerInjector$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/media/MediaScannerInjector;->sHandlerThread:Landroid/os/HandlerThread;

    sget-object v0, Landroid/media/MediaScannerInjector;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1e

    :cond_1c
    monitor-exit v1

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isInNoMediaWhiteList(Ljava/lang/String;)Z
    .registers 5

    sget-object v1, Landroid/media/MediaScannerInjector;->mNoMediaWhiteList:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Landroid/media/MediaScannerInjector;->loadNoMediaWhiteListLocked()V

    const-string/jumbo v0, "MediaScannerInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isInNoMediaWhiteList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/media/MediaScannerInjector;->mNoMediaWhiteList:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_28

    move-result v0

    monitor-exit v1

    return v0

    :catchall_28
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static keepMimeType(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v2, 0x1

    if-eqz p1, :cond_16

    const-string/jumbo v1, "audio"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_a
    const-string/jumbo v1, "video/mp2p"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    if-eqz v0, :cond_18

    return v2

    :cond_16
    const/4 v0, 0x1

    goto :goto_a

    :cond_18
    const-string/jumbo v1, "video/x-matroska"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    if-eqz v0, :cond_24

    return v2

    :cond_24
    const/4 v1, 0x0

    return v1
.end method

.method private static loadNoMediaWhiteListLocked()V
    .registers 9

    const/4 v3, 0x0

    sget-object v4, Landroid/media/MediaScannerInjector;->mNoMediaWhiteList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_a

    return-void

    :cond_a
    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Landroid/media/MediaScannerInjector;->NOMEDIA_PATH_WHITE_LIST:[Ljava/lang/String;

    array-length v5, v4

    :goto_15
    if-ge v3, v5, :cond_53

    aget-object v2, v4, v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "MediaScannerInjector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "add "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "to white list"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Landroid/media/MediaScannerInjector;->mNoMediaWhiteList:Ljava/util/HashSet;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_53
    return-void
.end method

.method public static processFileBegin(Ljava/lang/String;Landroid/content/Context;)V
    .registers 6

    sget-object v1, Landroid/media/MediaScannerInjector;->sHandler:Landroid/os/Handler;

    if-eqz v1, :cond_13

    sget-object v1, Landroid/media/MediaScannerInjector;->sHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Landroid/media/MediaScannerInjector;->sHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_13
    sput-object p1, Landroid/media/MediaScannerInjector;->sContext:Landroid/content/Context;

    return-void
.end method

.method public static processFileEnd()V
    .registers 3

    const/4 v2, 0x0

    sget-object v0, Landroid/media/MediaScannerInjector;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/media/MediaScannerInjector;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_b
    sput-object v2, Landroid/media/MediaScannerInjector;->sContext:Landroid/content/Context;

    return-void
.end method
