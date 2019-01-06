.class public Lcom/android/settingslib/TwoTargetPreference;
.super Landroid/support/v7/preference/Preference;
.source "TwoTargetPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/settingslib/TwoTargetPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0}, Lcom/android/settingslib/TwoTargetPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    sget v1, Lcom/android/settingslib/R$layout;->preference_two_target:I

    invoke-virtual {p0, v1}, Lcom/android/settingslib/TwoTargetPreference;->setLayoutResource(I)V

    invoke-virtual {p0}, Lcom/android/settingslib/TwoTargetPreference;->getSecondTargetResId()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/TwoTargetPreference;->setWidgetLayoutResource(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
