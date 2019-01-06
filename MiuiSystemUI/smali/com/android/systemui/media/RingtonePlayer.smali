.class public Lcom/android/systemui/media/RingtonePlayer;
.super Lcom/android/systemui/SystemUI;
.source "RingtonePlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/RingtonePlayer$1;,
        Lcom/android/systemui/media/RingtonePlayer$Client;
    }
.end annotation


# instance fields
.field private final mAsyncPlayer:Lcom/android/systemui/media/NotificationPlayer;

.field private mAudioService:Landroid/media/IAudioService;

.field private mCallback:Landroid/media/IRingtonePlayer;

.field private final mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/systemui/media/RingtonePlayer$Client;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/media/RingtonePlayer;)Lcom/android/systemui/media/NotificationPlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/RingtonePlayer;->mAsyncPlayer:Lcom/android/systemui/media/NotificationPlayer;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/media/RingtonePlayer;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/media/RingtonePlayer;Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/media/RingtonePlayer;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/media/RingtonePlayer;Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/net/Uri;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/RingtonePlayer;->fallbackNotificationUri(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    new-instance v0, Lcom/android/systemui/media/NotificationPlayer;

    const-string/jumbo v1, "RingtonePlayer"

    invoke-direct {v0, v1}, Lcom/android/systemui/media/NotificationPlayer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/media/RingtonePlayer;->mAsyncPlayer:Lcom/android/systemui/media/NotificationPlayer;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    new-instance v0, Lcom/android/systemui/media/RingtonePlayer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/RingtonePlayer$1;-><init>(Lcom/android/systemui/media/RingtonePlayer;)V

    iput-object v0, p0, Lcom/android/systemui/media/RingtonePlayer;->mCallback:Landroid/media/IRingtonePlayer;

    return-void
.end method

.method private fallbackNotificationUri(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/net/Uri;
    .locals 4

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x2

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    :cond_1
    invoke-virtual {p2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    :cond_3
    return-object p1
.end method

.method private getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 4

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const/16 v2, 0x3e7

    if-ne v2, v1, :cond_0

    sget-object p1, Landroid/os/UserHandleCompat;->SYSTEM:Landroid/os/UserHandle;

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/media/RingtonePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v2, "Clients:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/RingtonePlayer$Client;

    const-string/jumbo v2, "  mToken="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/systemui/media/RingtonePlayer$Client;->-get1(Lcom/android/systemui/media/RingtonePlayer$Client;)Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v2, " mUri="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/systemui/media/RingtonePlayer$Client;->-get0(Lcom/android/systemui/media/RingtonePlayer$Client;)Landroid/media/Ringtone;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/Ringtone;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method public start()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer;->mAsyncPlayer:Lcom/android/systemui/media/NotificationPlayer;

    iget-object v2, p0, Lcom/android/systemui/media/RingtonePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/media/NotificationPlayer;->setUsesWakeLock(Landroid/content/Context;)V

    const-string/jumbo v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/media/RingtonePlayer;->mAudioService:Landroid/media/IAudioService;

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer;->mAudioService:Landroid/media/IAudioService;

    iget-object v2, p0, Lcom/android/systemui/media/RingtonePlayer;->mCallback:Landroid/media/IRingtonePlayer;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->setRingtonePlayer(Landroid/media/IRingtonePlayer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RingtonePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Problem registering RingtonePlayer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
