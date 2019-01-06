.class public Landroid/app/NotificationChannelCompat;
.super Ljava/lang/Object;
.source "NotificationChannelCompat.java"


# instance fields
.field private mChannel:Landroid/app/NotificationChannel;


# direct methods
.method private constructor <init>(Landroid/app/NotificationChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/NotificationChannelCompat;->mChannel:Landroid/app/NotificationChannel;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/NotificationChannel;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object v0, p0, Landroid/app/NotificationChannelCompat;->mChannel:Landroid/app/NotificationChannel;

    return-void
.end method

.method public static createNotificationChannel(Landroid/app/NotificationManager;Landroid/app/NotificationChannelCompat;)V
    .locals 1

    iget-object v0, p1, Landroid/app/NotificationChannelCompat;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public static createNotificationChannels(Landroid/app/NotificationManager;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/NotificationManager;",
            "Ljava/util/List",
            "<",
            "Landroid/app/NotificationChannelCompat;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Landroid/app/-$Lambda$3MMKIgZl8R-AdIvIQiDDoskufAY;->$INST$0:Landroid/app/-$Lambda$3MMKIgZl8R-AdIvIQiDDoskufAY;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    return-void
.end method

.method public static getChannel(Landroid/service/notification/NotificationListenerService$Ranking;)Landroid/app/NotificationChannelCompat;
    .locals 2

    new-instance v0, Landroid/app/NotificationChannelCompat;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/NotificationChannelCompat;-><init>(Landroid/app/NotificationChannel;)V

    return-object v0
.end method

.method public static getGroupName(Landroid/app/NotificationChannelCompat;Landroid/app/INotificationManager;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/app/NotificationChannelCompat;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/NotificationChannelCompat;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, p2, p3}, Landroid/app/INotificationManager;->getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v2
.end method

.method public static getNumNotificationChannelsForPackage(Landroid/app/INotificationManager;Ljava/lang/String;IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p0, p1, p2, p3}, Landroid/app/INotificationManager;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$-android_app_NotificationChannelCompat_1545(Landroid/app/NotificationChannelCompat;)Landroid/app/NotificationChannel;
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationChannelCompat;->mChannel:Landroid/app/NotificationChannel;

    return-object v0
.end method

.method public static saveImportance(Landroid/app/NotificationChannelCompat;ILandroid/app/INotificationManager;Ljava/lang/String;I)V
    .locals 3

    iget-object v1, p0, Landroid/app/NotificationChannelCompat;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1, p1}, Landroid/app/NotificationChannel;->setImportance(I)V

    iget-object v1, p0, Landroid/app/NotificationChannelCompat;->mChannel:Landroid/app/NotificationChannel;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->lockFields(I)V

    :try_start_0
    iget-object v1, p0, Landroid/app/NotificationChannelCompat;->mChannel:Landroid/app/NotificationChannel;

    invoke-interface {p2, p3, p4, v1}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public enableLights(Z)V
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationChannelCompat;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    return-void
.end method

.method public enableVibration(Z)V
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationChannelCompat;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/NotificationChannelCompat;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    iget-object v0, p0, Landroid/app/NotificationChannelCompat;->mChannel:Landroid/app/NotificationChannel;

    check-cast p1, Landroid/app/NotificationChannelCompat;

    iget-object v1, p1, Landroid/app/NotificationChannelCompat;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationChannelCompat;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImportance()I
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationChannelCompat;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationChannelCompat;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationChannelCompat;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->hashCode()I

    move-result v0

    return v0
.end method
