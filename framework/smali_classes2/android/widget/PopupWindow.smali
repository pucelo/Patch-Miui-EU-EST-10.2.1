.class public Landroid/widget/PopupWindow;
.super Ljava/lang/Object;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupWindow$1;,
        Landroid/widget/PopupWindow$2;,
        Landroid/widget/PopupWindow$OnDismissListener;,
        Landroid/widget/PopupWindow$PopupBackgroundView;,
        Landroid/widget/PopupWindow$PopupDecorView;
    }
.end annotation


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I

.field private static final ANIMATION_STYLE_DEFAULT:I = -0x1

.field private static final DEFAULT_ANCHORED_GRAVITY:I = 0x800033

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2


# instance fields
.field private mAboveAnchor:Z

.field private mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mAllowScrollingAnchorParent:Z

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorRoot:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorXoff:I

.field private mAnchorYoff:I

.field private mAnchoredGravity:I

.field private mAnimationStyle:I

.field private mAttachedInDecor:Z

.field private mAttachedInDecorSet:Z

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundView:Landroid/view/View;

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mClipToScreen:Z

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

.field private mElevation:F

.field private mEnterTransition:Landroid/transition/Transition;

.field private mEpicenterBounds:Landroid/graphics/Rect;

.field private mExitTransition:Landroid/transition/Transition;

.field private mFocusable:Z

.field private mGravity:I

.field private mHeight:I

.field private mHeightMode:I

.field private mIgnoreCheekPress:Z

.field private mInputMethodMode:I

.field private mIsAnchorRootAttached:Z

.field private mIsDropdown:Z

.field private mIsShowing:Z

.field private mIsTransitioningToDismiss:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mLayoutInsetDecor:Z

.field private mNotTouchModal:Z

.field private final mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mOverlapAnchor:Z

.field private mParentRootView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupViewInitialLayoutDirectionInherited:Z

.field private mSoftInputMode:I

