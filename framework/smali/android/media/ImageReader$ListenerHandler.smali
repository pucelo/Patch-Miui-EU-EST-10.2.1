.class final Landroid/media/ImageReader$ListenerHandler;
.super Landroid/os/Handler;
.source "ImageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListenerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/ImageReader;


# direct methods
.method public constructor <init>(Landroid/media/ImageReader;Landroid/os/Looper;)V
    .registers 5

    iput-object p1, p0, Landroid/media/ImageReader$ListenerHandler;->this$0:Landroid/media/ImageReader;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget-object v2, p0, Landroid/media/ImageReader$ListenerHandler;->this$0:Landroid/media/ImageReader;

    invoke-static {v2}, Landroid/media/ImageReader;->-get4(Landroid/media/ImageReader;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_7
    iget-object v2, p0, Landroid/media/ImageReader$ListenerHandler;->this$0:Landroid/media/ImageReader;

    invoke-static {v2}, Landroid/media/ImageReader;->-get3(Landroid/media/ImageReader;)Landroid/media/ImageReader$OnImageAvailableListener;
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_27

    move-result-object v1

    monitor-exit v3

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/media/ImageReader$ListenerHandler;->this$0:Landroid/media/ImageReader;

    invoke-static {v2}, Landroid/media/ImageReader;->-get0(Landroid/media/ImageReader;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_16
    iget-object v2, p0, Landroid/media/ImageReader$ListenerHandler;->this$0:Landroid/media/ImageReader;

    invoke-static {v2}, Landroid/media/ImageReader;->-get2(Landroid/media/ImageReader;)Z
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_2a

    move-result v0

    monitor-exit v3

    if-eqz v1, :cond_26

    if-eqz v0, :cond_26

    iget-object v2, p0, Landroid/media/ImageReader$ListenerHandler;->this$0:Landroid/media/ImageReader;

    invoke-interface {v1, v2}, Landroid/media/ImageReader$OnImageAvailableListener;->onImageAvailable(Landroid/media/ImageReader;)V

    :cond_26
    return-void

    :catchall_27
    move-exception v2

    monitor-exit v3

    throw v2

    :catchall_2a
    move-exception v2

    monitor-exit v3

    throw v2
.end method
