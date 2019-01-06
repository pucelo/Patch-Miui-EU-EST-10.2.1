.class public Lmiui/contentcatcher/sdk/ContentCatcherManager;
.super Ljava/lang/Object;
.source "ContentCatcherManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/contentcatcher/sdk/ContentCatcherManager$1;
    }
.end annotation


# static fields
.field private static final CONTENTCAP_SERVICE_NAME:Ljava/lang/String; = "miui.contentcatcher.ContentCatcherService"

.field private static DEBUG:Z = false

.field public static final MI_LIFE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lmiui/contentcatcher/sdk/ContentCatcherManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "ContentCatcherManager.class"
    .end annotation
.end field


# instance fields
.field mDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private volatile mService:Lmiui/contentcatcher/IContentCatcherService;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/contentcatcher/sdk/ContentCatcherManager;)Lmiui/contentcatcher/IContentCatcherService;
    .registers 2

    iget-object v0, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mService:Lmiui/contentcatcher/IContentCatcherService;

    return-object v0
.end method

.method static synthetic -set0(Lmiui/contentcatcher/sdk/ContentCatcherManager;Lmiui/contentcatcher/IContentCatcherService;)Lmiui/contentcatcher/IContentCatcherService;
    .registers 2

    iput-object p1, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mService:Lmiui/contentcatcher/IContentCatcherService;

    return-object p1
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->sInstance:Lmiui/contentcatcher/sdk/ContentCatcherManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/contentcatcher/sdk/ContentCatcherManager$1;

    invoke-direct {v0, p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager$1;-><init>(Lmiui/contentcatcher/sdk/ContentCatcherManager;)V

    iput-object v0, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method public static getInstance()Lmiui/contentcatcher/sdk/ContentCatcherManager;
    .registers 2

    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->sInstance:Lmiui/contentcatcher/sdk/ContentCatcherManager;

    if-nez v0, :cond_13

    const-class v1, Lmiui/contentcatcher/sdk/ContentCatcherManager;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->sInstance:Lmiui/contentcatcher/sdk/ContentCatcherManager;

    if-nez v0, :cond_12

    new-instance v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;

    invoke-direct {v0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;-><init>()V

    sput-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->sInstance:Lmiui/contentcatcher/sdk/ContentCatcherManager;
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit v1

    :cond_13
    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->sInstance:Lmiui/contentcatcher/sdk/ContentCatcherManager;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public decorateContent(Lmiui/contentcatcher/sdk/ClientToken;Lmiui/contentcatcher/sdk/Token;Lmiui/contentcatcher/sdk/DecorateContentParam;)V
    .registers 9

    sget-boolean v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v2, :cond_28

    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "decorateContent listenerToken "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", targetInjectorToken "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    :try_start_28
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-interface {v1, p1, p2, p3}, Lmiui/contentcatcher/IContentCatcherService;->decorateContent(Lmiui/contentcatcher/sdk/ClientToken;Lmiui/contentcatcher/sdk/Token;Lmiui/contentcatcher/sdk/DecorateContentParam;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_31} :catch_32

    :cond_31
    :goto_31
    return-void

    :catch_32
    move-exception v0

    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "decorateContent error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method protected getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;
    .registers 5

    iget-object v1, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mService:Lmiui/contentcatcher/IContentCatcherService;

    if-nez v1, :cond_27

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mService:Lmiui/contentcatcher/IContentCatcherService;

    if-nez v1, :cond_26

    const-string/jumbo v1, "miui.contentcatcher.ContentCatcherService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lmiui/contentcatcher/IContentCatcherService$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v1

    iput-object v1, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mService:Lmiui/contentcatcher/IContentCatcherService;

    iget-object v1, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mService:Lmiui/contentcatcher/IContentCatcherService;
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_2f

    if-eqz v1, :cond_32

    :try_start_1a
    iget-object v1, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mService:Lmiui/contentcatcher/IContentCatcherService;

    invoke-interface {v1}, Lmiui/contentcatcher/IContentCatcherService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_26} :catch_2a
    .catchall {:try_start_1a .. :try_end_26} :catchall_2f

    :cond_26
    :goto_26
    monitor-exit p0

    :cond_27
    iget-object v1, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mService:Lmiui/contentcatcher/IContentCatcherService;

    return-object v1

    :catch_2a
    move-exception v0

    :try_start_2b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_26

    :catchall_2f
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_32
    :try_start_32
    sget-object v1, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to get ContentCatcherService."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_2f

    goto :goto_26
.end method

.method public getPageConfig(Lmiui/contentcatcher/sdk/Token;)Lmiui/contentcatcher/sdk/data/PageConfig;
    .registers 8

    const/4 v5, 0x0

    sget-boolean v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v2, :cond_1e

    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPageInjectorInfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    :try_start_1e
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v1

    if-eqz v1, :cond_47

    invoke-interface {v1, p1}, Lmiui/contentcatcher/IContentCatcherService;->getPageConfig(Lmiui/contentcatcher/sdk/Token;)Lmiui/contentcatcher/sdk/data/PageConfig;
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_27} :catch_29

    move-result-object v2

    return-object v2

    :catch_29
    move-exception v0

    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isPageInterested error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    return-object v5
