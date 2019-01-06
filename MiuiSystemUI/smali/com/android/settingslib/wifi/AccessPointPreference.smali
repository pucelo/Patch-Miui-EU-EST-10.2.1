.class public Lcom/android/settingslib/wifi/AccessPointPreference;
.super Lmiui/preference/RadioButtonPreference;
.source "AccessPointPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/wifi/AccessPointPreference$1;,
        Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;
    }
.end annotation


# static fields
.field private static final STATE_METERED:[I

.field private static final STATE_SECURED:[I

.field public static final WIFI_CONNECTION_STRENGTH:[I

.field private static final wifi_friction_attributes:[I


# instance fields
.field protected mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private final mBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

.field private final mBadgePadding:I

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mForSavedNetworks:Z

.field private final mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

.field private mLevel:I

.field private final mNotifyChanged:Ljava/lang/Runnable;

.field private mTitleView:Landroid/widget/TextView;

.field private mWifiBadge:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [I

    sget v1, Lcom/android/settingslib/R$attr;->state_encrypted:I

    aput v1, v0, v2

    sput-object v0, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_SECURED:[I

    new-array v0, v3, [I

    sget v1, Lcom/android/settingslib/R$attr;->state_metered:I

    aput v1, v0, v2

    sput-object v0, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_METERED:[I

    new-array v0, v3, [I

    sget v1, Lcom/android/settingslib/R$attr;->wifi_friction:I

    aput v1, v0, v2

    sput-object v0, Lcom/android/settingslib/wifi/AccessPointPreference;->wifi_friction_attributes:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    sget v1, Lcom/android/settingslib/R$string;->accessibility_wifi_one_bar:I

    aput v1, v0, v2

    sget v1, Lcom/android/settingslib/R$string;->accessibility_wifi_two_bars:I

    aput v1, v0, v3

    sget v1, Lcom/android/settingslib/R$string;->accessibility_wifi_three_bars:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/android/settingslib/R$string;->accessibility_wifi_signal_full:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sput-object v0, Lcom/android/settingslib/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    iput v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mWifiBadge:I

    new-instance v0, Lcom/android/settingslib/wifi/AccessPointPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/AccessPointPreference$1;-><init>(Lcom/android/settingslib/wifi/AccessPointPreference;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    iput-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    iput v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgePadding:I

    iput-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    return-void
.end method

.method private bindFrictionImage(Landroid/widget/ImageView;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_SECURED:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isMetered()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_METERED:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_0
.end method

.method private postNotifyChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected notifyChanged()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->postNotifyChanged()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lmiui/preference/RadioButtonPreference;->notifyChanged()V

    goto :goto_0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lmiui/preference/RadioButtonPreference;->onBindView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_1
    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    sget v2, Lcom/android/settingslib/R$id;->friction_icon:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/android/settingslib/wifi/AccessPointPreference;->bindFrictionImage(Landroid/widget/ImageView;)V

    return-void
.end method
