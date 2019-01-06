.class public Landroid/telephony/MbmsDownloadSession;
.super Ljava/lang/Object;
.source "MbmsDownloadSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/MbmsDownloadSession$1;
    }
.end annotation


# static fields
.field public static final DEFAULT_TOP_LEVEL_TEMP_DIRECTORY:Ljava/lang/String; = "androidMbmsTempFileRoot"

.field public static final EXTRA_MBMS_COMPLETED_FILE_URI:Ljava/lang/String; = "android.telephony.extra.MBMS_COMPLETED_FILE_URI"

.field public static final EXTRA_MBMS_DOWNLOAD_REQUEST:Ljava/lang/String; = "android.telephony.extra.MBMS_DOWNLOAD_REQUEST"

.field public static final EXTRA_MBMS_DOWNLOAD_RESULT:Ljava/lang/String; = "android.telephony.extra.MBMS_DOWNLOAD_RESULT"

.field public static final EXTRA_MBMS_FILE_INFO:Ljava/lang/String; = "android.telephony.extra.MBMS_FILE_INFO"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final MBMS_DOWNLOAD_SERVICE_ACTION:Ljava/lang/String; = "android.telephony.action.EmbmsDownload"

.field public static final RESULT_CANCELLED:I = 0x2

.field public static final RESULT_EXPIRED:I = 0x3

.field public static final RESULT_IO_ERROR:I = 0x4

.field public static final RESULT_SUCCESSFUL:I = 0x1

.field public static final STATUS_ACTIVELY_DOWNLOADING:I = 0x1

.field public static final STATUS_PENDING_DOWNLOAD:I = 0x2

.field public static final STATUS_PENDING_DOWNLOAD_WINDOW:I = 0x4

.field public static final STATUS_PENDING_REPAIR:I = 0x3

.field public static final STATUS_UNKNOWN:I

.field private static sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

.field private final mInternalDownloadCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/telephony/mbms/DownloadStateCallback;",
            "Landroid/telephony/mbms/InternalDownloadStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/telephony/mbms/vendor/IMbmsDownloadService;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionId:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/telephony/MbmsDownloadSession;)Landroid/os/IBinder$DeathRecipient;
    .registers 2

    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic -get2(Landroid/telephony/MbmsDownloadSession;)Landroid/telephony/mbms/InternalDownloadSessionCallback;
    .registers 2

    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    return-object v0
.end method

