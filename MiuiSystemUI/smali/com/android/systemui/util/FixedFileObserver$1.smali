.class Lcom/android/systemui/util/FixedFileObserver$1;
.super Landroid/os/FileObserver;
.source "FixedFileObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/FixedFileObserver;->startWatching()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/FixedFileObserver;

.field final synthetic val$fixedObservers:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/FixedFileObserver;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/FixedFileObserver$1;->this$0:Lcom/android/systemui/util/FixedFileObserver;

    iput-object p3, p0, Lcom/android/systemui/util/FixedFileObserver$1;->val$fixedObservers:Ljava/util/Set;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/util/FixedFileObserver;->-get1()Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/util/FixedFileObserver$1;->val$fixedObservers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/FixedFileObserver;

    invoke-static {v0}, Lcom/android/systemui/util/FixedFileObserver;->-get0(Lcom/android/systemui/util/FixedFileObserver;)I

    move-result v2

    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/util/FixedFileObserver;->onEvent(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    monitor-exit v3

    return-void
.end method
