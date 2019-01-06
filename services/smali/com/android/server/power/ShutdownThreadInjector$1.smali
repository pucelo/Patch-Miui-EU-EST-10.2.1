.class final Lcom/android/server/power/ShutdownThreadInjector$1;
.super Ljava/lang/Object;
.source "ShutdownThreadInjector.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThreadInjector;->playShutdownMusicImpl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$actionDoneSync:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/ShutdownThreadInjector$1;->val$actionDoneSync:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/power/ShutdownThreadInjector$1;->val$actionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    invoke-static {v0}, Lcom/android/server/power/ShutdownThreadInjector;->-set0(Z)Z

    iget-object v0, p0, Lcom/android/server/power/ShutdownThreadInjector$1;->val$actionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_e

    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method
