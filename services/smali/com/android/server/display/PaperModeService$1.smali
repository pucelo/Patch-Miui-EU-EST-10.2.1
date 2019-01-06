.class Lcom/android/server/display/PaperModeService$1;
.super Ljava/lang/Object;
.source "PaperModeService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/PaperModeService;->initColorService(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/PaperModeService;


# direct methods
.method constructor <init>(Lcom/android/server/display/PaperModeService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/PaperModeService$1;->this$0:Lcom/android/server/display/PaperModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/PaperModeService$1;->this$0:Lcom/android/server/display/PaperModeService;

    invoke-static {v0}, Lcom/android/server/display/PaperModeService;->-wrap0(Lcom/android/server/display/PaperModeService;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
