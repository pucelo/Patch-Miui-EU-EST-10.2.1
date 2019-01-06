.class Lcom/android/internal/os/WebViewZygoteInit;
.super Ljava/lang/Object;
.source "WebViewZygoteInit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteConnection;,
        Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteServer;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WebViewZygoteInit"

.field private static sServer:Lcom/android/internal/os/ZygoteServer;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x0

    new-instance v3, Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteServer;

    invoke-direct {v3, v4}, Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteServer;-><init>(Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteServer;)V

    sput-object v3, Lcom/android/internal/os/WebViewZygoteInit;->sServer:Lcom/android/internal/os/ZygoteServer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_a
    invoke-static {v3, v4}, Landroid/system/Os;->setpgid(II)V
    :try_end_d
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_d} :catch_2f

    :try_start_d
    sget-object v3, Lcom/android/internal/os/WebViewZygoteInit;->sServer:Lcom/android/internal/os/ZygoteServer;

    const-string/jumbo v4, "webview_zygote"

    invoke-virtual {v3, v4}, Lcom/android/internal/os/ZygoteServer;->registerServerSocket(Ljava/lang/String;)V

    sget-object v3, Lcom/android/internal/os/WebViewZygoteInit;->sServer:Lcom/android/internal/os/ZygoteServer;

    const-string/jumbo v4, ","

    sget-object v5, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/os/ZygoteServer;->runSelectLoop(Ljava/lang/String;)Ljava/lang/Runnable;
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_23} :catch_39
    .catchall {:try_start_d .. :try_end_23} :catchall_44

    move-result-object v0

    sget-object v3, Lcom/android/internal/os/WebViewZygoteInit;->sServer:Lcom/android/internal/os/ZygoteServer;

    invoke-virtual {v3}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    if-eqz v0, :cond_2e

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2e
    return-void

    :catch_2f
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Failed to setpgid(0,0)"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_39
    move-exception v1

    :try_start_3a
    const-string/jumbo v3, "WebViewZygoteInit"

    const-string/jumbo v4, "Fatal exception:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v1
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_44

    :catchall_44
    move-exception v3

    sget-object v4, Lcom/android/internal/os/WebViewZygoteInit;->sServer:Lcom/android/internal/os/ZygoteServer;

    invoke-virtual {v4}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    throw v3
.end method
