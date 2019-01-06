.class public Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;
.super Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;
.source "LockScreenMagazinePreGlobalView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$1;,
        Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$StateController;
    }
.end annotation


# static fields
.field private static final EXPECT_BROWSER_PACKAGE_NAME:[Ljava/lang/String;

.field private static IS_LOG_DEBUG:Z

.field private static sTypefaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAuthor:Ljava/lang/String;

.field private mBottomNotifyArea:Landroid/view/View;

.field private mContentTextView:Landroid/widget/TextView;

.field private mDropDownMarkView:Landroid/widget/ImageView;

.field private mDropDownNotifyTextView:Landroid/widget/TextView;

.field private mDropDownValueAnimator:Landroid/animation/ValueAnimator;

.field private mFromContainerView:Landroid/view/View;

.field private mFromLogoImageView:Landroid/widget/ImageView;

.field private mFromTextView:Landroid/widget/TextView;

.field private mHasLinkInfo:Z

.field private mLightMode:Z

.field mReMeasureAndSetTitleTask:Ljava/lang/Runnable;

.field private mShowLogoStateController:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$StateController;

.field private mSpringBackAnimator:Landroid/animation/ValueAnimator;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get3(Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;Landroid/widget/TextView;ILjava/lang/String;III)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->measureAndSetTitle(Landroid/widget/TextView;ILjava/lang/String;III)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.mi.globalbrowser"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.browser"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.chrome"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->EXPECT_BROWSER_PACKAGE_NAME:[Ljava/lang/String;

    const-string/jumbo v0, "WallPaperDesGlobalView"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->IS_LOG_DEBUG:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->sTypefaces:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$StateController;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$StateController;-><init>(I)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mShowLogoStateController:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$StateController;

    new-instance v0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$1;-><init>(Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mReMeasureAndSetTitleTask:Ljava/lang/Runnable;

    return-void
.end method

.method private static cancelAnim(Landroid/animation/Animator;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private cancelAnimator()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->cancelSpringBackAnimator()V

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->cancelDropDownAnimator()V

    return-void
.end method

.method private cancelDropDownAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mDropDownValueAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->cancelAnim(Landroid/animation/Animator;)V

    return-void
.end method

.method private cancelSpringBackAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mSpringBackAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->cancelAnim(Landroid/animation/Animator;)V

    return-void
.end method

.method public static getMiuiPreviewNormalTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    const-string/jumbo v0, "fonts/Roboto-Light.ttf"

    invoke-static {p0, v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getMiuiPreviewTitleTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    const-string/jumbo v0, "fonts/Roboto-Medium.ttf"

    invoke-static {p0, v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method private getRemoteLogoDrawable(Landroid/content/Context;Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-object v6

    :cond_1
    iget-object v4, p2, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;->cp:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "com.miui.android.fashiongallery"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v6

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_3

    const-string/jumbo v4, ""

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;->cp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_logo"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "drawable"

    const-string/jumbo v5, "com.miui.android.fashiongallery"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    return-object v4

    :cond_3
    const-string/jumbo v4, "dark_"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v6
.end method

.method private static declared-synchronized getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3

    const-class v1, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->sTypefaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->sTypefaces:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->sTypefaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initLayout()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mTitleTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->getMiuiPreviewTitleTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mContentTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->getMiuiPreviewNormalTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mFromTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->getMiuiPreviewNormalTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mDropDownNotifyTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->getMiuiPreviewNormalTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private measureAndSetTitle(Landroid/widget/TextView;ILjava/lang/String;III)V
    .locals 7

    const/4 v6, 0x0

    if-nez p3, :cond_0

    const-string/jumbo p3, ""

    :cond_0
    move-object v1, p3

    if-lez p4, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, p4, :cond_1

    invoke-virtual {v1, v6, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    int-to-float v5, p2

    cmpg-float v5, v0, v5

    if-gtz v5, :cond_4

    int-to-float v5, p6

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_3

    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    int-to-float v5, p2

    div-float v4, v5, v0

    mul-float/2addr v3, v4

    int-to-float v5, p6

    cmpl-float v5, v3, v5

    if-lez v5, :cond_2

    int-to-float v3, p6

    goto :goto_0

    :cond_4
    int-to-float v5, p5

    cmpg-float v5, v3, v5

    if-lez v5, :cond_2

    int-to-float v5, p2

    div-float v4, v5, v0

    mul-float/2addr v3, v4

    int-to-float v5, p5

    cmpg-float v5, v3, v5

    if-gez v5, :cond_2

    int-to-float v3, p5

    goto :goto_0
.end method

.method private reportEvent(Landroid/content/Context;Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;I)V
    .locals 4

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p2, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;->authority:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$3;

    invoke-direct {v1, p0, p2, p3, v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$3;-><init>(Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;ILandroid/content/Context;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private updateFromViewState()V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mShowLogoStateController:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$StateController;

    invoke-static {v1}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$StateController;->-wrap0(Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$StateController;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mShowLogoStateController:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$StateController;

    invoke-static {v1}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$StateController;->-wrap2(Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$StateController;)V

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    iget-boolean v3, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mLightMode:Z

    invoke-direct {p0, v1, v2, v3}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->getRemoteLogoDrawable(Landroid/content/Context;Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mFromLogoImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mFromLogoImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mFromContainerView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mFromLogoImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mAuthor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mFromContainerView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mFromContainerView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->cancelAnimator()V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mReMeasureAndSetTitleTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    const v0, 0x7f0a0336

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mTitleTextView:Landroid/widget/TextView;

    const v0, 0x7f0a0330

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mContentTextView:Landroid/widget/TextView;

    const v0, 0x7f0a0334

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mFromContainerView:Landroid/view/View;

    const v0, 0x7f0a0333

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mFromTextView:Landroid/widget/TextView;

    const v0, 0x7f0a0335

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mFromLogoImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a0331

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mDropDownMarkView:Landroid/widget/ImageView;

    const v0, 0x7f0a0332

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mDropDownNotifyTextView:Landroid/widget/TextView;

    const v0, 0x7f0a032f

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mBottomNotifyArea:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->initLayout()V

    return-void
.end method

.method public refreshWallpaperInfo()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mShowLogoStateController:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$StateController;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$StateController;->-wrap1(Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$StateController;I)V

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    iget-object v1, v3, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;->ex:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "author"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mAuthor:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->updateWallpaperInfo()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iput-object v5, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mAuthor:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object v5, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mAuthor:Ljava/lang/String;

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    const/16 v2, 0xf

    invoke-direct {p0, v0, v1, v2}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->reportEvent(Landroid/content/Context;Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->setVisibility(I)V

    return-void
.end method

.method public updateWallpaperInfo()V
    .locals 11

    const/16 v10, 0x8

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    iget-object v3, v0, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;->title:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    iget-object v8, v0, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;->content:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mContentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v7, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mAuthor:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mFromTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->updateFromViewState()V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;->landingPageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v9, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mHasLinkInfo:Z

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mBottomNotifyArea:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mReMeasureAndSetTitleTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->post(Ljava/lang/Runnable;)Z

    :goto_4
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mTitleTextView:Landroid/widget/TextView;

    const/16 v4, 0x32

    const/16 v5, 0x30

    const/16 v6, 0x48

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->measureAndSetTitle(Landroid/widget/TextView;ILjava/lang/String;III)V

    goto :goto_4

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mContentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mContentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mFromTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u00a9"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mFromTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mHasLinkInfo:Z

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mDropDownMarkView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->mBottomNotifyArea:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method
