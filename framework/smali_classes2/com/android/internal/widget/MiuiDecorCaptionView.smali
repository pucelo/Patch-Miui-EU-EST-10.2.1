.class public Lcom/android/internal/widget/MiuiDecorCaptionView;
.super Lcom/android/internal/widget/DecorCaptionView;
.source "MiuiDecorCaptionView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/MiuiDecorCaptionView$1;,
        Lcom/android/internal/widget/MiuiDecorCaptionView$2;
    }
.end annotation


# static fields
.field private static final MTK:Ljava/lang/String; = "mediatek"

.field private static final TAG:Ljava/lang/String; = "MiuiDecorCaptionView"


# instance fields
.field private RADIUS:F

.field private mCaption:Landroid/view/View;

.field private mCheckForDragging:Z

.field private mClickTarget:Landroid/view/View;

.field private mClose:Landroid/view/View;

.field private final mCloseRect:Landroid/graphics/Rect;

.field private mContent:Landroid/view/View;

.field private mDragSlop:I

.field private mDragging:Z

.field private mFreeformConnection:Landroid/content/ServiceConnection;

.field private mFreeformService:Lcom/miui/freeform/IMiuiFreeformWindowService;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mMaximize:Landroid/view/View;

.field private final mMaximizeRect:Landroid/graphics/Rect;

.field private mMobileqqView:Landroid/view/View;

.field private mMove:Landroid/view/View;

.field private final mMoveRect:Landroid/graphics/Rect;

.field private mOverlayWithAppContent:Z

.field private mOwner:Lcom/android/internal/policy/PhoneWindow;

.field private mRoot:Landroid/view/ViewGroup;

.field private mSecurityManager:Lmiui/security/SecurityManager;

.field private mShow:Z

.field private mTouchDispatchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchDownX:I

.field private mTouchDownY:I

.field private mViewOutlineProvider:Landroid/view/ViewOutlineProvider;


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/MiuiDecorCaptionView;)F
    .registers 2

    iget v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->RADIUS:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/widget/MiuiDecorCaptionView;)Lcom/miui/freeform/IMiuiFreeformWindowService;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mFreeformService:Lcom/miui/freeform/IMiuiFreeformWindowService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/widget/MiuiDecorCaptionView;Lcom/miui/freeform/IMiuiFreeformWindowService;)Lcom/miui/freeform/IMiuiFreeformWindowService;
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mFreeformService:Lcom/miui/freeform/IMiuiFreeformWindowService;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/widget/MiuiDecorCaptionView;Landroid/view/View;)Landroid/view/View;
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMobileqqView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/widget/MiuiDecorCaptionView;F)F
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->dipToPx(F)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/widget/MiuiDecorCaptionView;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getStackId()I

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41300000    # 11.0f

    iput v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->RADIUS:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mShow:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragging:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOverlayWithAppContent:Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMoveRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/internal/widget/MiuiDecorCaptionView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$1;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mFreeformConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/internal/widget/MiuiDecorCaptionView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$2;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/DecorCaptionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x41300000    # 11.0f

    iput v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->RADIUS:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mShow:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragging:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOverlayWithAppContent:Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMoveRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/internal/widget/MiuiDecorCaptionView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$1;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mFreeformConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/internal/widget/MiuiDecorCaptionView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$2;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/DecorCaptionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x41300000    # 11.0f

    iput v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->RADIUS:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mShow:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragging:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOverlayWithAppContent:Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMoveRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/internal/widget/MiuiDecorCaptionView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$1;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mFreeformConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/internal/widget/MiuiDecorCaptionView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$2;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private dipToPx(F)F
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private getStackId()I
    .registers 6

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v0

    if-eqz v0, :cond_d

    :try_start_9
    invoke-interface {v0}, Landroid/view/Window$WindowControllerCallback;->getWindowStackId()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_12

    move-result v2

    :cond_d
    :goto_d
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1d

    const/4 v3, 0x1

    return v3

    :catch_12
    move-exception v1

    const-string/jumbo v3, "MiuiDecorCaptionView"

    const-string/jumbo v4, "Failed to get the workspace ID of a PhoneWindow."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_1d
    return v2
