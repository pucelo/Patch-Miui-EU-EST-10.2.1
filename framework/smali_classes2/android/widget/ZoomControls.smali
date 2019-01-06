.class public Landroid/widget/ZoomControls;
.super Landroid/widget/LinearLayout;
.source "ZoomControls.java"


# instance fields
.field private final mZoomIn:Landroid/widget/ZoomButton;

.field private final mZoomOut:Landroid/widget/ZoomButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ZoomControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ZoomControls;->setFocusable(Z)V

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x109012c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v1, 0x10204cb

    invoke-virtual {p0, v1}, Landroid/widget/ZoomControls;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ZoomButton;

    iput-object v1, p0, Landroid/widget/ZoomControls;->mZoomIn:Landroid/widget/ZoomButton;

    const v1, 0x10204cd

    invoke-virtual {p0, v1}, Landroid/widget/ZoomControls;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ZoomButton;

    iput-object v1, p0, Landroid/widget/ZoomControls;->mZoomOut:Landroid/widget/ZoomButton;

    return-void
.end method

.method private fade(IFF)V
    .registers 8

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {p0, v0}, Landroid/widget/ZoomControls;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, p1}, Landroid/widget/ZoomControls;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    const-class v0, Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasFocus()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/ZoomControls;->mZoomIn:Landroid/widget/ZoomButton;

    invoke-virtual {v0}, Landroid/widget/ZoomButton;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/widget/ZoomControls;->mZoomOut:Landroid/widget/ZoomButton;

    invoke-virtual {v0}, Landroid/widget/ZoomButton;->hasFocus()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public hide()V
    .registers 4

    const/16 v0, 0x8

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/ZoomControls;->fade(IFF)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public setIsZoomInEnabled(Z)V
    .registers 3

    iget-object v0, p0, Landroid/widget/ZoomControls;->mZoomIn:Landroid/widget/ZoomButton;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomButton;->setEnabled(Z)V

    return-void
.end method

.method public setIsZoomOutEnabled(Z)V
    .registers 3

    iget-object v0, p0, Landroid/widget/ZoomControls;->mZoomOut:Landroid/widget/ZoomButton;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomButton;->setEnabled(Z)V

    return-void
.end method

.method public setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/ZoomControls;->mZoomIn:Landroid/widget/ZoomButton;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/ZoomControls;->mZoomOut:Landroid/widget/ZoomButton;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setZoomSpeed(J)V
    .registers 4

    iget-object v0, p0, Landroid/widget/ZoomControls;->mZoomIn:Landroid/widget/ZoomButton;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ZoomButton;->setZoomSpeed(J)V

    iget-object v0, p0, Landroid/widget/ZoomControls;->mZoomOut:Landroid/widget/ZoomButton;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ZoomButton;->setZoomSpeed(J)V

    return-void
.end method

.method public show()V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/ZoomControls;->fade(IFF)V

    return-void
.end method
