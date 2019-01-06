.class Landroid/print/PrintServiceRecommendationsLoader$MyHandler;
.super Landroid/os/Handler;
.source "PrintServiceRecommendationsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintServiceRecommendationsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/print/PrintServiceRecommendationsLoader;


# direct methods
.method public constructor <init>(Landroid/print/PrintServiceRecommendationsLoader;)V
    .registers 3

    iput-object p1, p0, Landroid/print/PrintServiceRecommendationsLoader$MyHandler;->this$0:Landroid/print/PrintServiceRecommendationsLoader;

    invoke-virtual {p1}, Landroid/print/PrintServiceRecommendationsLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p0, Landroid/print/PrintServiceRecommendationsLoader$MyHandler;->this$0:Landroid/print/PrintServiceRecommendationsLoader;

    invoke-virtual {v0}, Landroid/print/PrintServiceRecommendationsLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v1, p0, Landroid/print/PrintServiceRecommendationsLoader$MyHandler;->this$0:Landroid/print/PrintServiceRecommendationsLoader;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Landroid/print/PrintServiceRecommendationsLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_11
    return-void
.end method
