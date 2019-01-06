.class Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NearestTouchDelegate"
.end annotation


# instance fields
.field private mInitialTouchTarget:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;)V
    .registers 2

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;-><init>()V

    return-void
.end method

.method private findNearestChild(Landroid/view/ViewGroup;II)Landroid/view/View;
    .registers 14

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    :goto_9
    if-ge v7, v3, :cond_36

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    sub-int v4, p2, v8

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    sub-int v5, p3, v8

    mul-int v8, v4, v4

    mul-int v9, v5, v5

    add-int v6, v8, v9

    if-le v1, v6, :cond_33

    move-object v0, v2

    move v1, v6

    :cond_33
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_36
    return-object v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 13

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1f

    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_24

    move-object v5, p1

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-direct {p0, v5, v6, v7}, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;->findNearestChild(Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;->mInitialTouchTarget:Landroid/view/View;

    :cond_1f
    :goto_1f
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;->mInitialTouchTarget:Landroid/view/View;

    if-nez v1, :cond_27

    return v9

    :cond_24
    iput-object v8, p0, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;->mInitialTouchTarget:Landroid/view/View;

    goto :goto_1f

    :cond_27
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v3, v5

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v4, v5

    invoke-virtual {p2, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {v1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    neg-float v5, v3

    neg-float v6, v4

    invoke-virtual {p2, v5, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v5, 0x1

    if-eq v0, v5, :cond_4d

    const/4 v5, 0x3

    if-ne v0, v5, :cond_4f

    :cond_4d
    iput-object v8, p0, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;->mInitialTouchTarget:Landroid/view/View;

    :cond_4f
    return v2
.end method
