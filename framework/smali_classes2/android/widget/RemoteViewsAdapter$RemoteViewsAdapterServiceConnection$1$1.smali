.class Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;

.field final synthetic val$adapter:Landroid/widget/RemoteViewsAdapter;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;Landroid/widget/RemoteViewsAdapter;)V
    .registers 3

    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;->this$2:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;

    iput-object p2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter;->-get0(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter;->-get0(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->commitTemporaryMetaData()V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_23

    monitor-exit v2

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter;->-get1(Landroid/widget/RemoteViewsAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    if-eqz v0, :cond_22

    invoke-interface {v0}, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;->onRemoteAdapterConnected()Z

    :cond_22
    return-void

    :catchall_23
    move-exception v1

    monitor-exit v2

    throw v1
.end method
