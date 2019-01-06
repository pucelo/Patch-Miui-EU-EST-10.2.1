.class Lcom/android/systemui/qs/tiles/ScreenShotTile$1;
.super Ljava/lang/Object;
.source "ScreenShotTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/ScreenShotTile;->handleClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ScreenShotTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ScreenShotTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenShotTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenShotTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenShotTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenShotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ScreenShotTile;->-get2(Lcom/android/systemui/qs/tiles/ScreenShotTile;)Lcom/android/systemui/qs/QSHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->isQSFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenShotTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenShotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ScreenShotTile;->-get0(Lcom/android/systemui/qs/tiles/ScreenShotTile;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CAPTURE_SCREENSHOT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenShotTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenShotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ScreenShotTile;->-get1(Lcom/android/systemui/qs/tiles/ScreenShotTile;)Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
