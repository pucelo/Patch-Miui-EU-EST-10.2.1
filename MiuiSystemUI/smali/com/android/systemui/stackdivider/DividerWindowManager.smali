.class public Lcom/android/systemui/stackdivider/DividerWindowManager;
.super Ljava/lang/Object;
.source "DividerWindowManager.java"


# instance fields
.field private mDividerInsets:I

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mView:Lcom/android/systemui/stackdivider/DividerView;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mDividerInsets:I

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/systemui/stackdivider/DividerView;II)V
    .locals 6

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7f2

    const v4, 0x20840028

    const/4 v5, -0x3

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v1, "DockedStackDivider"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/16 v0, 0x700

    invoke-virtual {p1, v0}, Lcom/android/systemui/stackdivider/DividerView;->setSystemUiVisibility(I)V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p1, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public remove()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mView:Lcom/android/systemui/stackdivider/DividerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mView:Lcom/android/systemui/stackdivider/DividerView;

    return-void
.end method

.method public setSlippery(Z)V
    .locals 4

    const/high16 v3, 0x20000000

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v3

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x20000001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setTouchable(Z)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public update(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mDividerInsets:I

    sub-int v1, p1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mDividerInsets:I

    sub-int v1, p1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0
.end method
