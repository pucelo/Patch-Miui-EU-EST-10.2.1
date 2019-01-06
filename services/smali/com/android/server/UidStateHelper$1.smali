.class Lcom/android/server/UidStateHelper$1;
.super Landroid/app/IProcessObserver$Stub;
.source "UidStateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UidStateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UidStateHelper;


# direct methods
.method constructor <init>(Lcom/android/server/UidStateHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/UidStateHelper$1;->this$0:Lcom/android/server/UidStateHelper;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 8

    invoke-static {}, Lcom/android/server/UidStateHelper;->-get0()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-static {}, Lcom/android/server/UidStateHelper;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "foreground changed:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    iget-object v1, p0, Lcom/android/server/UidStateHelper$1;->this$0:Lcom/android/server/UidStateHelper;

    invoke-static {v1}, Lcom/android/server/UidStateHelper;->-get2(Lcom/android/server/UidStateHelper;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_45
    iget-object v1, p0, Lcom/android/server/UidStateHelper$1;->this$0:Lcom/android/server/UidStateHelper;

    invoke-static {v1}, Lcom/android/server/UidStateHelper;->-get3(Lcom/android/server/UidStateHelper;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_62

    new-instance v0, Landroid/util/SparseBooleanArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/UidStateHelper$1;->this$0:Lcom/android/server/UidStateHelper;

    invoke-static {v1}, Lcom/android/server/UidStateHelper;->-get3(Lcom/android/server/UidStateHelper;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_62
    invoke-virtual {v0, p1, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v1, p0, Lcom/android/server/UidStateHelper$1;->this$0:Lcom/android/server/UidStateHelper;

    invoke-static {v1, p2}, Lcom/android/server/UidStateHelper;->-wrap0(Lcom/android/server/UidStateHelper;I)V
    :try_end_6a
    .catchall {:try_start_45 .. :try_end_6a} :catchall_6c

    monitor-exit v2

    return-void

    :catchall_6c
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onProcessDied(II)V
    .registers 7

    invoke-static {}, Lcom/android/server/UidStateHelper;->-get0()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-static {}, Lcom/android/server/UidStateHelper;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "process died:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    iget-object v1, p0, Lcom/android/server/UidStateHelper$1;->this$0:Lcom/android/server/UidStateHelper;

    invoke-static {v1}, Lcom/android/server/UidStateHelper;->-get2(Lcom/android/server/UidStateHelper;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_3a
    iget-object v1, p0, Lcom/android/server/UidStateHelper$1;->this$0:Lcom/android/server/UidStateHelper;

    invoke-static {v1}, Lcom/android/server/UidStateHelper;->-get3(Lcom/android/server/UidStateHelper;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_50

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v1, p0, Lcom/android/server/UidStateHelper$1;->this$0:Lcom/android/server/UidStateHelper;

    invoke-static {v1, p2}, Lcom/android/server/UidStateHelper;->-wrap0(Lcom/android/server/UidStateHelper;I)V
    :try_end_50
    .catchall {:try_start_3a .. :try_end_50} :catchall_52

    :cond_50
    monitor-exit v2

    return-void

    :catchall_52
    move-exception v1

    monitor-exit v2

    throw v1
.end method
