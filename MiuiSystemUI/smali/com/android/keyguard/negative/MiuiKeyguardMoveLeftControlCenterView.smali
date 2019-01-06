.class public Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;
.super Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;
.source "MiuiKeyguardMoveLeftControlCenterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$1;,
        Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$2;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFontScale:F

.field private mListener:Landroid/view/View$OnClickListener;

.field private mLocaleList:Ljava/lang/Object;

.field private mTorchLightImageView:Landroid/widget/ImageView;

.field private mTorchStateReceiver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mTorchLightImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$1;-><init>(Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mTorchStateReceiver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$2;-><init>(Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;)V

    iput-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private initKeyguardLeftItem(III)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0156

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v1, 0x7f0a0157

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070197

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private initKeyguardLeftItems()V
    .locals 3

    const v0, 0x7f0a0352

    const v1, 0x7f08073b

    const v2, 0x7f110726

    invoke-direct {p0, v0, v1, v2}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->initKeyguardLeftItem(III)V

    const v0, 0x7f0a0353

    const v1, 0x7f08073c

    const v2, 0x7f110727

    invoke-direct {p0, v0, v1, v2}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->initKeyguardLeftItem(III)V

    const v0, 0x7f0a0354

    const v1, 0x7f08073d

    const v2, 0x7f110728

    invoke-direct {p0, v0, v1, v2}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->initKeyguardLeftItem(III)V

    const v0, 0x7f0a0355

    const v1, 0x7f08073e

    const v2, 0x7f110729

    invoke-direct {p0, v0, v1, v2}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->initKeyguardLeftItem(III)V

    const v0, 0x7f0a0356

    const v1, 0x7f08073f

    const v2, 0x7f11072a

    invoke-direct {p0, v0, v1, v2}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->initKeyguardLeftItem(III)V

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hideLockScreenInActivityManager()V
    .locals 3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v1, v2}, Landroid/app/ActivityManagerCompat;->setLockScreenShown(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public initLeftView()V
    .locals 0

    return-void
.end method

.method public isSupportRightMove()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p1}, Lcom/android/systemui/SystemUICompat;->getLocales(Landroid/content/res/Configuration;)Ljava/lang/Object;

    move-result-object v1

    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iget-object v2, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mLocaleList:Ljava/lang/Object;

    if-eq v2, v1, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->initKeyguardLeftItems()V

    iput-object v1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mLocaleList:Ljava/lang/Object;

    :cond_0
    iget v2, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mFontScale:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->initKeyguardLeftItems()V

    iput v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mFontScale:F

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;->onFinishInflate()V

    const v0, 0x7f0a0352

    invoke-virtual {p0, v0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0353

    invoke-virtual {p0, v0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0354

    invoke-virtual {p0, v0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0355

    invoke-virtual {p0, v0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0356

    invoke-virtual {p0, v0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a014f

    invoke-virtual {p0, v0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mTorchLightImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->initKeyguardLeftItems()V

    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "torch_state"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mTorchStateReceiver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {v3, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method public uploadData()V
    .locals 0

    return-void
.end method
