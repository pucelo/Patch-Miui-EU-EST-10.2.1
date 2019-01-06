.class public Landroid/util/NtpTrustedTime;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Landroid/util/TrustedTime;


# static fields
.field private static final LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "NtpTrustedTime"

.field private static mBackupServer:Ljava/lang/String;

.field private static mNtpRetries:I

.field private static mNtpRetriesMax:I

.field private static sContext:Landroid/content/Context;

.field private static sSingleton:Landroid/util/NtpTrustedTime;


# instance fields
.field private mBackupmode:Z

.field private mCM:Landroid/net/ConnectivityManager;

.field private mCachedNtpCertainty:J

.field private mCachedNtpElapsedRealtime:J

.field private mCachedNtpTime:J

.field private mHasCache:Z

.field private final mServer:Ljava/lang/String;

.field private final mTimeout:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const-string/jumbo v0, ""

    sput-object v0, Landroid/util/NtpTrustedTime;->mBackupServer:Ljava/lang/String;

    sput v1, Landroid/util/NtpTrustedTime;->mNtpRetries:I

    sput v1, Landroid/util/NtpTrustedTime;->mNtpRetriesMax:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;J)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/NtpTrustedTime;->mBackupmode:Z

    const-string/jumbo v0, "NtpTrustedTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "creating NtpTrustedTime using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    iput-wide p2, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    return-void
.end method

.method private countInBackupmode()V
    .registers 3

    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->isBackupSupported()Z

    move-result v0

    if-eqz v0, :cond_19

    sget v0, Landroid/util/NtpTrustedTime;->mNtpRetries:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/util/NtpTrustedTime;->mNtpRetries:I

    sget v0, Landroid/util/NtpTrustedTime;->mNtpRetries:I

    sget v1, Landroid/util/NtpTrustedTime;->mNtpRetriesMax:I

    if-ne v0, v1, :cond_19

    const/4 v0, 0x0

    sput v0, Landroid/util/NtpTrustedTime;->mNtpRetries:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/util/NtpTrustedTime;->setBackupmode(Z)V

    :cond_19
    const-string/jumbo v0, "NtpTrustedTime"

    const-string/jumbo v1, "countInBackupmode() func"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getBackupmode()Z
    .registers 2

    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mBackupmode:Z

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;
    .registers 15

    const-class v11, Landroid/util/NtpTrustedTime;

    monitor-enter v11

    :try_start_3
    sget-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    if-nez v10, :cond_6e

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const v10, 0x1040157

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v10, 0x10e0081

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    int-to-long v2, v10

    const-string/jumbo v10, "ntp_server"

    invoke-static {v5, v10}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "ntp_timeout"

    invoke-static {v5, v10, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    if-eqz v6, :cond_72

    move-object v7, v6

    :goto_2f
    new-instance v10, Landroid/util/NtpTrustedTime;

    invoke-direct {v10, v7, v8, v9}, Landroid/util/NtpTrustedTime;-><init>(Ljava/lang/String;J)V

    sput-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    sput-object p0, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    sget-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    if-eqz v10, :cond_6e

    const-string/jumbo v10, "persist.backup.ntpServer"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    const v10, 0x10e007f

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    sput v10, Landroid/util/NtpTrustedTime;->mNtpRetriesMax:I

    sget-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    sget v10, Landroid/util/NtpTrustedTime;->mNtpRetriesMax:I

    if-lez v10, :cond_74

    if-eqz v0, :cond_74

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_74

    sget-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v12, "\""

    const-string/jumbo v13, ""

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Landroid/util/NtpTrustedTime;->mBackupServer:Ljava/lang/String;

    :cond_6e
    :goto_6e
    sget-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_70
    .catchall {:try_start_3 .. :try_end_70} :catchall_81

    monitor-exit v11

    return-object v10

    :cond_72
    move-object v7, v1

    goto :goto_2f

    :cond_74
    :try_start_74
    sget-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    const/4 v10, 0x0

    sput v10, Landroid/util/NtpTrustedTime;->mNtpRetriesMax:I

    sget-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    const-string/jumbo v10, ""

    sput-object v10, Landroid/util/NtpTrustedTime;->mBackupServer:Ljava/lang/String;
    :try_end_80
    .catchall {:try_start_74 .. :try_end_80} :catchall_81

    goto :goto_6e

    :catchall_81
    move-exception v10

    monitor-exit v11

    throw v10
.end method

.method private isBackupSupported()Z
    .registers 3

    const/4 v0, 0x0

    sget v1, Landroid/util/NtpTrustedTime;->mNtpRetriesMax:I

    if-lez v1, :cond_12

    sget-object v1, Landroid/util/NtpTrustedTime;->mBackupServer:Ljava/lang/String;

    if-eqz v1, :cond_12

    sget-object v1, Landroid/util/NtpTrustedTime;->mBackupServer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method


# virtual methods
.method public currentTimeMillis()J
    .registers 5

    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Missing authoritative time source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const-string/jumbo v0, "NtpTrustedTime"

    const-string/jumbo v1, "currentTimeMillis() cache hit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public forceRefresh()Z
    .registers 10

    const/4 v8, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    return v6

    :cond_b
    monitor-enter p0

    :try_start_c
    iget-object v3, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_1d

    sget-object v3, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_37

    :cond_1d
    monitor-exit p0

    iget-object v3, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_3a

    const/4 v2, 0x0

    :goto_23
    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_41

    :cond_2d
    const-string/jumbo v3, "NtpTrustedTime"

    const-string/jumbo v4, "forceRefresh: no connectivity"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :catchall_37
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_3a
    iget-object v3, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    goto :goto_23

    :cond_41
    const-string/jumbo v3, "NtpTrustedTime"

    const-string/jumbo v4, "forceRefresh() from cache miss"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/net/SntpClient;

    invoke-direct {v0}, Landroid/net/SntpClient;-><init>()V

    iget-object v1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->getBackupmode()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-virtual {p0, v6}, Landroid/util/NtpTrustedTime;->setBackupmode(Z)V

    sget-object v1, Landroid/util/NtpTrustedTime;->mBackupServer:Ljava/lang/String;

    :cond_5c
    const-string/jumbo v3, "NtpTrustedTime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Ntp Server to access at:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v4, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v3, v4

    invoke-static {v0, v1, v3}, Landroid/util/NtpTrustedTimeInjector;->requestTime(Landroid/net/SntpClient;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_97

    iput-boolean v8, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    iput-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    return v8

    :cond_97
    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->countInBackupmode()V

    return v6
.end method

.method public getCacheAge()J
    .registers 5

    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_c
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getCacheCertainty()J
    .registers 3

    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    return-wide v0

    :cond_7
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getCachedNtpTime()J
    .registers 3

    const-string/jumbo v0, "NtpTrustedTime"

    const-string/jumbo v1, "getCachedNtpTime() cache hit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    return-wide v0
.end method

.method public getCachedNtpTimeReference()J
    .registers 3

    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    return-wide v0
.end method

.method public hasCache()Z
    .registers 2

    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    return v0
.end method

.method public setBackupmode(Z)V
    .registers 5

    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->isBackupSupported()Z

    move-result v0

    if-eqz v0, :cond_8

    iput-boolean p1, p0, Landroid/util/NtpTrustedTime;->mBackupmode:Z

    :cond_8
    const-string/jumbo v0, "NtpTrustedTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBackupmode() set the backup mode to be:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/util/NtpTrustedTime;->mBackupmode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
