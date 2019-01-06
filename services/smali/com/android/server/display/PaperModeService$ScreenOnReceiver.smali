.class Lcom/android/server/display/PaperModeService$ScreenOnReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PaperModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/PaperModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenOnReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/PaperModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/PaperModeService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/PaperModeService$ScreenOnReceiver;->this$0:Lcom/android/server/display/PaperModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/PaperModeService;Lcom/android/server/display/PaperModeService$ScreenOnReceiver;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/PaperModeService$ScreenOnReceiver;-><init>(Lcom/android/server/display/PaperModeService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/PaperModeService$ScreenOnReceiver;->this$0:Lcom/android/server/display/PaperModeService;

    invoke-static {v0}, Lcom/android/server/display/PaperModeService;->-get2(Lcom/android/server/display/PaperModeService;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/display/PaperModeService$ScreenOnReceiver;->this$0:Lcom/android/server/display/PaperModeService;

    invoke-static {v0}, Lcom/android/server/display/PaperModeService;->-get1(Lcom/android/server/display/PaperModeService;)Z

    move-result v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$ScreenEffect;->setScreenPaperMode(Z)V

    :cond_11
    return-void
.end method