.end method

.method public onContentCatched(Lmiui/contentcatcher/sdk/Content;)V
    .registers 7

    sget-boolean v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v2, :cond_1d

    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onContentCatched: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    :try_start_1d
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-interface {v1, p1}, Lmiui/contentcatcher/IContentCatcherService;->onContentCatched(Lmiui/contentcatcher/sdk/Content;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_26} :catch_27

    :cond_26
    :goto_26
    return-void

    :catch_27
    move-exception v0

    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onContentCatched error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method public registerContentInjector(Lmiui/contentcatcher/sdk/Token;Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback;)V
    .registers 8

    sget-boolean v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v2, :cond_1d

    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerContentInjector "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    :try_start_1d
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-interface {v1, p1, p2}, Lmiui/contentcatcher/IContentCatcherService;->registerContentInjector(Lmiui/contentcatcher/sdk/Token;Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_26} :catch_27

    :cond_26
    :goto_26
    return-void

    :catch_27
    move-exception v0

    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerContentInjector error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method public registerContentListener(Lmiui/contentcatcher/sdk/ClientToken;Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;)V
    .registers 8

    sget-boolean v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v2, :cond_c

    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "registerContentListener"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-interface {v1, p1, p2}, Lmiui/contentcatcher/IContentCatcherService;->registerContentListener(Lmiui/contentcatcher/sdk/ClientToken;Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_16

    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerContentListener error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public unregisterContentInjector(Lmiui/contentcatcher/sdk/Token;)V
    .registers 7

    sget-boolean v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v2, :cond_c

    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unregisterContentInjector"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-interface {v1, p1}, Lmiui/contentcatcher/IContentCatcherService;->unregisterContentInjector(Lmiui/contentcatcher/sdk/Token;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_16

    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterContentInjector error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public unregisterContentListener(Lmiui/contentcatcher/sdk/ClientToken;)V
    .registers 7

    sget-boolean v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v2, :cond_c

    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unregisterContentListener"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-interface {v1, p1}, Lmiui/contentcatcher/IContentCatcherService;->unregisterContentListener(Lmiui/contentcatcher/sdk/ClientToken;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_16

    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterContentListener error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public updateClientConfig(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 9

    sget-boolean v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v2, :cond_33

    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateClientConfig target "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " jobTag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " enable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    :try_start_33
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v1

    if-eqz v1, :cond_3c

    invoke-interface {v1, p1, p2, p3}, Lmiui/contentcatcher/IContentCatcherService;->updateClientConfig(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_3c} :catch_3e

    :cond_3c
    :goto_3c
    const/4 v2, 0x1

    return v2

    :catch_3e
    move-exception v0

    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateClientConfig error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method

.method public updateConfig([Ljava/lang/String;)Z
    .registers 7

    sget-boolean v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v2, :cond_c

    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateConfig"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-interface {v1, p1}, Lmiui/contentcatcher/IContentCatcherService;->updateConfig([Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    :cond_15
    :goto_15
    const/4 v2, 0x1

    return v2

    :catch_17
    move-exception v0

    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateConfig error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public updateJobValidity(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9

    sget-boolean v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v2, :cond_33

    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateJobValidity jobTag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " packageName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " enable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    :try_start_33
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v1

    if-eqz v1, :cond_3c

    invoke-interface {v1, p1, p2, p3}, Lmiui/contentcatcher/IContentCatcherService;->updateJobValidity(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_3c} :catch_3d

    :cond_3c
    :goto_3c
    return-void

    :catch_3d
    move-exception v0

    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateJobValidity error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method
