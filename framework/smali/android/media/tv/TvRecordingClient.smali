.class public Landroid/media/tv/TvRecordingClient;
.super Ljava/lang/Object;
.source "TvRecordingClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvRecordingClient$MySessionCallback;,
        Landroid/media/tv/TvRecordingClient$RecordingCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "TvRecordingClient"


# instance fields
.field private final mCallback:Landroid/media/tv/TvRecordingClient$RecordingCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mIsRecordingStarted:Z

.field private mIsTuned:Z

.field private final mPendingAppPrivateCommands:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSession:Landroid/media/tv/TvInputManager$Session;

.field private mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

.field private final mTvInputManager:Landroid/media/tv/TvInputManager;


# direct methods
.method static synthetic -get0(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mCallback:Landroid/media/tv/TvRecordingClient$RecordingCallback;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/tv/TvRecordingClient;)Ljava/util/Queue;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mPendingAppPrivateCommands:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic -get2(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvInputManager$Session;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    return-object v0
.end method

.method static synthetic -get3(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$MySessionCallback;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    return-object v0
.end method

.method static synthetic -set0(Landroid/media/tv/TvRecordingClient;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    return p1
.end method

.method static synthetic -set1(Landroid/media/tv/TvRecordingClient;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/TvRecordingClient;->mIsTuned:Z

    return p1
.end method

.method static synthetic -set2(Landroid/media/tv/TvRecordingClient;Landroid/media/tv/TvInputManager$Session;)Landroid/media/tv/TvInputManager$Session;
    .registers 2

    iput-object p1, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    return-object p1
.end method

.method static synthetic -set3(Landroid/media/tv/TvRecordingClient;Landroid/media/tv/TvRecordingClient$MySessionCallback;)Landroid/media/tv/TvRecordingClient$MySessionCallback;
    .registers 2

    iput-object p1, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/media/tv/TvRecordingClient$RecordingCallback;Landroid/os/Handler;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvRecordingClient;->mPendingAppPrivateCommands:Ljava/util/Queue;

    iput-object p3, p0, Landroid/media/tv/TvRecordingClient;->mCallback:Landroid/media/tv/TvRecordingClient$RecordingCallback;

    if-nez p4, :cond_17

    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_17
    iput-object p4, p0, Landroid/media/tv/TvRecordingClient;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "tv_input"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager;

    iput-object v0, p0, Landroid/media/tv/TvRecordingClient;->mTvInputManager:Landroid/media/tv/TvInputManager;

    return-void
.end method

.method private resetInternal()V
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mPendingAppPrivateCommands:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->release()V

    iput-object v1, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    :cond_13
    return-void
.end method


# virtual methods
.method public release()V
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/TvRecordingClient;->resetInternal()V

    return-void
.end method

.method public sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "action cannot be null or an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$Session;->sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_18
    return-void

    :cond_19
    const-string/jumbo v0, "TvRecordingClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendAppPrivateCommand - session not yet created (action \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" pending)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mPendingAppPrivateCommands:Ljava/util/Queue;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_18
.end method

.method public startRecording(Landroid/net/Uri;)V
    .registers 4

    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsTuned:Z

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "startRecording failed - not yet tuned"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->startRecording(Landroid/net/Uri;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    :cond_19
    return-void
.end method

.method public stopRecording()V
    .registers 3

    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    if-nez v0, :cond_d

    const-string/jumbo v0, "TvRecordingClient"

    const-string/jumbo v1, "stopRecording failed - recording not yet started"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->stopRecording()V

    :cond_16
    return-void
.end method

.method public tune(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/tv/TvRecordingClient;->tune(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method public tune(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputId cannot be null or an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "tune failed - recording already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    iget-object v0, v0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p2, p3}, Landroid/media/tv/TvInputManager$Session;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    :cond_33
    :goto_33
    return-void

    :cond_34
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    iput-object p2, v0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    iput-object p3, v0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mConnectionParams:Landroid/os/Bundle;

    goto :goto_33

    :cond_3d
    invoke-direct {p0}, Landroid/media/tv/TvRecordingClient;->resetInternal()V

    new-instance v0, Landroid/media/tv/TvRecordingClient$MySessionCallback;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/tv/TvRecordingClient$MySessionCallback;-><init>(Landroid/media/tv/TvRecordingClient;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mTvInputManager:Landroid/media/tv/TvInputManager;

    if-eqz v0, :cond_33

    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mTvInputManager:Landroid/media/tv/TvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    iget-object v2, p0, Landroid/media/tv/TvRecordingClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/tv/TvInputManager;->createRecordingSession(Ljava/lang/String;Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    goto :goto_33
.end method
