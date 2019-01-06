.class Lcom/android/internal/app/ResolverComparator$1;
.super Landroid/os/Handler;
.source "ResolverComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverComparator;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverComparator;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    const/4 v7, 0x1

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_c2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_9
    :goto_9
    return-void

    :pswitch_a
    iget-object v5, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v5}, Lcom/android/internal/app/ResolverComparator;->-get1(Lcom/android/internal/app/ResolverComparator;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_a2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_98

    iget-object v5, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v5}, Lcom/android/internal/app/ResolverComparator;->-get4(Lcom/android/internal/app/ResolverComparator;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_98

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v6}, Lcom/android/internal/app/ResolverComparator;->-get4(Lcom/android/internal/app/ResolverComparator;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_98

    iget-object v5, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v5}, Lcom/android/internal/app/ResolverComparator;->-get4(Lcom/android/internal/app/ResolverComparator;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_44
    if-ge v0, v4, :cond_77

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/resolver/ResolverTarget;

    invoke-virtual {v5}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v2

    iget-object v5, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v5}, Lcom/android/internal/app/ResolverComparator;->-get4(Lcom/android/internal/app/ResolverComparator;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/resolver/ResolverTarget;

    invoke-virtual {v5}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v5

    cmpl-float v5, v2, v5

    if-eqz v5, :cond_74

    iget-object v5, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v5}, Lcom/android/internal/app/ResolverComparator;->-get4(Lcom/android/internal/app/ResolverComparator;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/resolver/ResolverTarget;

    invoke-virtual {v5, v2}, Landroid/service/resolver/ResolverTarget;->setSelectProbability(F)V

    const/4 v1, 0x1

    :cond_74
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    :cond_77
    if-eqz v1, :cond_84

    iget-object v5, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    iget-object v6, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v6}, Lcom/android/internal/app/ResolverComparator;->-get3(Lcom/android/internal/app/ResolverComparator;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/app/ResolverComparator;->-set1(Lcom/android/internal/app/ResolverComparator;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    :cond_84
    :goto_84
    iget-object v5, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v5}, Lcom/android/internal/app/ResolverComparator;->-get1(Lcom/android/internal/app/ResolverComparator;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v5}, Lcom/android/internal/app/ResolverComparator;->-get0(Lcom/android/internal/app/ResolverComparator;)Lcom/android/internal/app/ResolverComparator$AfterCompute;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/app/ResolverComparator$AfterCompute;->afterCompute()V

    goto/16 :goto_9

    :cond_98
    const-string/jumbo v5, "ResolverComparator"

    const-string/jumbo v6, "Sizes of sent and received ResolverTargets diff."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    :cond_a2
    const-string/jumbo v5, "ResolverComparator"

    const-string/jumbo v6, "Receiving null prediction results."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    :pswitch_ac
    iget-object v5, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v5}, Lcom/android/internal/app/ResolverComparator;->-get1(Lcom/android/internal/app/ResolverComparator;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v5}, Lcom/android/internal/app/ResolverComparator;->-get0(Lcom/android/internal/app/ResolverComparator;)Lcom/android/internal/app/ResolverComparator$AfterCompute;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/app/ResolverComparator$AfterCompute;->afterCompute()V

    goto/16 :goto_9

    nop

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_ac
    .end packed-switch
.end method
