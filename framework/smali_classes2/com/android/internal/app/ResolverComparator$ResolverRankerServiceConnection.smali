.class Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;
.super Ljava/lang/Object;
.source "ResolverComparator.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResolverRankerServiceConnection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection$1;
    }
.end annotation


# instance fields
.field private final mConnectSignal:Ljava/util/concurrent/CountDownLatch;

.field public final resolverRankerResult:Landroid/service/resolver/IResolverRankerResult;

.field final synthetic this$0:Lcom/android/internal/app/ResolverComparator;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverComparator;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4

    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection$1;-><init>(Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;->resolverRankerResult:Landroid/service/resolver/IResolverRankerResult;

    iput-object p2, p0, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v0}, Lcom/android/internal/app/ResolverComparator;->-get2(Lcom/android/internal/app/ResolverComparator;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;->this$0:Lcom/android/internal/app/ResolverComparator;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/internal/app/ResolverComparator;->-set0(Lcom/android/internal/app/ResolverComparator;Landroid/service/resolver/IResolverRankerService;)Landroid/service/resolver/IResolverRankerService;
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_f

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v0}, Lcom/android/internal/app/ResolverComparator;->-get2(Lcom/android/internal/app/ResolverComparator;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {p2}, Landroid/service/resolver/IResolverRankerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/resolver/IResolverRankerService;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/app/ResolverComparator;->-set0(Lcom/android/internal/app/ResolverComparator;Landroid/service/resolver/IResolverRankerService;)Landroid/service/resolver/IResolverRankerService;

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_17

    monitor-exit v1

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v0}, Lcom/android/internal/app/ResolverComparator;->-get2(Lcom/android/internal/app/ResolverComparator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;->destroy()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_c

    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0

    throw v1
.end method
