.class public Lcom/android/systemui/recents/views/RecentsBackground;
.super Lcom/android/systemui/statusbar/AlphaOptimizedView;
.source "RecentsBackground.java"


# instance fields
.field private mDisplay:Landroid/view/Display;

.field private mScreenHeight:I

.field private mScreenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/RecentsBackground;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/RecentsBackground;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/RecentsBackground;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/AlphaOptimizedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsBackground;->mDisplay:Landroid/view/Display;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsBackground;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/RecentsBackground;->mScreenWidth:I

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/RecentsBackground;->mScreenHeight:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsBackground;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    instance-of v4, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsBackground;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsBackground;->getHeight()I

    move-result v5

    invoke-virtual {v0, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsBackground;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsBackground;->getLocationOnScreen()[I

    move-result-object v1

    if-ne v2, v5, :cond_2

    const/high16 v4, -0x3d4c0000    # -90.0f

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    aget v4, v1, v7

    neg-int v3, v4

    :goto_1
    iget v4, p0, Lcom/android/systemui/recents/views/RecentsBackground;->mScreenWidth:I

    iget v5, p0, Lcom/android/systemui/recents/views/RecentsBackground;->mScreenHeight:I

    add-int/2addr v5, v3

    invoke-virtual {v0, v7, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    aget v4, v1, v5

    neg-int v3, v4

    goto :goto_1
.end method
