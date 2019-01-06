.class public Lcom/miui/voiptalk/service/MiuiVoipManager;
.super Ljava/lang/Object;
.source "MiuiVoipManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/voiptalk/service/MiuiVoipManager$1;,
        Lcom/miui/voiptalk/service/MiuiVoipManager$VoIPStatusReceiver;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/miui/voiptalk/service/MiuiVoipManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHasInit:Z

.field private mMiuiVoipService:Lcom/miui/voiptalk/service/IMiuiVoipService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mVoIPStatusReceiver:Lcom/miui/voiptalk/service/MiuiVoipManager$VoIPStatusReceiver;


# direct methods
.method static synthetic -set0(Lcom/miui/voiptalk/service/MiuiVoipManager;Lcom/miui/voiptalk/service/IMiuiVoipService;)Lcom/miui/voiptalk/service/IMiuiVoipService;
    .locals 0

    iput-object p1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mMiuiVoipService:Lcom/miui/voiptalk/service/IMiuiVoipService;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/voiptalk/service/MiuiVoipManager;->INSTANCE:Lcom/miui/voiptalk/service/MiuiVoipManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/voiptalk/service/MiuiVoipManager$1;

    invoke-direct {v0, p0}, Lcom/miui/voiptalk/service/MiuiVoipManager$1;-><init>(Lcom/miui/voiptalk/service/MiuiVoipManager;)V

    iput-object v0, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mServiceConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mHasInit:Z

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/voiptalk/service/MiuiVoipManager;
    .locals 2

    const-class v1, Lcom/miui/voiptalk/service/MiuiVoipManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/voiptalk/service/MiuiVoipManager;->INSTANCE:Lcom/miui/voiptalk/service/MiuiVoipManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/voiptalk/service/MiuiVoipManager;

    invoke-direct {v0, p0}, Lcom/miui/voiptalk/service/MiuiVoipManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/voiptalk/service/MiuiVoipManager;->INSTANCE:Lcom/miui/voiptalk/service/MiuiVoipManager;

    :cond_0
    sget-object v0, Lcom/miui/voiptalk/service/MiuiVoipManager;->INSTANCE:Lcom/miui/voiptalk/service/MiuiVoipManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private registerVoIPStatusReceiver()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mVoIPStatusReceiver:Lcom/miui/voiptalk/service/MiuiVoipManager$VoIPStatusReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/voiptalk/service/MiuiVoipManager$VoIPStatusReceiver;

    invoke-direct {v1, p0, v2}, Lcom/miui/voiptalk/service/MiuiVoipManager$VoIPStatusReceiver;-><init>(Lcom/miui/voiptalk/service/MiuiVoipManager;Lcom/miui/voiptalk/service/MiuiVoipManager$VoIPStatusReceiver;)V

    iput-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mVoIPStatusReceiver:Lcom/miui/voiptalk/service/MiuiVoipManager$VoIPStatusReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.miui.voip.action.ACTIVATE_STATUS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mVoIPStatusReceiver:Lcom/miui/voiptalk/service/MiuiVoipManager$VoIPStatusReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized answerRingingCall()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mMiuiVoipService:Lcom/miui/voiptalk/service/IMiuiVoipService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mMiuiVoipService:Lcom/miui/voiptalk/service/IMiuiVoipService;

    invoke-interface {v1}, Lcom/miui/voiptalk/service/IMiuiVoipService;->answerRingingCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v1, "MiuiVoipManager"

    const-string/jumbo v2, "MiuiVoipService is Null !"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "MiuiVoipManager"

    const-string/jumbo v2, "answerRingingCall"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized endCall()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mMiuiVoipService:Lcom/miui/voiptalk/service/IMiuiVoipService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mMiuiVoipService:Lcom/miui/voiptalk/service/IMiuiVoipService;

    invoke-interface {v1}, Lcom/miui/voiptalk/service/IMiuiVoipService;->endCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v1, "MiuiVoipManager"

    const-string/jumbo v2, "MiuiVoipService is Null !"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "MiuiVoipManager"

    const-string/jumbo v2, "endCall"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getCallBaseTime()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mMiuiVoipService:Lcom/miui/voiptalk/service/IMiuiVoipService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mMiuiVoipService:Lcom/miui/voiptalk/service/IMiuiVoipService;

    invoke-interface {v1}, Lcom/miui/voiptalk/service/IMiuiVoipService;->getCallBaseTime()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit p0

    return-wide v2

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "MiuiVoipManager"

    const-string/jumbo v2, "getCallBaseTime"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    const-wide/16 v2, 0x0

    monitor-exit p0

    return-wide v2

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getCallState()I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mMiuiVoipService:Lcom/miui/voiptalk/service/IMiuiVoipService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mMiuiVoipService:Lcom/miui/voiptalk/service/IMiuiVoipService;

    invoke-interface {v1}, Lcom/miui/voiptalk/service/IMiuiVoipService;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    const-string/jumbo v1, "MiuiVoipManager"

    const-string/jumbo v2, "MiuiVoipService is Null !"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "MiuiVoipManager"

    const-string/jumbo v2, "getCallState"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getExtraCallState()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mMiuiVoipService:Lcom/miui/voiptalk/service/IMiuiVoipService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mMiuiVoipService:Lcom/miui/voiptalk/service/IMiuiVoipService;

    invoke-interface {v1}, Lcom/miui/voiptalk/service/IMiuiVoipService;->getExtraCallState()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "MiuiVoipManager"

    const-string/jumbo v2, "getExtraCallState"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-string/jumbo v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public init()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mHasInit:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$MiuiVoip;->isVoipEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.voip.REMOTE_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.miui.voip"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v3, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mHasInit:Z

    const-string/jumbo v1, "MiuiVoipManager"

    const-string/jumbo v2, "init success"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/voiptalk/service/MiuiVoipManager;->registerVoIPStatusReceiver()V

    goto :goto_0
.end method

.method public declared-synchronized isVideoCall()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mMiuiVoipService:Lcom/miui/voiptalk/service/IMiuiVoipService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mMiuiVoipService:Lcom/miui/voiptalk/service/IMiuiVoipService;

    invoke-interface {v1}, Lcom/miui/voiptalk/service/IMiuiVoipService;->isVideoCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "MiuiVoipManager"

    const-string/jumbo v2, "isVideoCall"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isVoipCallUiOnBack()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mMiuiVoipService:Lcom/miui/voiptalk/service/IMiuiVoipService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mMiuiVoipService:Lcom/miui/voiptalk/service/IMiuiVoipService;

    invoke-interface {v1}, Lcom/miui/voiptalk/service/IMiuiVoipService;->isVoipCallUiOnBack()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "MiuiVoipManager"

    const-string/jumbo v2, "isVoipCallUiOnBack"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
