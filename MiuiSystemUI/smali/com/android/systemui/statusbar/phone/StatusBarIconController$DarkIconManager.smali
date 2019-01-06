.class public Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;
.super Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;
.source "StatusBarIconController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarIconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DarkIconManager"
.end annotation


# static fields
.field private static sFilterColor:I


# instance fields
.field private final mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

.field private mDarkIntensity:F

.field private mDarkReceiver:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

.field private mIconHPadding:I

.field private mShieldDarkReceiver:Z

.field private mTintArea:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mDarkIntensity:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mShieldDarkReceiver:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mTintArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get3()I
    .locals 1

    sget v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->sFilterColor:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mDarkIntensity:F

    return p1
.end method

.method static synthetic -set1(I)I
    .locals 0

    sput p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->sFilterColor:I

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->sFilterColor:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;-><init>(Landroid/view/ViewGroup;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mTintArea:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070433

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mIconHPadding:I

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mDarkReceiver:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mDarkReceiver:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method private applyDark(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mTintArea:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mDarkIntensity:F

    invoke-static {v2, v0, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->inDarkMode(Landroid/graphics/Rect;Landroid/view/View;F)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/Icons;->get(Ljava/lang/Integer;Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageResource(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mDarkReceiver:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method protected onCreateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mIconSize:I

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mIconHPadding:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mIconHPadding:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method protected onIconAdded(ILjava/lang/String;ZLcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->addIcon(ILjava/lang/String;ZLcom/android/internal/statusbar/StatusBarIcon;)Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->applyDark(I)V

    return-void
.end method

.method public onSetIcon(ILjava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onSetIcon(ILjava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->applyDark(I)V

    return-void
.end method

.method public setDarkIntensity(Landroid/graphics/Rect;FI)V
    .locals 1

    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mDarkIntensity:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setShieldDarkReceiver(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mShieldDarkReceiver:Z

    return-void
.end method