.field private mSplitTouchEnabled:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTmpAppLocation:[I

.field private final mTmpDrawingLocation:[I

.field private final mTmpScreenLocation:[I

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTouchable:Z

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0()[I
    .registers 1

    sget-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/PopupWindow;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method static synthetic -get2(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;
    .registers 2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;
    .registers 2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/PopupWindow;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/PopupWindow;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100aa

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x1010076

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 16

    const/4 v6, -0x2

    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v5, v10, [I

    iput-object v5, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    new-array v5, v10, [I

    iput-object v5, p0, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    new-array v5, v10, [I

    iput-object v5, p0, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iput v7, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    iput v8, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    iput v9, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    iput v6, p0, Landroid/widget/PopupWindow;->mWidth:I

    iput v6, p0, Landroid/widget/PopupWindow;->mHeight:I

    const/16 v5, 0x3e8

    iput v5, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    iput v9, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    iput v7, p0, Landroid/widget/PopupWindow;->mGravity:I

    new-instance v5, Landroid/widget/PopupWindow$1;

    invoke-direct {v5, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v5, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v5, Landroid/widget/PopupWindow$2;

    invoke-direct {v5, p0}, Landroid/widget/PopupWindow$2;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v5, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v5, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4$1;

    invoke-direct {v5, v7, p0}, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4$1;-><init>(BLjava/lang/Object;)V

    iput-object v5, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    new-instance v5, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4;

    invoke-direct {v5, v7, p0}, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4;-><init>(BLjava/lang/Object;)V

    iput-object v5, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    iput-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    iput-object v5, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    sget-object v5, Lcom/android/internal/R$styleable;->PopupWindow:[I

    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Landroid/widget/PopupWindow;->mElevation:F

    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v5

    if-eqz v5, :cond_b8

    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const v5, 0x10302fa

    if-ne v1, v5, :cond_b5

    iput v9, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    :goto_8f
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-direct {p0, v5}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object v3

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v5

    if-eqz v5, :cond_bb

    const/4 v5, 0x5

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-direct {p0, v5}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object v4

    :goto_a8
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    invoke-virtual {p0, v4}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_b5
    iput v1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_8f

    :cond_b8
    iput v9, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_8f

    :cond_bb
    if-nez v3, :cond_bf

    const/4 v4, 0x0

    goto :goto_a8

    :cond_bf
    invoke-virtual {v3}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v4

    goto :goto_a8
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .registers 11

    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iput v2, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    iput v5, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    iput v4, p0, Landroid/widget/PopupWindow;->mWidth:I

    iput v4, p0, Landroid/widget/PopupWindow;->mHeight:I

    const/16 v0, 0x3e8

    iput v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    iput v5, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    iput v2, p0, Landroid/widget/PopupWindow;->mGravity:I

    new-instance v0, Landroid/widget/PopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v0, Landroid/widget/PopupWindow$2;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$2;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v0, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4$1;

    invoke-direct {v0, v1, p0}, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4$1;-><init>(BLjava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    new-instance v0, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4;

    invoke-direct {v0, v1, p0}, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4;-><init>(BLjava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz p1, :cond_6e

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    :cond_6e
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method private alignToAnchor()V
    .registers 11

    const/4 v9, -0x1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :goto_d
    if-eqz v1, :cond_3d

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasDecorView()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    iget v4, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v7, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v8, 0x1

    move-object v3, p0

    move v6, v9

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    :cond_3d
    return-void

    :cond_3e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private computeAnimationResource()I
    .registers 3

    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_11

    const v0, 0x10302ee

    :goto_10
    return v0

    :cond_11
    const v0, 0x10302ed

    goto :goto_10

    :cond_15
    const/4 v0, 0x0

    return v0

    :cond_17
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method private computeFlags(I)I
    .registers 5

    const/high16 v2, 0x20000

    const v0, -0x868219

    and-int/2addr p1, v0

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_e

    const v0, 0x8000

    or-int/2addr p1, v0

    :cond_e
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    if-nez v0, :cond_55

    or-int/lit8 p1, p1, 0x8

    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    or-int/2addr p1, v2

    :cond_1a
    :goto_1a
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    if-nez v0, :cond_20

    or-int/lit8 p1, p1, 0x10

    :cond_20
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_27

    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    :cond_27
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-eqz v0, :cond_31

    :cond_2f
    or-int/lit16 p1, p1, 0x200

    :cond_31
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_3a

    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    :cond_3a
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_40

    or-int/lit16 p1, p1, 0x100

    :cond_40
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    if-eqz v0, :cond_47

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    :cond_47
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    if-eqz v0, :cond_4d

    or-int/lit8 p1, p1, 0x20

    :cond_4d
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    if-eqz v0, :cond_54

    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p1, v0

    :cond_54
    return p1

    :cond_55
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    or-int/2addr p1, v2

    goto :goto_1a
.end method

.method private computeGravity()I
    .registers 3

    iget v1, p0, Landroid/widget/PopupWindow;->mGravity:I

    if-nez v1, :cond_17

    const v0, 0x800033

    :goto_7
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v1, :cond_16

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-nez v1, :cond_13

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-eqz v1, :cond_16

    :cond_13
    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    :cond_16
    return v0

    :cond_17
    iget v0, p0, Landroid/widget/PopupWindow;->mGravity:I

    goto :goto_7
.end method

.method private createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;
    .registers 8

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1f

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_1f

    const/4 v1, -0x2

    :goto_e
    new-instance v0, Landroid/widget/PopupWindow$PopupBackgroundView;

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v4}, Landroid/widget/PopupWindow$PopupBackgroundView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v3}, Landroid/widget/PopupWindow$PopupBackgroundView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0

    :cond_1f
    const/4 v1, -0x1

    goto :goto_e
.end method

.method private createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;
    .registers 8

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_21

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_21

    const/4 v1, -0x2

    :goto_f
    new-instance v0, Landroid/widget/PopupWindow$PopupDecorView;

    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Landroid/widget/PopupWindow$PopupDecorView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    const/4 v3, -0x1

    invoke-virtual {v0, p1, v3, v1}, Landroid/widget/PopupWindow$PopupDecorView;->addView(Landroid/view/View;II)V

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow$PopupDecorView;->setClipChildren(Z)V

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow$PopupDecorView;->setClipToPadding(Z)V

    return-object v0

    :cond_21
    const/4 v1, -0x1

    goto :goto_f
.end method

.method private dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_c
    if-eqz p2, :cond_11

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_11
    iput-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    iput-object v1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    return-void
.end method

.method private getAppRootView(Landroid/view/View;)Landroid/view/View;
    .registers 5

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManagerGlobal;->getWindowView(Landroid/os/IBinder;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    return-object v0

    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private getTransition(I)Landroid/transition/Transition;
    .registers 7

    const/4 v4, 0x0

    if-eqz p1, :cond_28

    const/high16 v3, 0x10f0000

    if-eq p1, v3, :cond_28

    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v2

    if-eqz v2, :cond_28

    instance-of v3, v2, Landroid/transition/TransitionSet;

    if-eqz v3, :cond_26

    move-object v3, v2

    check-cast v3, Landroid/transition/TransitionSet;

    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v3

    if-nez v3, :cond_24

    const/4 v1, 0x1

    :goto_21
    if-nez v1, :cond_28

    return-object v2

    :cond_24
    const/4 v1, 0x0

    goto :goto_21

    :cond_26
    const/4 v1, 0x0

    goto :goto_21

    :cond_28
    return-object v4
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    :cond_c
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->setFitsSystemWindows(Z)V

    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    iget-object v1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    if-eqz v1, :cond_24

    iget-object v1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->requestEnterTransition(Landroid/transition/Transition;)V

    :cond_24
    return-void
.end method

.method private positionInDisplayHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .registers 14

    const/4 v1, 0x1

    sub-int v3, p4, p3

    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v4, v3

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int v2, v4, p2

    if-le v2, p6, :cond_15

    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v5, v2, p6

    sub-int/2addr v4, v5

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_15
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ge v4, p5, :cond_23

    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v0, p6, p5

    if-eqz p7, :cond_29

    if-le p2, v0, :cond_29

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_23
    :goto_23
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v4, v3

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    return v1

    :cond_29
    const/4 v1, 0x0

    goto :goto_23
.end method

.method private positionInDisplayVertical(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .registers 14

    const/4 v2, 0x1

    sub-int v3, p4, p3

    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v4, v3

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v0, v4, p2

    if-le v0, p6, :cond_17

    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v5, v0, p6

    sub-int/2addr v4, v5

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_17
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge v4, p5, :cond_25

    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v1, p6, p5

    if-eqz p7, :cond_2b

    if-le p2, v1, :cond_2b

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_25
    :goto_25
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v4, v3

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    return v2

    :cond_2b
    const/4 v2, 0x0

    goto :goto_25
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-nez v1, :cond_12

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_9

    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    if-nez v1, :cond_25

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const v2, 0x1040541

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    :cond_25
    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v1}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    :cond_2e
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_61

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_41
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget v2, p0, Landroid/widget/PopupWindow;->mElevation:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setElevation(F)V

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p1, v1, v0, v0}, Landroid/view/WindowManager$LayoutParams;->setSurfaceInsets(Landroid/view/View;ZZ)V

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_66

    :goto_5e
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    return-void

    :cond_61
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    iput-object v1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    goto :goto_41

    :cond_66
    const/4 v0, 0x0

    goto :goto_5e
.end method

.method private setLayoutDirectionFromAnchor()V
    .registers 4

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1b

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow$PopupDecorView;->setLayoutDirection(I)V

    :cond_1b
    return-void
.end method

.method private tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z
    .registers 21

    sub-int v10, p6, p5

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int v8, v0, v10

    sub-int v9, p8, v8

    if-ltz v8, :cond_e

    if-gt p3, v9, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->positionInDisplayHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    return v0

    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method private tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z
    .registers 22

    sub-int v11, p6, p5

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v8, v0, v11

    sub-int v10, p8, v8

    if-ltz v8, :cond_e

    if-gt p3, v10, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    sub-int v0, v8, p4

    sub-int v9, v0, p7

    if-gt p3, v9, :cond_21

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v0, :cond_1a

    add-int p2, p2, p4

    :cond_1a
    sub-int v0, p5, p3

    add-int/2addr v0, p2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v0, 0x1

    return v0

    :cond_21
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->positionInDisplayVertical(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    return v0

    :cond_36
    const/4 v0, 0x0

    return v0
.end method

.method private update(Landroid/view/View;ZIIII)V
    .registers 33

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_f

    :cond_e
    return-void

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    if-eqz p2, :cond_a9

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    move/from16 v0, p3

    if-ne v4, v0, :cond_2b

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    move/from16 v0, p4

    if-eq v4, v0, :cond_a9

    :cond_2b
    const/16 v19, 0x1

    :goto_2d
    if-eqz v20, :cond_37

    invoke-virtual/range {v20 .. v20}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p1

    if-eq v4, v0, :cond_ac

    :cond_37
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3, v11}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    :cond_42
    :goto_42
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v21, v0

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v23, v0

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v22, v0

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v24, v0

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v25, v0

    if-gez p5, :cond_62

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mWidth:I

    move/from16 p5, v0

    :cond_62
    if-gez p6, :cond_6a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mHeight:I

    move/from16 p6, v0

    :cond_6a
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v4 .. v12}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v0, v21

    if-ne v0, v4, :cond_95

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v0, v24

    if-eq v0, v4, :cond_c6

    :cond_95
    const/16 v17, 0x1

    :goto_97
    if-gez p5, :cond_de

    move/from16 v15, p5

    :goto_9b
    if-gez p6, :cond_e1

    move/from16 v16, p6

    :goto_9f
    iget v13, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v14, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v12, p0

    invoke-virtual/range {v12 .. v17}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    return-void

    :cond_a9
    const/16 v19, 0x0

    goto :goto_2d

    :cond_ac
    if-eqz v19, :cond_b6

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_37

    :cond_b6
    if-eqz v19, :cond_42

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorXoff:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorYoff:I

    goto/16 :goto_42

    :cond_c6
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v0, v25

    if-ne v0, v4, :cond_95

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v0, v23

    if-ne v0, v4, :cond_95

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v0, v22

    if-eq v0, v4, :cond_db

    const/16 v17, 0x1

    goto :goto_97

    :cond_db
    const/16 v17, 0x0

    goto :goto_97

    :cond_de
    iget v15, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_9b

    :cond_e1
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v16, v0

    goto :goto_9f
.end method


# virtual methods
.method synthetic -android_widget_PopupWindow-mthref-0()V
    .registers 1

    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    return-void
.end method

.method protected attachToAnchor(Landroid/view/View;III)V
    .registers 8

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_e
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    iget-object v2, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    iput-object v2, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    iput p2, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    iput p3, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    iput p4, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    return-void
.end method

.method protected final createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .registers 5

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_68

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    :goto_2f
    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v1, :cond_6c

    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_39
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v1, :cond_73

    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_43
    const v1, 0x18000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PopupWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_68
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_2f

    :cond_6c
    iget v1, p0, Landroid/widget/PopupWindow;->mHeight:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_39

    :cond_73
    iget v1, p0, Landroid/widget/PopupWindow;->mWidth:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_43
.end method

.method protected detachFromAnchor()V
    .registers 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getAnchor()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_15
    iget-object v3, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_35

    iget-object v3, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :goto_21
    if-eqz v1, :cond_2d

    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_2d
    iput-object v4, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    iput-object v4, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    return-void

    :cond_35
    const/4 v1, 0x0

    goto :goto_21
.end method

.method public dismiss()V
    .registers 11

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isTransitioningToDismiss()Z

    move-result v8

    if-eqz v8, :cond_d

    :cond_c
    return-void

    :cond_d
    iget-object v4, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    iget-object v3, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v8, v2, Landroid/view/ViewGroup;

    if-eqz v8, :cond_7b

    move-object v1, v2

    check-cast v1, Landroid/view/ViewGroup;

    :goto_1c
    invoke-virtual {v4}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    iget-object v6, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    if-eqz v6, :cond_7f

    invoke-virtual {v4}, Landroid/widget/PopupWindow$PopupDecorView;->isLaidOut()Z

    move-result v8

    if-eqz v8, :cond_7f

    iget-boolean v8, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    if-nez v8, :cond_37

    iget-object v8, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    if-nez v8, :cond_7f

    :cond_37
    invoke-virtual {v4}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v8, v8, 0x8

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v9, -0x20001

    and-int/2addr v8, v9

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v8, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v8, v4, v7}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    if-eqz v8, :cond_7d

    iget-object v8, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_62
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object v5

    new-instance v8, Landroid/widget/PopupWindow$3;

    invoke-direct {v8, p0, v4, v1, v3}, Landroid/widget/PopupWindow$3;-><init>(Landroid/widget/PopupWindow;Landroid/widget/PopupWindow$PopupDecorView;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v4, v6, v0, v5, v8}, Landroid/widget/PopupWindow$PopupDecorView;->startExitTransition(Landroid/transition/Transition;Landroid/view/View;Landroid/graphics/Rect;Landroid/transition/Transition$TransitionListener;)V

    :goto_6e
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    iget-object v8, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v8, :cond_7a

    iget-object v8, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v8}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_7a
    return-void

    :cond_7b
    const/4 v1, 0x0

    goto :goto_1c

    :cond_7d
    const/4 v0, 0x0

    goto :goto_62

    :cond_7f
    invoke-direct {p0, v4, v1, v3}, Landroid/widget/PopupWindow;->dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_6e
.end method

.method protected final findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .registers 39

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v18

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v3, :cond_10

    sub-int p4, p4, v7

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    move-object/from16 v20, v0

    invoke-direct/range {p0 .. p1}, Landroid/widget/PopupWindow;->getAppRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    move-object/from16 v22, v0

    const/4 v3, 0x0

    aget v3, v27, v3

    const/4 v4, 0x0

    aget v4, v20, v4

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    aput v3, v22, v4

    const/4 v3, 0x1

    aget v3, v27, v3

    const/4 v4, 0x1

    aget v4, v20, v4

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    aput v3, v22, v4

    const/4 v3, 0x0

    aget v3, v22, v3

    add-int v3, v3, p3

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v3, 0x1

    aget v3, v22, v3

    add-int/2addr v3, v7

    add-int v3, v3, p4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const/4 v3, -0x1

    move/from16 v0, p5

    if-ne v0, v3, :cond_72

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int p5, v3, v4

    :cond_72
    const/4 v3, -0x1

    move/from16 v0, p6

    if-ne v0, v3, :cond_81

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int p6, v3, v4

    :cond_81
    invoke-direct/range {p0 .. p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v3

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v0, p5

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v0, p6

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    move/from16 v0, p7

    invoke-static {v0, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    and-int/lit8 v25, v3, 0x7

    const/4 v3, 0x5

    move/from16 v0, v25

    if-ne v0, v3, :cond_b1

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v4, p5, v18

    sub-int/2addr v3, v4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_b1
    const/4 v3, 0x1

    aget v8, v22, v3

    const/4 v3, 0x1

    aget v9, v27, v3

    move-object/from16 v0, v21

    iget v10, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v21

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v12, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move/from16 v5, p4

    move/from16 v6, p6

    invoke-direct/range {v3 .. v12}, Landroid/widget/PopupWindow;->tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    move-result v24

    const/4 v3, 0x0

    aget v13, v22, v3

    const/4 v3, 0x0

    aget v14, v27, v3

    move-object/from16 v0, v21

    iget v15, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p5

    move/from16 v12, v18

    invoke-direct/range {v8 .. v17}, Landroid/widget/PopupWindow;->tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    move-result v23

    if-eqz v24, :cond_f2

    xor-int/lit8 v3, v23, 0x1

    if-eqz v3, :cond_199

    :cond_f2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v29

    new-instance v26, Landroid/graphics/Rect;

    add-int v3, v28, p5

    add-int v3, v3, p3

    add-int v4, v29, p6

    add-int/2addr v4, v7

    add-int v4, v4, p4

    move-object/from16 v0, v26

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p8, :cond_159

    const/4 v3, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result v3

    if-eqz v3, :cond_159

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    aget v3, v27, v3

    const/4 v4, 0x0

    aget v4, v20, v4

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    aput v3, v22, v4

    const/4 v3, 0x1

    aget v3, v27, v3

    const/4 v4, 0x1

    aget v4, v20, v4

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    aput v3, v22, v4

    const/4 v3, 0x0

    aget v3, v22, v3

    add-int v3, v3, p3

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v3, 0x1

    aget v3, v22, v3

    add-int/2addr v3, v7

    add-int v3, v3, p4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v3, 0x5

    move/from16 v0, v25

    if-ne v0, v3, :cond_159

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v4, p5, v18

    sub-int/2addr v3, v4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_159
    const/4 v3, 0x1

    aget v8, v22, v3

    const/4 v3, 0x1

    aget v9, v27, v3

    move-object/from16 v0, v21

    iget v10, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v21

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move/from16 v5, p4

    move/from16 v6, p6

    invoke-direct/range {v3 .. v12}, Landroid/widget/PopupWindow;->tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    const/4 v3, 0x0

    aget v13, v22, v3

    const/4 v3, 0x0

    aget v14, v27, v3

    move-object/from16 v0, v21

    iget v15, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    move/from16 v17, v0

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p5

    move/from16 v12, v18

    invoke-direct/range {v8 .. v17}, Landroid/widget/PopupWindow;->tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    :cond_199
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v4, 0x1

    aget v4, v22, v4

    if-ge v3, v4, :cond_1a4

    const/4 v3, 0x1

    :goto_1a3
    return v3

    :cond_1a4
    const/4 v3, 0x0

    goto :goto_1a3
.end method

.method protected final getAllowScrollingAnchorParent()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    return v0
.end method

.method protected getAnchor()Landroid/view/View;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_d

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :cond_d
    return-object v0
.end method

.method public getAnimationStyle()I
    .registers 2

    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method protected getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getElevation()F
    .registers 2

    iget v0, p0, Landroid/widget/PopupWindow;->mElevation:F

    return v0
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .registers 2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .registers 2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Landroid/widget/PopupWindow;->mHeight:I

    return v0
.end method

.method public getInputMethodMode()I
    .registers 2

    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .registers 15

    const/4 v10, 0x1

    const/4 v3, 0x0

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->getAppRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    if-eqz p3, :cond_56

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v3}, Landroid/view/View;->getWindowDisplayFrame(Landroid/graphics/Rect;)V

    iget v8, v7, Landroid/graphics/Rect;->top:I

    iput v8, v3, Landroid/graphics/Rect;->top:I

    iget v8, v7, Landroid/graphics/Rect;->right:I

    iput v8, v3, Landroid/graphics/Rect;->right:I

    iget v8, v7, Landroid/graphics/Rect;->left:I

    iput v8, v3, Landroid/graphics/Rect;->left:I

    :goto_24
    iget-object v0, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    iget-boolean v8, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v8, :cond_58

    aget v8, v0, v10

    sub-int v8, v2, v8

    sub-int v4, v8, p2

    :goto_35
    aget v8, v0, v10

    iget v9, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    add-int v5, v8, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v8, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_55

    iget-object v8, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v8, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    sub-int/2addr v6, v8

    :cond_55
    return v6

    :cond_56
    move-object v3, v7

    goto :goto_24

    :cond_58
    aget v8, v0, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    sub-int v8, v2, v8

    sub-int v4, v8, p2

    goto :goto_35
.end method

.method protected final getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;
    .registers 2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-object v0
.end method

.method public getOverlapAnchor()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    return v0
.end method

.method public getSoftInputMode()I
    .registers 2

    iget v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return v0
.end method

.method protected final getTransitionEpicenter()Landroid/graphics/Rect;
    .registers 12

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v7, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_16

    iget-object v7, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_f
    iget-object v3, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    if-eqz v0, :cond_15

    if-nez v3, :cond_18

    :cond_15
    return-object v8

    :cond_16
    const/4 v0, 0x0

    goto :goto_f

    :cond_18
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v1

    iget-object v7, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v7}, Landroid/widget/PopupWindow$PopupDecorView;->getLocationOnScreen()[I

    move-result-object v6

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-direct {v2, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aget v7, v1, v9

    aget v8, v6, v9

    sub-int/2addr v7, v8

    aget v8, v1, v10

    aget v9, v6, v10

    sub-int/2addr v8, v9

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    iget-object v7, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    if-eqz v7, :cond_4c

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    :cond_4c
    return-object v2
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Landroid/widget/PopupWindow;->mWidth:I

    return v0
.end method

.method public getWindowLayoutType()I
    .registers 2

    iget v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    return v0
.end method

.method protected hasContentView()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected hasDecorView()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isAboveAnchor()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method public isAttachedInDecor()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    return v0
.end method

.method public isClippingEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return v0
.end method

.method public isFocusable()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return v0
.end method

.method public isLayoutInScreenEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method protected final isLayoutInsetDecor()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    return v0
.end method

.method public isOutsideTouchable()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public isShowing()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    return v0
.end method

.method public isSplitTouchEnabled()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-gez v2, :cond_19

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_19

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_17

    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16

    :cond_19
    iget v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-ne v2, v0, :cond_1e

    :goto_1d
    return v0

    :cond_1e
    move v0, v1

    goto :goto_1d
.end method

.method public isTouchable()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return v0
.end method

.method protected final isTransitioningToDismiss()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    return v0
.end method

.method synthetic lambda$-android_widget_PopupWindow_9628(Landroid/view/View;IIIIIIII)V
    .registers 10

    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    return-void
.end method

.method setAllowScrollingAnchorParent(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    return-void
.end method

.method public setAnimationStyle(I)V
    .registers 2

    iput p1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return-void
.end method

.method public setAttachedInDecor(Z)V
    .registers 3

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 10

    const/4 v7, 0x0

    const/4 v6, -0x1

    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v5, v5, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v5, :cond_2f

    iget-object v4, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v4, Landroid/graphics/drawable/StateListDrawable;

    sget-object v5, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v0

    invoke-virtual {v4}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v2

    const/4 v1, -0x1

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v2, :cond_1f

    if-eq v3, v0, :cond_30

    move v1, v3

    :cond_1f
    if-eq v0, v6, :cond_33

    if-eq v1, v6, :cond_33

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2f
    :goto_2f
    return-void

    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_33
    iput-object v7, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v7, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2f
.end method

.method public setClipToScreenEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    return-void
.end method

.method public setClippingEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    :cond_19
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_2e

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    :cond_2e
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_48

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_48

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_49

    const/4 v0, 0x1

    :goto_45
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAttachedInDecor(Z)V

    :cond_48
    return-void

    :cond_49
    const/4 v0, 0x0

    goto :goto_45
.end method

.method protected final setDropDown(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    return-void
.end method

.method public setElevation(F)V
    .registers 2

    iput p1, p0, Landroid/widget/PopupWindow;->mElevation:F

    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    return-void
.end method

.method public setEpicenterBounds(Landroid/graphics/Rect;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    return-void
.end method

.method public setFocusable(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return-void
.end method

.method public setHeight(I)V
    .registers 2

    iput p1, p0, Landroid/widget/PopupWindow;->mHeight:I

    return-void
.end method

.method public setIgnoreCheekPress()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    return-void
.end method

.method public setInputMethodMode(I)V
    .registers 2

    iput p1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return-void
.end method

.method public setLayoutInsetDecor(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setOutsideTouchable(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return-void
.end method

.method public setOverlapAnchor(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    return-void
.end method

.method protected final setShowing(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    return-void
.end method

.method public setSoftInputMode(I)V
    .registers 2

    iput p1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .registers 3

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput v0, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    return-void

    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setTouchModal(Z)V
    .registers 3

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    return-void
.end method

.method public setTouchable(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return-void
.end method

.method protected final setTransitioningToDismiss(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    return-void
.end method

.method public setWidth(I)V
    .registers 2

    iput p1, p0, Landroid/widget/PopupWindow;->mWidth:I

    return-void
.end method

.method public setWindowLayoutMode(II)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput p2, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    return-void
.end method

.method public setWindowLayoutType(I)V
    .registers 2

    iput p1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .registers 5

    const v0, 0x800033

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .registers 15

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_10

    :cond_f
    return-void

    :cond_10
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-boolean v8, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v7, p4

    invoke-virtual/range {v0 .. v8}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v9

    invoke-virtual {p0, v9}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    if-eqz p1, :cond_45

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    :goto_3f
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_45
    const/4 v0, -0x1

    goto :goto_3f
.end method

.method public showAtLocation(Landroid/os/IBinder;III)V
    .registers 7

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_b

    :cond_a
    return-void

    :cond_b
    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v1}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    iput p2, p0, Landroid/widget/PopupWindow;->mGravity:I

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .registers 7

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    return-void
.end method

.method public update()V
    .registers 8

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_10

    :cond_f
    return-void

    :cond_10
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v0

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v0, v6, :cond_20

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v4, 0x1

    :cond_20
    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v6}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v6, :cond_2d

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v4, 0x1

    :cond_2d
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v2

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v2, v6, :cond_38

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v4, 0x1

    :cond_38
    if-eqz v4, :cond_49

    iget-object v6, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_46

    iget-object v5, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    :cond_46
    invoke-virtual {p0, v5, v3}, Landroid/widget/PopupWindow;->update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    :cond_49
    return-void
.end method

.method public update(II)V
    .registers 10

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    return-void
.end method

.method public update(IIII)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    return-void
.end method

.method public update(IIIIZ)V
    .registers 16

    if-ltz p3, :cond_7

    iput p3, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setWidth(I)V

    :cond_7
    if-ltz p4, :cond_e

    iput p4, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setHeight(I)V

    :cond_e
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_1d

    :cond_1c
    return-void

    :cond_1d
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    move v8, p5

    iget v9, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v9, :cond_9e

    iget v2, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    :goto_28
    const/4 v9, -0x1

    if-eq p3, v9, :cond_34

    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v9, v2, :cond_34

    iput v2, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v2, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v8, 0x1

    :cond_34
    iget v9, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v9, :cond_a1

    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    :goto_3a
    const/4 v9, -0x1

    if-eq p4, v9, :cond_46

    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v9, v1, :cond_46

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v8, 0x1

    :cond_46
    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v9, p1, :cond_4d

    iput p1, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v8, 0x1

    :cond_4d
    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v9, p2, :cond_54

    iput p2, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v8, 0x1

    :cond_54
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v4

    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v4, v9, :cond_5f

    iput v4, v7, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v8, 0x1

    :cond_5f
    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v9}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v5

    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v5, v9, :cond_6c

    iput v5, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v8, 0x1

    :cond_6c
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v6

    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v6, v9, :cond_77

    iput v6, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v8, 0x1

    :cond_77
    const/4 v0, 0x0

    const/4 v3, -0x1

    iget-object v9, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v9, :cond_91

    iget-object v9, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_91

    iget-object v9, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v3

    :cond_91
    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    if-eq v3, v9, :cond_98

    iput v3, v7, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    const/4 v8, 0x1

    :cond_98
    if-eqz v8, :cond_9d

    invoke-virtual {p0, v0, v7}, Landroid/widget/PopupWindow;->update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    :cond_9d
    return-void

    :cond_9e
    iget v2, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    goto :goto_28

    :cond_a1
    iget v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    goto :goto_3a
.end method

.method public update(Landroid/view/View;II)V
    .registers 11

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIII)V

    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .registers 13

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIII)V

    return-void
.end method

.method protected update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .registers 5

    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-interface {v0, v1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected final updateAboveAnchor(Z)V
    .registers 4

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eq p1, v0, :cond_1d

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1d

    :cond_26
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_1d
.end method
