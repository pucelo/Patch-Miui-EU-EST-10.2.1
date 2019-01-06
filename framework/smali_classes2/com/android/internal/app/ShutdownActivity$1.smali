.class Lcom/android/internal/app/ShutdownActivity$1;
.super Ljava/lang/Thread;
.source "ShutdownActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ShutdownActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ShutdownActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ShutdownActivity;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/app/ShutdownActivity$1;->this$0:Lcom/android/internal/app/ShutdownActivity;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v2, 0x0

    const-string/jumbo v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    :try_start_c
    iget-object v3, p0, Lcom/android/internal/app/ShutdownActivity$1;->this$0:Lcom/android/internal/app/ShutdownActivity;

    invoke-static {v3}, Lcom/android/internal/app/ShutdownActivity;->-get1(Lcom/android/internal/app/ShutdownActivity;)Z

    move-result v3

    if-eqz v3, :cond_20

    iget-object v2, p0, Lcom/android/internal/app/ShutdownActivity$1;->this$0:Lcom/android/internal/app/ShutdownActivity;

    invoke-static {v2}, Lcom/android/internal/app/ShutdownActivity;->-get0(Lcom/android/internal/app/ShutdownActivity;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V

    :goto_1f
    return-void

    :cond_20
    iget-object v3, p0, Lcom/android/internal/app/ShutdownActivity$1;->this$0:Lcom/android/internal/app/ShutdownActivity;

    invoke-static {v3}, Lcom/android/internal/app/ShutdownActivity;->-get0(Lcom/android/internal/app/ShutdownActivity;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/internal/app/ShutdownActivity$1;->this$0:Lcom/android/internal/app/ShutdownActivity;

    invoke-static {v4}, Lcom/android/internal/app/ShutdownActivity;->-get2(Lcom/android/internal/app/ShutdownActivity;)Z

    move-result v4

    if-eqz v4, :cond_31

    const-string/jumbo v2, "userrequested"

    :cond_31
    const/4 v4, 0x0

    invoke-interface {v1, v3, v2, v4}, Landroid/os/IPowerManager;->shutdown(ZLjava/lang/String;Z)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_35} :catch_36

    goto :goto_1f

    :catch_36
    move-exception v0

    goto :goto_1f
.end method
