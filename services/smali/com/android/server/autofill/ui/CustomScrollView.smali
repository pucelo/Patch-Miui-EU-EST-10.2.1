.class public Lcom/android/server/autofill/ui/CustomScrollView;
.super Landroid/widget/ScrollView;
.source "CustomScrollView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomScrollView"


# instance fields
.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    iput v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    iput v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    iput v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    iput v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    return-void
.end method

.method private calculateDimensions()V
    .registers 10

    iget v6, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_6

    return-void

    :cond_6
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/autofill/ui/CustomScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x1110011

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v5, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/autofill/ui/CustomScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v6, v4, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    iget v7, v4, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v6

    float-to-int v3, v6

    iget v6, v4, Landroid/graphics/Point;->x:I

    iput v6, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_87

    const-string/jumbo v6, "CustomScrollView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "calculateDimensions(): maxHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", childHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", w="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", h="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/server/autofill/ui/CustomScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "CustomScrollView"

    const-string/jumbo v1, "no children"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    invoke-direct {p0}, Lcom/android/server/autofill/ui/CustomScrollView;->calculateDimensions()V

    iget v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    iget v1, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/autofill/ui/CustomScrollView;->setMeasuredDimension(II)V

    return-void
.end method
