.class Landroid/widget/AbsListView$CheckForLongPress;
.super Landroid/widget/AbsListView$WindowRunnnable;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForLongPress"
.end annotation


# static fields
.field private static final INVALID_COORD:I = -0x1


# instance fields
.field private mX:F

.field private mY:F

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method static synthetic -wrap0(Landroid/widget/AbsListView$CheckForLongPress;FF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView$CheckForLongPress;->setCoords(FF)V

    return-void
.end method

.method private constructor <init>(Landroid/widget/AbsListView;)V
    .registers 4

    const/high16 v1, -0x40800000    # -1.0f

    iput-object p1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView$WindowRunnnable;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$WindowRunnnable;)V

    iput v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->mX:F

    iput v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->mY:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/AbsListView$CheckForLongPress;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method

.method private setCoords(FF)V
    .registers 3

    iput p1, p0, Landroid/widget/AbsListView$CheckForLongPress;->mX:F

    iput p2, p0, Landroid/widget/AbsListView$CheckForLongPress;->mY:F

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const/4 v9, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v8, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget-object v6, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v6, v6, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v6, v8, v6

    invoke-virtual {v1, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5f

    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v3, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget-object v1, v1, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v6, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v6, v6, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-interface {v1, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView$CheckForLongPress;->sameWindow()Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget-boolean v1, v1, Landroid/widget/AbsListView;->mDataChanged:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4a

    iget v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->mX:F

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_60

    iget v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->mY:F

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_60

    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v6, p0, Landroid/widget/AbsListView$CheckForLongPress;->mX:F

    iget v7, p0, Landroid/widget/AbsListView$CheckForLongPress;->mY:F

    invoke-virtual/range {v1 .. v7}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJFF)Z

    move-result v0

    :cond_4a
    :goto_4a
    if-eqz v0, :cond_67

    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    const/4 v6, 0x1

    invoke-static {v1, v6}, Landroid/widget/AbsListView;->-set1(Landroid/widget/AbsListView;Z)Z

    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    const/4 v6, -0x1

    iput v6, v1, Landroid/widget/AbsListView;->mTouchMode:I

    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, v9}, Landroid/widget/AbsListView;->setPressed(Z)V

    invoke-virtual {v2, v9}, Landroid/view/View;->setPressed(Z)V

    :cond_5f
    :goto_5f
    return-void

    :cond_60
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_4a

    :cond_67
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    const/4 v6, 0x2

    iput v6, v1, Landroid/widget/AbsListView;->mTouchMode:I

    goto :goto_5f
.end method
