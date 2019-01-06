.class Landroid/os/CommonClock$1;
.super Ljava/lang/Object;
.source "CommonClock.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CommonClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/CommonClock;


# direct methods
.method constructor <init>(Landroid/os/CommonClock;)V
    .registers 2

    iput-object p1, p0, Landroid/os/CommonClock$1;->this$0:Landroid/os/CommonClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    iget-object v0, p0, Landroid/os/CommonClock$1;->this$0:Landroid/os/CommonClock;

    invoke-static {v0}, Landroid/os/CommonClock;->-get0(Landroid/os/CommonClock;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Landroid/os/CommonClock$1;->this$0:Landroid/os/CommonClock;

    invoke-static {v0}, Landroid/os/CommonClock;->-get1(Landroid/os/CommonClock;)Landroid/os/CommonClock$OnServerDiedListener;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/os/CommonClock$1;->this$0:Landroid/os/CommonClock;

    invoke-static {v0}, Landroid/os/CommonClock;->-get1(Landroid/os/CommonClock;)Landroid/os/CommonClock$OnServerDiedListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/CommonClock$OnServerDiedListener;->onServerDied()V
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1a

    :cond_18
    monitor-exit v1

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method
