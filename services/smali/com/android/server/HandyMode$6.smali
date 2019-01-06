.class final Lcom/android/server/HandyMode$6;
.super Landroid/content/BroadcastReceiver;
.source "HandyMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/HandyMode;->initialize(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const/4 v2, 0x0

    const-string/jumbo v1, "mode"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/android/server/HandyMode;->sHandyModeInputFilter:Lcom/android/server/MiuiInputFilter;

    invoke-virtual {v1}, Lcom/android/server/MiuiInputFilter;->isInstalled()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-static {}, Lcom/android/server/HandyMode;->getMode()I

    move-result v1

    if-nez v1, :cond_24

    sget-object v1, Lcom/android/server/HandyMode;->sHandyModeUtils:Lmiui/util/HandyModeUtils;

    invoke-virtual {v1}, Lmiui/util/HandyModeUtils;->isEnterDirect()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_24

    invoke-static {v0}, Lcom/android/server/HandyMode;->alertToEnter(I)V

    :cond_23
    :goto_23
    return-void

    :cond_24
    invoke-static {v0}, Lcom/android/server/HandyMode;->changeMode(I)V

    goto :goto_23
.end method
