.class final Landroid/view/Choreographer$2;
.super Ljava/lang/ThreadLocal;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Landroid/view/Choreographer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Landroid/view/Choreographer;
    .registers 5

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "The current thread must have a looper!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    new-instance v1, Landroid/view/Choreographer;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, v3}, Landroid/view/Choreographer;-><init>(Landroid/os/Looper;ILandroid/view/Choreographer;)V

    return-object v1
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Landroid/view/Choreographer$2;->initialValue()Landroid/view/Choreographer;

    move-result-object v0

    return-object v0
.end method
