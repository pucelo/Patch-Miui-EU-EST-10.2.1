.class public Lcom/android/server/NsdService$DaemonConnection;
.super Ljava/lang/Object;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DaemonConnection"
.end annotation


# instance fields
.field final mNativeConnector:Lcom/android/server/NativeDaemonConnector;


# direct methods
.method constructor <init>(Lcom/android/server/NsdService$NativeCallbackReceiver;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "mdns"

    const-string/jumbo v4, "mDnsConnector"

    const/16 v3, 0xa

    const/16 v5, 0x19

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lcom/android/server/NsdService$DaemonConnection;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/NsdService$DaemonConnection;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "mDnsConnector"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public varargs execute([Ljava/lang/Object;)Z
    .registers 6

    const-string/jumbo v1, "NsdService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mdnssd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1e
    iget-object v1, p0, Lcom/android/server/NsdService$DaemonConnection;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "mdnssd"

    invoke-virtual {v1, v2, p1}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_26
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1e .. :try_end_26} :catch_28

    const/4 v1, 0x1

    return v1

    :catch_28
    move-exception v0

    const-string/jumbo v1, "NsdService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to execute mdnssd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public start()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "start-service"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    return-void
.end method

.method public stop()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "stop-service"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    return-void
.end method
