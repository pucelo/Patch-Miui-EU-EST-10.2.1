.class public Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;
.super Landroid/widget/LinearLayout;
.source "LockScreenMagazinePreView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$1;,
        Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$2;
    }
.end annotation


# instance fields
.field private mContent:Landroid/widget/TextView;

.field private mDensityDpi:I

.field private mDesLayout:Landroid/widget/LinearLayout;

.field private mFontScale:F

.field private mIsSettingButtonDarkMode:Z

.field private mLinkButton:Landroid/widget/ImageView;

.field private mLinkClickListener:Landroid/view/View$OnClickListener;

.field private mLocaleList:Ljava/lang/Object;

.field protected mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

.field protected mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mPreviewButton:Landroid/widget/TextView;

.field private mResources:Landroid/content/res/Resources;

.field private mSettingButton:Landroid/widget/ImageView;

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private final mWallpaperInfoListener:Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperInfoListener;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$1;-><init>(Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLinkClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$2;-><init>(Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mWallpaperInfoListener:Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperInfoListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$1;-><init>(Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLinkClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$2;-><init>(Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mWallpaperInfoListener:Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperInfoListener;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method private getContentText()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLockScreenMagazineWallpaper()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1103bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    iget-object v1, v1, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;->content:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_1

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    iget-object v0, v1, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;->content:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method private getSettingsIntent()Landroid/content/Intent;
    .locals 4

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;->getLockScreenMagazineSettingsDeepLink(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "from"

    const-string/jumbo v3, "lks_preview"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private getTitleText()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLockScreenMagazineWallpaper()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1103bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    iget-boolean v1, v1, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;->isTitleCustomized:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    iget-object v1, v1, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    iget-object v0, v1, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;->title:Ljava/lang/String;

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    iget-object v1, v1, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_4

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    iget-object v0, v1, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method private setSettingButtonTouchDelegate(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$4;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$4;-><init>(Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;Landroid/view/View;ILandroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateContentText()V
    .locals 3

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->getContentText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mContent:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mContent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mContent:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateDrawableResource()V
    .locals 2

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mSettingButton:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mIsSettingButtonDarkMode:Z

    if-eqz v0, :cond_0

    const v0, 0x7f08025a

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mPreviewButton:Landroid/widget/TextView;

    const v1, 0x7f080257

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->updateLinkButton()V

    return-void

    :cond_0
    const v0, 0x7f080259

    goto :goto_0
.end method

.method private updateFontScale()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0701d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0701c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mPreviewButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0701c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private updateLanguage()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->updateViewsText()V

    return-void
.end method

.method private updateLinkButton()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    iget v0, v0, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;->linkType:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    iget v0, v0, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;->linkType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLinkButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLinkButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLinkClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    iget v0, v0, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;->linkType:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLinkButton:Landroid/widget/ImageView;

    const v1, 0x7f080258

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLinkButton:Landroid/widget/ImageView;

    const v1, 0x7f080730

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLinkButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updatePreviewButtonText()V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLockScreenMagazinePkgExist()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLockScreenMagazineWallpaper()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    iget-object v1, v1, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;->landingPageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mContent:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1103c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mPreviewButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1103c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    iget-object v1, v1, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;->btnText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    iget-object v0, v1, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;->btnText:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mContent:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1101d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11022f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateTitle()V
    .locals 3

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->getTitleText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->updateLinkButton()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mTitle:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateViewsLayoutParams()V
    .locals 12

    const/4 v11, 0x0

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mSettingButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0701cf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0701ce

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual {v3, v11, v5, v6, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mSettingButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mDesLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0701cc

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f0701cd

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f0701cb

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iget-object v9, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f0701ca

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0701d1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v4, v11, v11, v11, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLinkButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0701d0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v2, v5, v11, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLinkButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mContent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0701c8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v1, v11, v11, v11, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mContent:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mPreviewButton:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0701c2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v0, v5, v11, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mPreviewButton:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mPreviewButton:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0701c5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f0701c6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f0701c4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iget-object v9, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f0701c3

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

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

.method public initSettingButton()V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mSettingButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->getSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->resolveIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mSettingButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mSettingButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$3;

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$3;-><init>(Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mSettingButton:Landroid/widget/ImageView;

    const/16 v2, 0x32

    invoke-direct {p0, v1, v2}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->setSettingButtonTouchDelegate(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mWallpaperInfoListener:Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperInfoListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerWallpaperInfoListener(Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperInfoListener;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p1}, Lcom/android/systemui/SystemUICompat;->getLocales(Landroid/content/res/Configuration;)Ljava/lang/Object;

    move-result-object v2

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLocaleList:Ljava/lang/Object;

    if-eq v3, v2, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->updateLanguage()V

    iput-object v2, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLocaleList:Ljava/lang/Object;

    :cond_0
    iget v3, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mFontScale:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->updateFontScale()V

    iput v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mFontScale:F

    :cond_1
    iget v3, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mDensityDpi:I

    if-eq v3, v0, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->updateFontScale()V

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->updateViewsLayoutParams()V

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->updateDrawableResource()V

    iput v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mDensityDpi:I

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mWallpaperInfoListener:Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperInfoListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->unregisterWallpaperInfoListener(Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperInfoListener;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f0a02d6

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mTitle:Landroid/widget/TextView;

    const-string/jumbo v1, "miui-bold"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0a0181

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLinkButton:Landroid/widget/ImageView;

    const v0, 0x7f0a0096

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mContent:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mContent:Landroid/widget/TextView;

    const-string/jumbo v1, "miui-light"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0a0212

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mPreviewButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mPreviewButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f11006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0289

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mSettingButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->initSettingButton()V

    const v0, 0x7f0a00ac

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mDesLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02d8

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mTitleLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method public openAd()Z
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLockScreenMagazineWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;->opendAd(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshWallpaperInfo()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockScreenMagazineWallpaperInfo()Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    if-eqz v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    iget-object v1, v1, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;->content:Ljava/lang/String;

    const-string/jumbo v2, "\\s*"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;->content:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->updateViewsText()V

    :cond_1
    return-void
.end method

.method public setSettingButtonDarkMode(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mIsSettingButtonDarkMode:Z

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mSettingButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const v0, 0x7f08025a

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void

    :cond_0
    const v0, 0x7f080259

    goto :goto_0
.end method

.method public setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-void
.end method

.method public updateViewsText()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->updateTitle()V

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->updateContentText()V

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->updatePreviewButtonText()V

    return-void
.end method
