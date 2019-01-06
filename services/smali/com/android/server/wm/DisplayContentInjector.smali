.class public Lcom/android/server/wm/DisplayContentInjector;
.super Ljava/lang/Object;
.source "DisplayContentInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getFullScreenIndex(Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/WindowList;I)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/TaskStack;",
            "Lcom/android/server/wm/WindowList",
            "<",
            "Lcom/android/server/wm/TaskStack;",
            ">;I)I"
        }
    .end annotation

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2c

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    iget v2, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_9

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 p2, v2, -0x1

    :cond_2c
    return p2
.end method
