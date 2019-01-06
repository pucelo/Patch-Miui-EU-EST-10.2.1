.class Lcom/android/keyguard/AODView$4;
.super Ljava/lang/Object;
.source "AODView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NotificationChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/AODView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/AODView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/AODView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/AODView$4;->this$0:Lcom/android/keyguard/AODView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdd(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/AODView$4;->this$0:Lcom/android/keyguard/AODView;

    invoke-static {v0}, Lcom/android/keyguard/AODView;->-get0(Lcom/android/keyguard/AODView;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/AODView$4;->this$0:Lcom/android/keyguard/AODView;

    new-instance v1, Lcom/android/keyguard/AODView$4$1;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/AODView$4$1;-><init>(Lcom/android/keyguard/AODView$4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/AODView;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/keyguard/AODView$4;->this$0:Lcom/android/keyguard/AODView;

    invoke-static {v0}, Lcom/android/keyguard/AODView;->-wrap2(Lcom/android/keyguard/AODView;)V

    return-void
.end method

.method public onClearAll()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/AODView$4;->this$0:Lcom/android/keyguard/AODView;

    invoke-static {v0}, Lcom/android/keyguard/AODView;->-get0(Lcom/android/keyguard/AODView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/keyguard/AODView$4;->this$0:Lcom/android/keyguard/AODView;

    invoke-static {v0}, Lcom/android/keyguard/AODView;->-wrap2(Lcom/android/keyguard/AODView;)V

    return-void
.end method

.method public onDelete(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/AODView$4;->this$0:Lcom/android/keyguard/AODView;

    invoke-static {v1}, Lcom/android/keyguard/AODView;->-get0(Lcom/android/keyguard/AODView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/AODView$4;->this$0:Lcom/android/keyguard/AODView;

    invoke-static {v1}, Lcom/android/keyguard/AODView;->-get0(Lcom/android/keyguard/AODView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/AODView$4;->this$0:Lcom/android/keyguard/AODView;

    invoke-static {v1}, Lcom/android/keyguard/AODView;->-get0(Lcom/android/keyguard/AODView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/AODView$4;->this$0:Lcom/android/keyguard/AODView;

    invoke-static {v1}, Lcom/android/keyguard/AODView;->-wrap2(Lcom/android/keyguard/AODView;)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onUpdate(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/AODView$4;->this$0:Lcom/android/keyguard/AODView;

    new-instance v2, Lcom/android/keyguard/AODView$4$2;

    invoke-direct {v2, p0, p1}, Lcom/android/keyguard/AODView$4$2;-><init>(Lcom/android/keyguard/AODView$4;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/keyguard/AODView;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/AODView$4;->this$0:Lcom/android/keyguard/AODView;

    invoke-static {v1}, Lcom/android/keyguard/AODView;->-get0(Lcom/android/keyguard/AODView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/AODView$4;->this$0:Lcom/android/keyguard/AODView;

    invoke-static {v1}, Lcom/android/keyguard/AODView;->-get0(Lcom/android/keyguard/AODView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/AODView$4;->this$0:Lcom/android/keyguard/AODView;

    invoke-static {v1}, Lcom/android/keyguard/AODView;->-get0(Lcom/android/keyguard/AODView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/AODView$4;->this$0:Lcom/android/keyguard/AODView;

    invoke-static {v1}, Lcom/android/keyguard/AODView;->-get0(Lcom/android/keyguard/AODView;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/keyguard/AODView$4;->this$0:Lcom/android/keyguard/AODView;

    invoke-static {v1}, Lcom/android/keyguard/AODView;->-wrap2(Lcom/android/keyguard/AODView;)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
