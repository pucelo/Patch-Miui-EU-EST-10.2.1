.class Lcom/android/server/wallpaper/WallpaperManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string/jumbo v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_12
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mShuttingDown:Z
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_19

    monitor-exit v1

    :cond_18
    return-void

    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method
