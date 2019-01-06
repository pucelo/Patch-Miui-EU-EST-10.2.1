.class Lcom/android/server/wm/WindowManagerService$7;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;->updateTalkbackWatermark(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;

.field final synthetic val$talkbackMode:Z


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$7;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean p2, p0, Lcom/android/server/wm/WindowManagerService$7;->val$talkbackMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$7;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "talkback_watermark_enable"

    invoke-static {v3, v4, v5}, Landroid/provider/MiuiSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$7;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v4

    :try_start_15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$7;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_6e

    :try_start_1d
    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService$7;->val$talkbackMode:Z

    if-eqz v3, :cond_51

    move v1, v2

    :goto_22
    if-eqz v1, :cond_53

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$7;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTalkbackWatermark:Lcom/android/server/wm/TalkbackWatermark;

    if-nez v3, :cond_3f

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$7;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$7;->this$0:Lcom/android/server/wm/WindowManagerService;

    new-instance v5, Lcom/android/server/wm/TalkbackWatermark;

    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$7;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v0, v6, v7}, Lcom/android/server/wm/TalkbackWatermark;-><init>(Lcom/android/server/wm/DisplayContent;Landroid/util/DisplayMetrics;Landroid/content/Context;)V

    iput-object v5, v3, Lcom/android/server/wm/WindowManagerService;->mTalkbackWatermark:Lcom/android/server/wm/TalkbackWatermark;

    :cond_3f
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$7;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTalkbackWatermark:Lcom/android/server/wm/TalkbackWatermark;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/server/wm/TalkbackWatermark;->setVisibility(Z)V
    :try_end_47
    .catchall {:try_start_1d .. :try_end_47} :catchall_67

    :goto_47
    :try_start_47
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$7;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_6e

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_51
    const/4 v1, 0x0

    goto :goto_22

    :cond_53
    :try_start_53
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$7;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTalkbackWatermark:Lcom/android/server/wm/TalkbackWatermark;

    if-eqz v3, :cond_61

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$7;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTalkbackWatermark:Lcom/android/server/wm/TalkbackWatermark;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/wm/TalkbackWatermark;->setVisibility(Z)V

    :cond_61
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$7;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/android/server/wm/WindowManagerService;->mTalkbackWatermark:Lcom/android/server/wm/TalkbackWatermark;
    :try_end_66
    .catchall {:try_start_53 .. :try_end_66} :catchall_67

    goto :goto_47

    :catchall_67
    move-exception v3

    :try_start_68
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$7;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    throw v3
    :try_end_6e
    .catchall {:try_start_68 .. :try_end_6e} :catchall_6e

    :catchall_6e
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method
