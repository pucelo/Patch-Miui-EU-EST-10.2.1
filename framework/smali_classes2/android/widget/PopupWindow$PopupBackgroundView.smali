.class Landroid/widget/PopupWindow$PopupBackgroundView;
.super Landroid/widget/FrameLayout;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupBackgroundView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Landroid/widget/PopupWindow$PopupBackgroundView;->this$0:Landroid/widget/PopupWindow;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onCreateDrawableState(I)[I
    .registers 4

    iget-object v1, p0, Landroid/widget/PopupWindow$PopupBackgroundView;->this$0:Landroid/widget/PopupWindow;

    invoke-static {v1}, Landroid/widget/PopupWindow;->-get1(Landroid/widget/PopupWindow;)Z

    move-result v1

    if-eqz v1, :cond_16

    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    invoke-static {}, Landroid/widget/PopupWindow;->-get0()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    return-object v0

    :cond_16
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v1

    return-object v1
.end method
