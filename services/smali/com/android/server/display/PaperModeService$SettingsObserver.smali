.class Lcom/android/server/display/PaperModeService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "PaperModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/PaperModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/PaperModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/PaperModeService;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/display/PaperModeService$SettingsObserver;->this$0:Lcom/android/server/display/PaperModeService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/PaperModeService$SettingsObserver;->this$0:Lcom/android/server/display/PaperModeService;

    invoke-static {v0}, Lcom/android/server/display/PaperModeService;->-wrap1(Lcom/android/server/display/PaperModeService;)V

    invoke-static {}, Lcom/android/server/display/PaperModeService;->-get0()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/display/PaperModeService$SettingsObserver;->this$0:Lcom/android/server/display/PaperModeService;

    invoke-static {v0}, Lcom/android/server/display/PaperModeService;->-wrap0(Lcom/android/server/display/PaperModeService;)V

    :cond_14
    return-void
.end method
