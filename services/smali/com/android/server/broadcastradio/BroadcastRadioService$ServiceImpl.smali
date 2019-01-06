.class Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;
.super Landroid/hardware/radio/IRadioService$Stub;
.source "BroadcastRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/broadcastradio/BroadcastRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;


# direct methods
.method private constructor <init>(Lcom/android/server/broadcastradio/BroadcastRadioService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-direct {p0}, Landroid/hardware/radio/IRadioService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/broadcastradio/BroadcastRadioService;Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;-><init>(Lcom/android/server/broadcastradio/BroadcastRadioService;)V

    return-void
.end method

.method private enforcePolicyAccess()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.ACCESS_BROADCAST_RADIO"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "ACCESS_BROADCAST_RADIO permission not granted"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    return-void
.end method


# virtual methods
.method public listModules()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->enforcePolicyAccess()V

    iget-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-static {v0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->-get0(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_a
    iget-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-static {v0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->-get1(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-static {v0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->-get1(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/util/List;
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_41

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    iget-object v2, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    iget-object v3, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-static {v3}, Lcom/android/server/broadcastradio/BroadcastRadioService;->-get2(Lcom/android/server/broadcastradio/BroadcastRadioService;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/android/server/broadcastradio/BroadcastRadioService;->-wrap1(Lcom/android/server/broadcastradio/BroadcastRadioService;J)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/broadcastradio/BroadcastRadioService;->-set0(Lcom/android/server/broadcastradio/BroadcastRadioService;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-static {v0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->-get1(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_44

    new-instance v0, Landroid/os/ParcelableException;

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "couldn\'t load radio modules"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_41
    .catchall {:try_start_1a .. :try_end_41} :catchall_41

    :catchall_41
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_44
    :try_start_44
    iget-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-static {v0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->-get1(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/util/List;
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_41

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public openTuner(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;
    .registers 14

    invoke-direct {p0}, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->enforcePolicyAccess()V

    if-nez p4, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Callback must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-static {v0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->-get0(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    :try_start_15
    iget-object v1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    iget-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-static {v0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->-get2(Lcom/android/server/broadcastradio/BroadcastRadioService;)J

    move-result-wide v2

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Lcom/android/server/broadcastradio/BroadcastRadioService;->-wrap0(Lcom/android/server/broadcastradio/BroadcastRadioService;JILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Lcom/android/server/broadcastradio/Tuner;
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_27

    move-result-object v0

    monitor-exit v8

    return-object v0

    :catchall_27
    move-exception v0

    monitor-exit v8

    throw v0
.end method
