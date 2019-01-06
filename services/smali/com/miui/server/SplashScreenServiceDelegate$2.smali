.class Lcom/miui/server/SplashScreenServiceDelegate$2;
.super Ljava/lang/Object;
.source "SplashScreenServiceDelegate.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/SplashScreenServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/SplashScreenServiceDelegate;


# direct methods
.method constructor <init>(Lcom/miui/server/SplashScreenServiceDelegate;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private asyncSetSplashPackageCheckListener()V
    .registers 3

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/server/SplashScreenServiceDelegate$2$1;

    invoke-direct {v1, p0}, Lcom/miui/server/SplashScreenServiceDelegate$2$1;-><init>(Lcom/miui/server/SplashScreenServiceDelegate$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string/jumbo v2, "SplashScreenService connected!"

    invoke-static {v1, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->-wrap7(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-static {p2}, Lcom/miui/server/ISplashScreenService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/server/ISplashScreenService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->-set1(Lcom/miui/server/SplashScreenServiceDelegate;Lcom/miui/server/ISplashScreenService;)Lcom/miui/server/ISplashScreenService;

    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/miui/server/SplashScreenServiceDelegate;->-set2(Lcom/miui/server/SplashScreenServiceDelegate;J)J

    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-static {v1, v4}, Lcom/miui/server/SplashScreenServiceDelegate;->-set0(Lcom/miui/server/SplashScreenServiceDelegate;I)I

    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-static {v1}, Lcom/miui/server/SplashScreenServiceDelegate;->-get1(Lcom/miui/server/SplashScreenServiceDelegate;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :try_start_2a
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-static {v1}, Lcom/miui/server/SplashScreenServiceDelegate;->-get4(Lcom/miui/server/SplashScreenServiceDelegate;)Lcom/miui/server/ISplashScreenService;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/server/ISplashScreenService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-static {v2}, Lcom/miui/server/SplashScreenServiceDelegate;->-get0(Lcom/miui/server/SplashScreenServiceDelegate;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3e} :catch_42

    :goto_3e
    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate$2;->asyncSetSplashPackageCheckListener()V

    return-void

    :catch_42
    move-exception v0

    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string/jumbo v2, "linkToDeath exception"

    invoke-static {v1, v2, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->-wrap5(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3e
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string/jumbo v1, "SplashScreenService disconnected!"

    invoke-static {v0, v1}, Lcom/miui/server/SplashScreenServiceDelegate;->-wrap7(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/server/SplashScreenServiceDelegate;->-set1(Lcom/miui/server/SplashScreenServiceDelegate;Lcom/miui/server/ISplashScreenService;)Lcom/miui/server/ISplashScreenService;

    return-void
.end method
