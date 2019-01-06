.class final Lcom/android/server/UiModeManagerService$7;
.super Landroid/database/ContentObserver;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/UiModeManagerService;->registUIModeScaleChangeObserver(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$lock:Ljava/lang/Object;

.field final synthetic val$service:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/android/server/UiModeManagerService;Landroid/content/Context;Ljava/lang/Object;)V
    .registers 5

    iput-object p2, p0, Lcom/android/server/UiModeManagerService$7;->val$service:Lcom/android/server/UiModeManagerService;

    iput-object p3, p0, Lcom/android/server/UiModeManagerService$7;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/UiModeManagerService$7;->val$lock:Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$7;->val$service:Lcom/android/server/UiModeManagerService;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$7;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "ui_mode_scale"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/UiModeManagerService;->-set1(Lcom/android/server/UiModeManagerService;I)I

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$7;->val$lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_16
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$7;->val$service:Lcom/android/server/UiModeManagerService;

    iget-boolean v0, v0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$7;->val$service:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-wrap2(Lcom/android/server/UiModeManagerService;)V
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_23

    :cond_21
    monitor-exit v1

    return-void

    :catchall_23
    move-exception v0

    monitor-exit v1

    throw v0
.end method
