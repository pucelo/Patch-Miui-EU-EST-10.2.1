.class Lcom/android/server/BootReceiver$1;
.super Ljava/lang/Thread;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BootReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BootReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    iput-object p2, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    :try_start_0
    iget-object v3, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    iget-object v4, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/android/server/BootReceiver;->-wrap2(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_21

    :goto_7
    const/4 v2, 0x0

    :try_start_8
    const-string/jumbo v3, "package"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->isOnlyCoreApps()Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_37
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_2c

    move-result v2

    :goto_17
    if-nez v2, :cond_20

    :try_start_19
    iget-object v3, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    iget-object v4, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/android/server/BootReceiver;->-wrap3(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_20} :catch_2c

    :cond_20
    :goto_20
    return-void

    :catch_21
    move-exception v1

    const-string/jumbo v3, "BootReceiver"

    const-string/jumbo v4, "Can\'t log boot events"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :catch_2c
    move-exception v1

    const-string/jumbo v3, "BootReceiver"

    const-string/jumbo v4, "Can\'t remove old update packages"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    :catch_37
    move-exception v0

    goto :goto_17
.end method
