.class Landroid/view/ViewGroup$2;
.super Ljava/lang/Object;
.source "ViewGroup.java"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .registers 2

    iput-object p1, p0, Landroid/view/ViewGroup$2;->this$0:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .registers 7

    iget-object v0, p0, Landroid/view/ViewGroup$2;->this$0:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/view/ViewGroup;->-get2(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Landroid/animation/LayoutTransition;->isChangingLayout()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/view/ViewGroup$2;->this$0:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    iget-object v0, p0, Landroid/view/ViewGroup$2;->this$0:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/ViewGroup;->-set0(Landroid/view/ViewGroup;Z)Z

    :cond_1b
    const/4 v0, 0x3

    if-ne p4, v0, :cond_2b

    iget-object v0, p0, Landroid/view/ViewGroup$2;->this$0:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/view/ViewGroup;->-get3(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/view/ViewGroup$2;->this$0:Landroid/view/ViewGroup;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    :cond_2b
    return-void
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .registers 6

    const/4 v0, 0x3

    if-ne p4, v0, :cond_8

    iget-object v0, p0, Landroid/view/ViewGroup$2;->this$0:Landroid/view/ViewGroup;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    :cond_8
    return-void
.end method
