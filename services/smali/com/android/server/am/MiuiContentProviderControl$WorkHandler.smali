.class Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;
.super Landroid/os/Handler;
.source "MiuiContentProviderControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MiuiContentProviderControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MiuiContentProviderControl;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MiuiContentProviderControl;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;->this$0:Lcom/android/server/am/MiuiContentProviderControl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_44

    :cond_a
    :goto_a
    return-void

    :pswitch_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;->this$0:Lcom/android/server/am/MiuiContentProviderControl;

    invoke-static {v3}, Lcom/android/server/am/MiuiContentProviderControl;->-get0(Lcom/android/server/am/MiuiContentProviderControl;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    monitor-enter v4

    :try_start_16
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;->this$0:Lcom/android/server/am/MiuiContentProviderControl;

    invoke-static {v3, v0, v1}, Lcom/android/server/am/MiuiContentProviderControl;->-wrap1(Lcom/android/server/am/MiuiContentProviderControl;J)V
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_23

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_a

    :catchall_23
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    :pswitch_29
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_a

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    :goto_31
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_a

    iget-object v4, p0, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;->this$0:Lcom/android/server/am/MiuiContentProviderControl;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/StartProviderInfo;

    invoke-static {v4, v3, v6}, Lcom/android/server/am/MiuiContentProviderControl;->-wrap0(Lcom/android/server/am/MiuiContentProviderControl;Lcom/android/server/am/StartProviderInfo;Landroid/app/ContentProviderHolder;)V

    goto :goto_31

    nop

    :pswitch_data_44
    .packed-switch 0x65
        :pswitch_b
        :pswitch_29
    .end packed-switch
.end method
