.class public final Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;
.super Landroid/printservice/recommendation/IRecommendationsChangeListener$Stub;
.source "PrintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrintServiceRecommendationsChangeListenerWrapper"
.end annotation


# instance fields
.field private final mWeakHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mWeakListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -android_print_PrintManager$PrintServiceRecommendationsChangeListenerWrapper-mthref-0(Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;)V
    .registers 1

    invoke-interface {p0}, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;->onPrintServiceRecommendationsChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;Landroid/os/Handler;)V
    .registers 4

    invoke-direct {p0}, Landroid/printservice/recommendation/IRecommendationsChangeListener$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;->mWeakListener:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;->mWeakHandler:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    iget-object v0, p0, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public onRecommendationsChanged()V
    .registers 5

    iget-object v2, p0, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iget-object v2, p0, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;

    if-eqz v0, :cond_20

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/print/-$Lambda$h7xjKnKsfVuRdZMcjh_0GBiXV30;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Landroid/print/-$Lambda$h7xjKnKsfVuRdZMcjh_0GBiXV30;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_20
    return-void
.end method
