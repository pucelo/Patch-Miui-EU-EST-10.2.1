.class Landroid/media/MediaPlayer$ProvisioningThread;
.super Ljava/lang/Thread;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProvisioningThread"
.end annotation


# static fields
.field public static final TIMEOUT_MS:I = 0xea60


# instance fields
.field private drmLock:Ljava/lang/Object;

.field private finished:Z

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private onDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

.field private status:I

.field final synthetic this$0:Landroid/media/MediaPlayer;

.field private urlStr:Ljava/lang/String;

.field private uuid:Ljava/util/UUID;


# direct methods
.method private constructor <init>(Landroid/media/MediaPlayer;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MediaPlayer$ProvisioningThread;->this$0:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$ProvisioningThread;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$ProvisioningThread;-><init>(Landroid/media/MediaPlayer;)V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/media/MediaDrm$ProvisionRequest;Ljava/util/UUID;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$ProvisioningThread;
    .registers 7

    invoke-static {p3}, Landroid/media/MediaPlayer;->-get1(Landroid/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPlayer$ProvisioningThread;->drmLock:Ljava/lang/Object;

    invoke-static {p3}, Landroid/media/MediaPlayer;->-get10(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPlayer$ProvisioningThread;->onDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    iput-object p3, p0, Landroid/media/MediaPlayer$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&signedRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPlayer$ProvisioningThread;->urlStr:Ljava/lang/String;

    iput-object p2, p0, Landroid/media/MediaPlayer$ProvisioningThread;->uuid:Ljava/util/UUID;

    const/4 v0, 0x3

    iput v0, p0, Landroid/media/MediaPlayer$ProvisioningThread;->status:I

    const-string/jumbo v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HandleProvisioninig: Thread is initialised url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaPlayer$ProvisioningThread;->urlStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public run()V
    .registers 13

    const/4 v8, 0x3

    const/4 v11, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_5
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Landroid/media/MediaPlayer$ProvisioningThread;->urlStr:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_d6

    :try_start_12
    const-string/jumbo v6, "POST"

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const v6, 0xea60

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v6, 0xea60

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object v3

    const-string/jumbo v6, "MediaPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "HandleProvisioninig: Thread run: response "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_5d} :catch_a9
    .catchall {:try_start_12 .. :try_end_5d} :catchall_f5

    :try_start_5d
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_d6

    :goto_60
    if-eqz v3, :cond_75

    :try_start_62
    iget-object v6, p0, Landroid/media/MediaPlayer$ProvisioningThread;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v6}, Landroid/media/MediaPlayer;->-get2(Landroid/media/MediaPlayer;)Landroid/media/MediaDrm;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V

    const-string/jumbo v6, "MediaPlayer"

    const-string/jumbo v9, "HandleProvisioninig: Thread run: provideProvisionResponse SUCCEEDED!"

    invoke-static {v6, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_74} :catch_fa

    const/4 v2, 0x1

    :cond_75
    :goto_75
    const/4 v4, 0x0

    iget-object v6, p0, Landroid/media/MediaPlayer$ProvisioningThread;->onDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    if-eqz v6, :cond_120

    iget-object v9, p0, Landroid/media/MediaPlayer$ProvisioningThread;->drmLock:Ljava/lang/Object;

    monitor-enter v9

    if-eqz v2, :cond_8b

    :try_start_7f
    iget-object v6, p0, Landroid/media/MediaPlayer$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v10, p0, Landroid/media/MediaPlayer$ProvisioningThread;->uuid:Ljava/util/UUID;

    invoke-static {v6, v10}, Landroid/media/MediaPlayer;->-wrap0(Landroid/media/MediaPlayer;Ljava/util/UUID;)Z

    move-result v4

    if-eqz v4, :cond_11a

    :goto_89
    iput v7, p0, Landroid/media/MediaPlayer$ProvisioningThread;->status:I

    :cond_8b
    iget-object v6, p0, Landroid/media/MediaPlayer$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/media/MediaPlayer;->-set0(Landroid/media/MediaPlayer;Z)Z

    iget-object v6, p0, Landroid/media/MediaPlayer$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/media/MediaPlayer;->-set1(Landroid/media/MediaPlayer;Z)Z

    if-nez v4, :cond_9e

    iget-object v6, p0, Landroid/media/MediaPlayer$ProvisioningThread;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v6}, Landroid/media/MediaPlayer;->-wrap1(Landroid/media/MediaPlayer;)V
    :try_end_9e
    .catchall {:try_start_7f .. :try_end_9e} :catchall_11d

    :cond_9e
    monitor-exit v9

    iget-object v6, p0, Landroid/media/MediaPlayer$ProvisioningThread;->onDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    iget v7, p0, Landroid/media/MediaPlayer$ProvisioningThread;->status:I

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->notifyClient(I)V

    :cond_a6
    :goto_a6
    iput-boolean v11, p0, Landroid/media/MediaPlayer$ProvisioningThread;->finished:Z

    return-void

    :catch_a9
    move-exception v1

    const/4 v6, 0x1

    :try_start_ab
    iput v6, p0, Landroid/media/MediaPlayer$ProvisioningThread;->status:I

    const-string/jumbo v6, "MediaPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "HandleProvisioninig: Thread run: connect "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " url: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d2
    .catchall {:try_start_ab .. :try_end_d2} :catchall_f5

    :try_start_d2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_d5} :catch_d6

    goto :goto_60

    :catch_d6
    move-exception v1

    iput v11, p0, Landroid/media/MediaPlayer$ProvisioningThread;->status:I

    const-string/jumbo v6, "MediaPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "HandleProvisioninig: Thread run: openConnection "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_60

    :catchall_f5
    move-exception v6

    :try_start_f6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v6
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_fa} :catch_d6

    :catch_fa
    move-exception v1

    const/4 v6, 0x2

    iput v6, p0, Landroid/media/MediaPlayer$ProvisioningThread;->status:I

    const-string/jumbo v6, "MediaPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "HandleProvisioninig: Thread run: provideProvisionResponse "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_75

    :cond_11a
    move v7, v8

    goto/16 :goto_89

    :catchall_11d
    move-exception v6

    monitor-exit v9

    throw v6

    :cond_120
    if-eqz v2, :cond_12f

    iget-object v6, p0, Landroid/media/MediaPlayer$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v9, p0, Landroid/media/MediaPlayer$ProvisioningThread;->uuid:Ljava/util/UUID;

    invoke-static {v6, v9}, Landroid/media/MediaPlayer;->-wrap0(Landroid/media/MediaPlayer;Ljava/util/UUID;)Z

    move-result v4

    if-eqz v4, :cond_142

    move v6, v7

    :goto_12d
    iput v6, p0, Landroid/media/MediaPlayer$ProvisioningThread;->status:I

    :cond_12f
    iget-object v6, p0, Landroid/media/MediaPlayer$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v6, v7}, Landroid/media/MediaPlayer;->-set0(Landroid/media/MediaPlayer;Z)Z

    iget-object v6, p0, Landroid/media/MediaPlayer$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v6, v7}, Landroid/media/MediaPlayer;->-set1(Landroid/media/MediaPlayer;Z)Z

    if-nez v4, :cond_a6

    iget-object v6, p0, Landroid/media/MediaPlayer$ProvisioningThread;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v6}, Landroid/media/MediaPlayer;->-wrap1(Landroid/media/MediaPlayer;)V

    goto/16 :goto_a6

    :cond_142
    move v6, v8

    goto :goto_12d
.end method

.method public status()I
    .registers 2

    iget v0, p0, Landroid/media/MediaPlayer$ProvisioningThread;->status:I

    return v0
.end method
