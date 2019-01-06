.class Landroid/telephony/MbmsDownloadSession$3;
.super Ljava/lang/Object;
.source "MbmsDownloadSession.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/MbmsDownloadSession;->bindAndInitialize()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/MbmsDownloadSession;


# direct methods
.method constructor <init>(Landroid/telephony/MbmsDownloadSession;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 11

    const/4 v7, 0x0

    invoke-static {p2}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    move-result-object v0

    :try_start_5
    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-static {v4}, Landroid/telephony/MbmsDownloadSession;->-get4(Landroid/telephony/MbmsDownloadSession;)I

    move-result v4

    iget-object v5, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-static {v5}, Landroid/telephony/MbmsDownloadSession;->-get2(Landroid/telephony/MbmsDownloadSession;)Landroid/telephony/mbms/InternalDownloadSessionCallback;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->initialize(ILandroid/telephony/mbms/IMbmsDownloadSessionCallback;)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_14} :catch_45
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_14} :catch_27

    move-result v3

    if-eqz v3, :cond_58

    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    const-string/jumbo v5, "Error returned during initialization"

    invoke-static {v4, v3, v5}, Landroid/telephony/MbmsDownloadSession;->-wrap0(Landroid/telephony/MbmsDownloadSession;ILjava/lang/String;)V

    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->-get5()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catch_27
    move-exception v2

    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Runtime exception during initialization"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x67

    invoke-static {v4, v6, v5}, Landroid/telephony/MbmsDownloadSession;->-wrap0(Landroid/telephony/MbmsDownloadSession;ILjava/lang/String;)V

    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->-get5()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catch_45
    move-exception v1

    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Service died before initialization"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->-get5()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_58
    :try_start_58
    invoke-interface {v0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-static {v5}, Landroid/telephony/MbmsDownloadSession;->-get1(Landroid/telephony/MbmsDownloadSession;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_66} :catch_70

    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-static {v4}, Landroid/telephony/MbmsDownloadSession;->-get3(Landroid/telephony/MbmsDownloadSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :catch_70
    move-exception v1

    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    const-string/jumbo v5, "Middleware lost during initialization"

    const/4 v6, 0x3

    invoke-static {v4, v6, v5}, Landroid/telephony/MbmsDownloadSession;->-wrap0(Landroid/telephony/MbmsDownloadSession;ILjava/lang/String;)V

    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->-get5()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->-get5()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-static {v0}, Landroid/telephony/MbmsDownloadSession;->-get3(Landroid/telephony/MbmsDownloadSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
