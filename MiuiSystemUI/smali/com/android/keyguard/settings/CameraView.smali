.class public Lcom/android/keyguard/settings/CameraView;
.super Landroid/view/View;
.source "CameraView.java"


# instance fields
.field private mPath:Landroid/graphics/Path;

.field private mRefreshDifferenceView:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/settings/CameraView;->mPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/settings/CameraView;->mRefreshDifferenceView:Z

    invoke-direct {p0}, Lcom/android/keyguard/settings/CameraView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/settings/CameraView;->mPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/settings/CameraView;->mRefreshDifferenceView:Z

    invoke-direct {p0}, Lcom/android/keyguard/settings/CameraView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/settings/CameraView;->mPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/settings/CameraView;->mRefreshDifferenceView:Z

    invoke-direct {p0}, Lcom/android/keyguard/settings/CameraView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/settings/CameraView;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/settings/CameraView;->setFocusableInTouchMode(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/keyguard/settings/CameraView;->mPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/keyguard/settings/CameraView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/keyguard/settings/CameraView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070178

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    iget-boolean v0, p0, Lcom/android/keyguard/settings/CameraView;->mRefreshDifferenceView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/settings/CameraView;->mPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/settings/CameraView;->mRefreshDifferenceView:Z

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/settings/CameraView;->mPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    goto :goto_0
.end method

.method public refreshCameraView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/settings/CameraView;->mRefreshDifferenceView:Z

    invoke-virtual {p0}, Lcom/android/keyguard/settings/CameraView;->invalidate()V

    return-void
.end method
