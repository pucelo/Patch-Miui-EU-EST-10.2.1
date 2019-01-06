.class Lcom/android/server/VibratorServiceInjector$ProcessObserver;
.super Landroid/app/IProcessObserver$Stub;
.source "VibratorServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessObserver"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorServiceInjector$ProcessObserver;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/VibratorServiceInjector$ProcessObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 6

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, v0, Landroid/os/Message;->arg1:I

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->-get6()Lcom/android/server/VibratorServiceInjector$WorkerHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/VibratorServiceInjector$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onProcessDied(II)V
    .registers 6

    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->-get1()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->-get0()Ljava/util/Set;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method
