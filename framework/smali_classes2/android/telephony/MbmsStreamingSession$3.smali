.class Landroid/telephony/MbmsStreamingSession$3;
.super Ljava/lang/Object;
.source "MbmsStreamingSession.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/MbmsStreamingSession;->bindAndInitialize()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/MbmsStreamingSession;


# direct methods
.method constructor <init>(Landroid/telephony/MbmsStreamingSession;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 11

    const/16 v6, 0x67

    const/4 v7, 0x0

    invoke-static {p2}, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    move-result-object v3

    :try_start_7
    iget-object v4, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    invoke-static {v4}, Landroid/telephony/MbmsStreamingSession;->-get1(Landroid/telephony/MbmsStreamingSession;)Landroid/telephony/mbms/InternalStreamingSessionCallback;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    invoke-static {v5}, Landroid/telephony/MbmsStreamingSession;->-get3(Landroid/telephony/MbmsStreamingSession;)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/telephony/mbms/vendor/IMbmsStreamingService;->initialize(Landroid/telephony/mbms/IMbmsStreamingSessionCallback;I)I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_16} :catch_44
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_16} :catch_29

    move-result v2

    if-eqz v2, :cond_5f

    iget-object v4, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    const-string/jumbo v5, "Error returned during initialization"

    invoke-static {v4, v2, v5}, Landroid/telephony/MbmsStreamingSession;->-wrap0(Landroid/telephony/MbmsStreamingSession;ILjava/lang/String;)V

    invoke-static {}, Landroid/telephony/MbmsStreamingSession;->-get4()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catch_29
    move-exception v1

    const-string/jumbo v4, "MbmsStreamingSession"

    const-string/jumbo v5, "Runtime exception during initialization"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v6, v5}, Landroid/telephony/MbmsStreamingSession;->-wrap0(Landroid/telephony/MbmsStreamingSession;ILjava/lang/String;)V

    invoke-static {}, Landroid/telephony/MbmsStreamingSession;->-get4()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catch_44
    move-exception v0

    const-string/jumbo v4, "MbmsStreamingSession"

    const-string/jumbo v5, "Service died before initialization"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v6, v5}, Landroid/telephony/MbmsStreamingSession;->-wrap0(Landroid/telephony/MbmsStreamingSession;ILjava/lang/String;)V

    invoke-static {}, Landroid/telephony/MbmsStreamingSession;->-get4()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_5f
    :try_start_5f
    invoke-interface {v3}, Landroid/telephony/mbms/vendor/IMbmsStreamingService;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    invoke-static {v5}, Landroid/telephony/MbmsStreamingSession;->-get0(Landroid/telephony/MbmsStreamingSession;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_6d} :catch_77

    iget-object v4, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    invoke-static {v4}, Landroid/telephony/MbmsStreamingSession;->-get2(Landroid/telephony/MbmsStreamingSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :catch_77
    move-exception v0

    iget-object v4, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    const-string/jumbo v5, "Middleware lost during initialization"

    const/4 v6, 0x3

    invoke-static {v4, v6, v5}, Landroid/telephony/MbmsStreamingSession;->-wrap0(Landroid/telephony/MbmsStreamingSession;ILjava/lang/String;)V

    invoke-static {}, Landroid/telephony/MbmsStreamingSession;->-get4()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    invoke-static {}, Landroid/telephony/MbmsStreamingSession;->-get4()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    invoke-static {v0}, Landroid/telephony/MbmsStreamingSession;->-get2(Landroid/telephony/MbmsStreamingSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
