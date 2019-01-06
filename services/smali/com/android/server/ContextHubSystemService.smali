.class Lcom/android/server/ContextHubSystemService;
.super Lcom/android/server/SystemService;
.source "ContextHubSystemService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContextHubSystemService"


# instance fields
.field private mContextHubService:Lcom/android/server/location/ContextHubService;

.field private mInit:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$Lambda$Ganck_s9Kl5o2K6eVDoQTKLc-6g;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Lcom/android/server/-$Lambda$Ganck_s9Kl5o2K6eVDoQTKLc-6g;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v2, "Init ContextHubSystemService"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ContextHubSystemService;->mInit:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_server_ContextHubSystemService_1237(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/android/server/location/ContextHubService;

    invoke-direct {v0, p1}, Lcom/android/server/location/ContextHubService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ContextHubSystemService;->mContextHubService:Lcom/android/server/location/ContextHubService;

    return-void
.end method

.method public onBootPhase(I)V
    .registers 4

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_20

    const-string/jumbo v0, "ContextHubSystemService"

    const-string/jumbo v1, "onBootPhase: PHASE_SYSTEM_SERVICES_READY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/ContextHubSystemService;->mInit:Ljava/util/concurrent/Future;

    const-string/jumbo v1, "Wait for ContextHubSystemService init"

    invoke-static {v0, v1}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ContextHubSystemService;->mInit:Ljava/util/concurrent/Future;

    const-string/jumbo v0, "contexthub"

    iget-object v1, p0, Lcom/android/server/ContextHubSystemService;->mContextHubService:Lcom/android/server/location/ContextHubService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ContextHubSystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_20
    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method
