.class Lcom/android/internal/widget/MiuiDecorCaptionView$3;
.super Ljava/lang/Object;
.source "MiuiDecorCaptionView.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MiuiDecorCaptionView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$3;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$3;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->-wrap1(Lcom/android/internal/widget/MiuiDecorCaptionView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$3;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v0, p2}, Lcom/android/internal/widget/MiuiDecorCaptionView;->-set1(Lcom/android/internal/widget/MiuiDecorCaptionView;Landroid/view/View;)Landroid/view/View;

    :cond_16
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    return-void
.end method