.method static synthetic -get3(Landroid/telephony/MbmsDownloadSession;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 2

    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic -get4(Landroid/telephony/MbmsDownloadSession;)I
    .registers 2

    iget v0, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    return v0
.end method

.method static synthetic -get5()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object v0, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/telephony/MbmsDownloadSession;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const-class v0, Landroid/telephony/MbmsDownloadSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/telephony/mbms/MbmsDownloadSessionCallback;ILandroid/os/Handler;)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    new-instance v0, Landroid/telephony/MbmsDownloadSession$1;

    invoke-direct {v0, p0}, Landroid/telephony/MbmsDownloadSession$1;-><init>(Landroid/telephony/MbmsDownloadSession;)V

    iput-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadCallbacks:Ljava/util/Map;

    iput-object p1, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    iput p3, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    if-nez p4, :cond_2b

    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_2b
    new-instance v0, Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-direct {v0, p2, p4}, Landroid/telephony/mbms/InternalDownloadSessionCallback;-><init>(Landroid/telephony/mbms/MbmsDownloadSessionCallback;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    return-void
.end method

.method private bindAndInitialize()I
    .registers 4

    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.telephony.action.EmbmsDownload"

    new-instance v2, Landroid/telephony/MbmsDownloadSession$3;

    invoke-direct {v2, p0}, Landroid/telephony/MbmsDownloadSession$3;-><init>(Landroid/telephony/MbmsDownloadSession;)V

    invoke-static {v0, v1, v2}, Landroid/telephony/mbms/MbmsUtils;->startBinding(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)I

    move-result v0

    return v0
.end method

.method public static create(Landroid/content/Context;Landroid/telephony/mbms/MbmsDownloadSessionCallback;ILandroid/os/Handler;)Landroid/telephony/MbmsDownloadSession;
    .registers 9

    const/4 v4, 0x0

    sget-object v2, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_13

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Cannot have two active instances"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_13
    new-instance v1, Landroid/telephony/MbmsDownloadSession;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/telephony/MbmsDownloadSession;-><init>(Landroid/content/Context;Landroid/telephony/mbms/MbmsDownloadSessionCallback;ILandroid/os/Handler;)V

    invoke-direct {v1}, Landroid/telephony/MbmsDownloadSession;->bindAndInitialize()I

    move-result v0

    if-eqz v0, :cond_2d

    sget-object v2, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v2, Landroid/telephony/MbmsDownloadSession$2;

    invoke-direct {v2, p1, v0}, Landroid/telephony/MbmsDownloadSession$2;-><init>(Landroid/telephony/mbms/MbmsDownloadSessionCallback;I)V

    invoke-virtual {p3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    return-object v2

    :cond_2d
    return-object v1
.end method

.method public static create(Landroid/content/Context;Landroid/telephony/mbms/MbmsDownloadSessionCallback;Landroid/os/Handler;)Landroid/telephony/MbmsDownloadSession;
    .registers 4

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Landroid/telephony/MbmsDownloadSession;->create(Landroid/content/Context;Landroid/telephony/mbms/MbmsDownloadSessionCallback;ILandroid/os/Handler;)Landroid/telephony/MbmsDownloadSession;

    move-result-object v0

    return-object v0
.end method

.method private deleteDownloadRequestToken(Landroid/telephony/mbms/DownloadRequest;)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/telephony/MbmsDownloadSession;->getDownloadRequestTokenPath(Landroid/telephony/mbms/DownloadRequest;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_24

    sget-object v1, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempting to delete non-existent download token at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_24
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_43

    sget-object v1, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t delete download token at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    return-void
.end method

.method private getDownloadRequestTokenPath(Landroid/telephony/mbms/DownloadRequest;)Ljava/io/File;
    .registers 6

    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/telephony/mbms/DownloadRequest;->getFileServiceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/mbms/MbmsUtils;->getEmbmsTempFileDirForService(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/telephony/mbms/DownloadRequest;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".download_token"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private sendErrorToApp(ILjava/lang/String;)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->onError(ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method private validateTempFileRootSanity(Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Provided directory does not exist"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1e

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Provided File is not a directory"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1e
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Temp file root cannot be your data dir"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3b
    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Temp file root cannot be your cache dir"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_54
    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Temp file root cannot be your files dir"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6d
    return-void
.end method

.method private writeDownloadRequestToken(Landroid/telephony/mbms/DownloadRequest;)V
    .registers 7

    invoke-direct {p0, p1}, Landroid/telephony/MbmsDownloadSession;->getDownloadRequestTokenPath(Landroid/telephony/mbms/DownloadRequest;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_15
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_40

    sget-object v2, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Download token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " already exists"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_40
    :try_start_40
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-nez v2, :cond_86

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to create download token for request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_60} :catch_60

    :catch_60
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to create download token for request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " due to IOException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_86
    return-void
.end method


# virtual methods
.method public cancelDownload(Landroid/telephony/mbms/DownloadRequest;)V
    .registers 8

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    if-nez v0, :cond_14

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Middleware not yet bound"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_14
    :try_start_14
    invoke-interface {v0, p1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->cancelDownload(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v2

    if-eqz v2, :cond_37

    const/16 v3, 0x192

    if-ne v2, v3, :cond_32

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Unknown download request."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_27} :catch_27

    :catch_27
    move-exception v1

    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 v3, 0x3

    invoke-direct {p0, v3, v5}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    return-void

    :cond_32
    const/4 v3, 0x0

    :try_start_33
    invoke-direct {p0, v2, v3}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_36} :catch_27

    return-void

    :cond_37
    invoke-direct {p0, p1}, Landroid/telephony/MbmsDownloadSession;->deleteDownloadRequestToken(Landroid/telephony/mbms/DownloadRequest;)V

    return-void
.end method

.method public close()V
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x0

    :try_start_2
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    if-nez v0, :cond_24

    sget-object v2, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Service already dead"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_14} :catch_39
    .catchall {:try_start_2 .. :try_end_14} :catchall_52

    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v2, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-virtual {v2}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->stop()V

    return-void

    :cond_24
    :try_start_24
    iget v2, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    invoke-interface {v0, v2}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->dispose(I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_39
    .catchall {:try_start_24 .. :try_end_29} :catchall_52

    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v2, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-virtual {v2}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->stop()V

    :goto_38
    return-void

    :catch_39
    move-exception v1

    :try_start_3a
    sget-object v2, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Remote exception while disposing of service"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_52

    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v2, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-virtual {v2}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->stop()V

    goto :goto_38

    :catchall_52
    move-exception v2

    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v3, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-virtual {v3}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->stop()V

    throw v2
.end method

.method public download(Landroid/telephony/mbms/DownloadRequest;)V
    .registers 10

    const/4 v7, 0x0

    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    if-nez v0, :cond_14

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Middleware not yet bound"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_14
    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "MbmsTempFileRootPrefs"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v4, "mbms_temp_file_root"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3b

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "androidMbmsTempFileRoot"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p0, v3}, Landroid/telephony/MbmsDownloadSession;->setTempFileRootDirectory(Ljava/io/File;)V

    :cond_3b
    invoke-direct {p0, p1}, Landroid/telephony/MbmsDownloadSession;->writeDownloadRequestToken(Landroid/telephony/mbms/DownloadRequest;)V

    :try_start_3e
    invoke-interface {v0, p1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->download(Landroid/telephony/mbms/DownloadRequest;)I
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_41} :catch_42

    :goto_41
    return-void

    :catch_42
    move-exception v1

    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 v4, 0x3

    invoke-direct {p0, v4, v7}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    goto :goto_41
.end method

.method public getDownloadStatus(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;)I
    .registers 7

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    if-nez v0, :cond_14

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Middleware not yet bound"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_14
    :try_start_14
    invoke-interface {v0, p1, p2}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->getDownloadStatus(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;)I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_19

    move-result v2

    return v2

    :catch_19
    move-exception v1

    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 v2, 0x3

    invoke-direct {p0, v2, v3}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    const/4 v2, 0x0

    return v2
.end method

.method public getTempFileRootDirectory()Ljava/io/File;
    .registers 7

    const/4 v5, 0x0

    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "MbmsTempFileRootPrefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "mbms_temp_file_root"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2

    :cond_1a
    return-object v5
.end method

.method public listPendingDownloads()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/mbms/DownloadRequest;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    if-nez v0, :cond_14

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Middleware not yet bound"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_14
    :try_start_14
    iget v2, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    invoke-interface {v0, v2}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->listPendingDownloads(I)Ljava/util/List;
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1b

    move-result-object v2

    return-object v2

    :catch_1b
    move-exception v1

    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 v2, 0x3

    invoke-direct {p0, v2, v3}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public registerStateCallback(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadStateCallback;Landroid/os/Handler;)V
    .registers 11

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    if-nez v0, :cond_14

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Middleware not yet bound"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_14
    new-instance v2, Landroid/telephony/mbms/InternalDownloadStateCallback;

    invoke-direct {v2, p2, p3}, Landroid/telephony/mbms/InternalDownloadStateCallback;-><init>(Landroid/telephony/mbms/DownloadStateCallback;Landroid/os/Handler;)V

    :try_start_19
    invoke-virtual {p2}, Landroid/telephony/mbms/DownloadStateCallback;->getCallbackFilterFlags()I

    move-result v4

    invoke-interface {v0, p1, v2, v4}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->registerStateCallback(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStateCallback;I)I

    move-result v3

    if-eqz v3, :cond_40

    const/16 v4, 0x192

    if-ne v3, v4, :cond_3b

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Unknown download request."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_30} :catch_30

    :catch_30
    move-exception v1

    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 v4, 0x3

    invoke-direct {p0, v4, v6}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    return-void

    :cond_3b
    const/4 v4, 0x0

    :try_start_3c
    invoke-direct {p0, v3, v4}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3f} :catch_30

    return-void

    :cond_40
    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadCallbacks:Ljava/util/Map;

    invoke-interface {v4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public requestUpdateFileServices(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    if-nez v0, :cond_14

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Middleware not yet bound"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_14
    :try_start_14
    iget v3, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    invoke-interface {v0, v3, p1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->requestUpdateFileServices(ILjava/util/List;)I

    move-result v2

    if-eqz v2, :cond_20

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_20} :catch_21

    :cond_20
    :goto_20
    return-void

    :catch_21
    move-exception v1

    sget-object v3, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Remote process died"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 v3, 0x3

    invoke-direct {p0, v3, v5}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    goto :goto_20
.end method

.method public resetDownloadKnowledge(Landroid/telephony/mbms/DownloadRequest;)V
    .registers 8

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    if-nez v0, :cond_14

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Middleware not yet bound"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_14
    :try_start_14
    invoke-interface {v0, p1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->resetDownloadKnowledge(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v2

    if-eqz v2, :cond_31

    const/16 v3, 0x192

    if-ne v2, v3, :cond_32

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Unknown download request."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_27} :catch_27

    :catch_27
    move-exception v1

    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 v3, 0x3

    invoke-direct {p0, v3, v5}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    :cond_31
    :goto_31
    return-void

    :cond_32
    const/4 v3, 0x0

    :try_start_33
    invoke-direct {p0, v2, v3}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_36} :catch_27

    goto :goto_31
.end method

.method public setTempFileRootDirectory(Ljava/io/File;)V
    .registers 11

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v6, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    if-nez v0, :cond_15

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "Middleware not yet bound"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_15
    :try_start_15
    invoke-direct {p0, p1}, Landroid/telephony/MbmsDownloadSession;->validateTempFileRootSanity(Ljava/io/File;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_40

    :try_start_18
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_4a

    move-result-object v3

    :try_start_1c
    iget v6, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    invoke-interface {v0, v6, v3}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->setTempFileRootDirectory(ILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_28

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_28} :catch_65

    :cond_28
    iget-object v6, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "MbmsTempFileRootPrefs"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string/jumbo v7, "mbms_temp_file_root"

    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :catch_40
    move-exception v2

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "Got IOException checking directory sanity"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :catch_4a
    move-exception v2

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to canonicalize the provided path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :catch_65
    move-exception v1

    iget-object v6, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 v6, 0x3

    invoke-direct {p0, v6, v7}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    return-void
.end method

.method public unregisterStateCallback(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadStateCallback;)V
    .registers 9

    :try_start_0
    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    if-nez v0, :cond_22

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Middleware not yet bound"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_13

    :catchall_13
    move-exception v4

    iget-object v5, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadCallbacks:Ljava/util/Map;

    invoke-interface {v5, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/InternalDownloadStateCallback;

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Landroid/telephony/mbms/InternalDownloadStateCallback;->stop()V

    :cond_21
    throw v4

    :cond_22
    :try_start_22
    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadCallbacks:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/InternalDownloadStateCallback;
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_13

    :try_start_2a
    invoke-interface {v0, p1, v2}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->unregisterStateCallback(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStateCallback;)I

    move-result v3

    if-eqz v3, :cond_49

    const/16 v4, 0x192

    if-ne v3, v4, :cond_57

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Unknown download request."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_3d} :catch_3d
    .catchall {:try_start_2a .. :try_end_3d} :catchall_13

    :catch_3d
    move-exception v1

    :try_start_3e
    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_49
    .catchall {:try_start_3e .. :try_end_49} :catchall_13

    :cond_49
    :goto_49
    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadCallbacks:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/InternalDownloadStateCallback;

    if-eqz v2, :cond_56

    invoke-virtual {v2}, Landroid/telephony/mbms/InternalDownloadStateCallback;->stop()V

    :cond_56
    return-void

    :cond_57
    const/4 v4, 0x0

    :try_start_58
    invoke-direct {p0, v3, v4}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_5b} :catch_3d
    .catchall {:try_start_58 .. :try_end_5b} :catchall_13

    goto :goto_49
.end method
