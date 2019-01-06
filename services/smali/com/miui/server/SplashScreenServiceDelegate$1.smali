.class Lcom/miui/server/SplashScreenServiceDelegate$1;
.super Landroid/content/BroadcastReceiver;
.source "SplashScreenServiceDelegate.java"


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

    iput-object p1, p0, Lcom/miui/server/SplashScreenServiceDelegate$1;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const/4 v3, 0x1

    if-nez p2, :cond_4

    return-void

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$1;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string/jumbo v2, "Boot completed, delay to bind SplashScreenService"

    invoke-static {v1, v2, v3}, Lcom/miui/server/SplashScreenServiceDelegate;->-wrap6(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$1;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-static {v1}, Lcom/miui/server/SplashScreenServiceDelegate;->-wrap2(Lcom/miui/server/SplashScreenServiceDelegate;)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    const-string/jumbo v1, "miui.intent.action.ad.DEBUG_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$1;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string/jumbo v2, "Debug On"

    invoke-static {v1, v2, v3}, Lcom/miui/server/SplashScreenServiceDelegate;->-wrap6(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;Z)V

    invoke-static {v3}, Lcom/miui/server/SplashScreenServiceDelegate;->-set3(Z)Z

    goto :goto_1e

    :cond_34
    const-string/jumbo v1, "miui.intent.action.ad.DEBUG_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$1;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string/jumbo v2, "Debug Off"

    invoke-static {v1, v2, v3}, Lcom/miui/server/SplashScreenServiceDelegate;->-wrap6(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/miui/server/SplashScreenServiceDelegate;->-set3(Z)Z

    goto :goto_1e
.end method