.end method

.method private init(Landroid/content/Context;)V
    .registers 6

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragSlop:I

    new-instance v2, Landroid/view/GestureDetector;

    invoke-direct {v2, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mGestureDetector:Landroid/view/GestureDetector;

    const-string/jumbo v2, "security"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/security/SecurityManager;

    iput-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mSecurityManager:Lmiui/security/SecurityManager;

    const-string/jumbo v2, "vendor"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lmiui/util/FeatureParser;->hasFeature(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_42

    const-string/jumbo v2, "vendor"

    invoke-static {v2}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mediatek"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->RADIUS:F

    const-string/jumbo v2, "MiuiDecorCaptionView"

    const-string/jumbo v3, "MTK can not support full screen RoundRect perfectly, so do not round"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "miui.intent.action.FREEFORM_WINDOW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "com.miui.freeform"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mFreeformConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private isFillingScreen()Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getWindowSystemUiVisibility()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getSystemUiVisibility()I

    move-result v2

    or-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xa05

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method private passedSlop(II)Z
    .registers 6

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDownX:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragSlop:I

    if-gt v1, v2, :cond_19

    iget v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDownY:I

    sub-int v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragSlop:I

    if-le v1, v2, :cond_1a

    :cond_19
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private resizeWindowDismiss()V
    .registers 6

    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mFreeformService:Lcom/miui/freeform/IMiuiFreeformWindowService;

    if-eqz v3, :cond_1e

    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getAttachedActivityInstance()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/app/IActivityManager;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mFreeformService:Lcom/miui/freeform/IMiuiFreeformWindowService;

    invoke-interface {v3, v2}, Lcom/miui/freeform/IMiuiFreeformWindowService;->windowDismiss(I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1e} :catch_1f

    :cond_1e
    :goto_1e
    return-void

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1e
.end method

.method private updateCaptionVisibility()V
    .registers 4

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->isFillingScreen()Z

    move-result v1

    if-nez v1, :cond_27

    iget-boolean v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mShow:Z

    xor-int/lit8 v0, v1, 0x1

    :goto_a
    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    if-eqz v0, :cond_29

    const/16 v1, 0x8

    :goto_10
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMobileqqView:Landroid/view/View;

    if-eqz v1, :cond_26

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMobileqqView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mShow:Z

    if-eqz v1, :cond_2b

    const/4 v1, 0x0

    :goto_23
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_26
    return-void

    :cond_27
    const/4 v0, 0x1

    goto :goto_a

    :cond_29
    const/4 v1, 0x0

    goto :goto_10

    :cond_2b
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_23
.end method

.method private updateOutLineProvider()V
    .registers 4

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getStackId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2a

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->setClipToOutline(Z)V

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    if-nez v0, :cond_29

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->resizeWindowDismiss()V

    :cond_29
    return-void

    :cond_2a
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 8

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.tencent.mm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2b
    instance-of v1, p3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v1, :cond_50

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "params "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " must subclass MarginLayoutParams"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_50
    if-ge p2, v3, :cond_58

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getChildCount()I

    move-result v1

    if-lt v1, v3, :cond_61

    :cond_58
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "DecorCaptionView can only handle 1 client view"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_61
    const/4 v1, 0x0

    invoke-super {p0, p1, v1, p3}, Lcom/android/internal/widget/DecorCaptionView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.tencent.mobileqq"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mRoot:Landroid/view/ViewGroup;

    if-eqz v1, :cond_8c

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mRoot:Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/internal/widget/MiuiDecorCaptionView$3;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$3;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :cond_8c
    return-void
.end method

.method public buildTouchDispatchChildList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCaption()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    return-object v0
.end method

.method public getCaptionHeight()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isCaptionShowing()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mShow:Z

    return v0
.end method

.method public onConfigurationChanged(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mShow:Z

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->updateCaptionVisibility()V

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->updateOutLineProvider()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Lcom/android/internal/widget/DecorCaptionView;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->resizeWindowDismiss()V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Lcom/android/internal/widget/DecorCaptionView;->onFinishInflate()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_35

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMoveRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMove:Landroid/view/View;

    iput-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mClickTarget:Landroid/view/View;

    :cond_1d
    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_29

    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMaximize:Landroid/view/View;

    iput-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mClickTarget:Landroid/view/View;

    :cond_29
    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mClose:Landroid/view/View;

    iput-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mClickTarget:Landroid/view/View;

    :cond_35
    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mClickTarget:Landroid/view/View;

    if-eqz v3, :cond_3a

    const/4 v2, 0x1

    :cond_3a
    return v2
.end method

.method protected onLayout(ZIIII)V
    .registers 12

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_81

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v0, v1, v2

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMove:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMoveRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMaximize:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mClose:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    :goto_3f
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v1, :cond_58

    iget-boolean v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOverlayWithAppContent:Z

    if-eqz v1, :cond_92

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    :cond_58
    :goto_58
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/policy/PhoneWindow;->notifyRestrictedCaptionAreaCallback(IIII)V

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getElevation()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setElevation(F)V

    return-void

    :cond_81
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMoveRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_3f

    :cond_92
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_58
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method protected onMeasure(II)V
    .registers 9

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_37

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/MiuiDecorCaptionView;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    :goto_1a
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOverlayWithAppContent:Z

    if-eqz v0, :cond_39

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/MiuiDecorCaptionView;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_2b
    :goto_2b
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->setMeasuredDimension(II)V

    return-void

    :cond_37
    const/4 v5, 0x0

    goto :goto_1a

    :cond_39
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/MiuiDecorCaptionView;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_2b
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 15

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    iget-object v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mSecurityManager:Lmiui/security/SecurityManager;

    if-nez v7, :cond_14

    iget-object v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "security"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/security/SecurityManager;

    iput-object v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mSecurityManager:Lmiui/security/SecurityManager;

    :cond_14
    iget-object v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mSecurityManager:Lmiui/security/SecurityManager;

    if-nez v7, :cond_19

    return v11

    :cond_19
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    :try_start_1d
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getRootView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getAttachedActivityInstance()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Landroid/app/IActivityManager;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mClickTarget:Landroid/view/View;

    iget-object v8, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMove:Landroid/view/View;

    if-ne v7, v8, :cond_94

    iget-object v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mFreeformService:Lcom/miui/freeform/IMiuiFreeformWindowService;

    if-nez v7, :cond_51

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v7, "miui.intent.action.FREEFORM_WINDOW"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "com.miui.freeform"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mFreeformConnection:Landroid/content/ServiceConnection;

    const/4 v9, 0x1

    invoke-virtual {v7, v2, v8, v9}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_51
    iget-object v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mFreeformService:Lcom/miui/freeform/IMiuiFreeformWindowService;

    if-eqz v7, :cond_5b

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getStackId()I

    move-result v7

    if-eq v7, v12, :cond_5c

    :cond_5b
    return v11

    :cond_5c
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "input_method"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v5, 0x0

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v8, 0x3

    if-lt v7, v8, :cond_75

    new-instance v5, Lcom/android/internal/widget/MiuiDecorCaptionView$4;

    const/4 v7, 0x0

    invoke-direct {v5, p0, v7, v6}, Lcom/android/internal/widget/MiuiDecorCaptionView$4;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;Landroid/os/Handler;I)V

    :cond_75
    iget-object v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v1, v7, v8, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    move-result v3

    if-nez v3, :cond_93

    iget-object v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mFreeformService:Lcom/miui/freeform/IMiuiFreeformWindowService;

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Lcom/miui/freeform/IMiuiFreeformWindowService;->windowResize(ILjava/lang/String;)V

    :cond_93
    :goto_93
    return v10

    :cond_94
    iget-object v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mClickTarget:Landroid/view/View;

    iget-object v8, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mClose:Landroid/view/View;

    if-ne v7, v8, :cond_c0

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "input_method"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v8, v9}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    iget-object v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mSecurityManager:Lmiui/security/SecurityManager;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v7, v6, v8, v9}, Lmiui/security/SecurityManager;->moveTaskToStack(IIZ)I

    goto :goto_93

    :catch_be
    move-exception v0

    goto :goto_93

    :cond_c0
    iget-object v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mClickTarget:Landroid/view/View;

    iget-object v8, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMaximize:Landroid/view/View;

    if-ne v7, v8, :cond_93

    iget-object v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mSecurityManager:Lmiui/security/SecurityManager;

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v7, v6, v8, v9}, Lmiui/security/SecurityManager;->moveTaskToStack(IIZ)I
    :try_end_cd
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_cd} :catch_be

    goto :goto_93
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 11

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v2, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v3, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2f

    const/4 v0, 0x1

    :goto_18
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_31

    const/4 v1, 0x1

    :goto_21
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_6e

    :cond_28
    :goto_28
    iget-boolean v5, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragging:Z

    if-nez v5, :cond_2e

    iget-boolean v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCheckForDragging:Z

    :cond_2e
    return v4

    :cond_2f
    const/4 v0, 0x0

    goto :goto_18

    :cond_31
    const/4 v1, 0x0

    goto :goto_21

    :pswitch_33
    iget-boolean v5, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mShow:Z

    if-nez v5, :cond_38

    return v7

    :cond_38
    if-eqz v0, :cond_3c

    if-eqz v1, :cond_28

    :cond_3c
    iput-boolean v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCheckForDragging:Z

    iput v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDownX:I

    iput v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDownY:I

    goto :goto_28

    :pswitch_43
    iget-boolean v5, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragging:Z

    if-nez v5, :cond_28

    iget-boolean v5, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCheckForDragging:Z

    if-eqz v5, :cond_28

    if-nez v0, :cond_53

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/MiuiDecorCaptionView;->passedSlop(II)Z

    move-result v5

    if-eqz v5, :cond_28

    :cond_53
    iput-boolean v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCheckForDragging:Z

    iput-boolean v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragging:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/widget/MiuiDecorCaptionView;->startMovingTask(FF)Z

    goto :goto_28

    :pswitch_63
    iget-boolean v5, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragging:Z

    if-eqz v5, :cond_28

    iput-boolean v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragging:Z

    iget-boolean v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCheckForDragging:Z

    xor-int/lit8 v4, v4, 0x1

    return v4

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_33
        :pswitch_63
        :pswitch_43
        :pswitch_63
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mClickTarget:Landroid/view/View;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_14

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    :cond_14
    iput-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mClickTarget:Landroid/view/View;

    :cond_16
    return v2

    :cond_17
    const/4 v1, 0x0

    return v1
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_8

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->resizeWindowDismiss()V

    :cond_8
    return-void
.end method

.method public removeContentView()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    :cond_c
    return-void
.end method

.method public setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;Z)V
    .registers 5

    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    iput-boolean p2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mShow:Z

    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->isOverlayWithDecorCaptionEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOverlayWithAppContent:Z

    iget-boolean v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOverlayWithAppContent:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_14
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const v0, 0x1020318

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMove:Landroid/view/View;

    const v0, 0x10202f8

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMaximize:Landroid/view/View;

    const v0, 0x1020201

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mClose:Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_4b

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMove:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4b
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->updateOutLineProvider()V

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->updateCaptionVisibility()V

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->invalidate()V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
