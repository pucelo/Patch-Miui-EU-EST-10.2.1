.class public Lcom/android/settingslib/RestrictedSwitchPreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "RestrictedSwitchPreference.java"


# instance fields
.field mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

.field mRestrictedSwitchSummary:Ljava/lang/String;

.field mUseAdditionalSummary:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    sget v0, Landroid/support/v7/preference/R$attr;->switchPreferenceStyle:I

    const v1, 0x101036d

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v5, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mUseAdditionalSummary:Z

    iput-object v6, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    sget v4, Lcom/android/settingslib/R$layout;->restricted_switch_widget:I

    invoke-virtual {p0, v4}, Lcom/android/settingslib/RestrictedSwitchPreference;->setWidgetLayoutResource(I)V

    new-instance v4, Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-direct {v4, p1, p0, p2}, Lcom/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroid/support/v7/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    if-eqz p2, :cond_2

    sget-object v4, Lcom/android/settingslib/R$styleable;->RestrictedSwitchPreference:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v4, Lcom/android/settingslib/R$styleable;->RestrictedSwitchPreference_useAdditionalSummary:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x12

    if-ne v4, v7, :cond_6

    iget v4, v3, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mUseAdditionalSummary:Z

    :cond_0
    sget v4, Lcom/android/settingslib/R$styleable;->RestrictedSwitchPreference_restrictedSwitchSummary:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz v2, :cond_1

    iget v4, v2, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x3

    if-ne v4, v7, :cond_1

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_7

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_1
    if-nez v1, :cond_8

    move-object v4, v6

    :goto_2
    iput-object v4, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    :cond_2
    iget-object v4, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    if-nez v4, :cond_3

    sget v4, Lcom/android/settingslib/R$string;->disabled_by_admin:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    :cond_3
    iget-boolean v4, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mUseAdditionalSummary:Z

    if-eqz v4, :cond_4

    sget v4, Lcom/android/settingslib/R$layout;->restricted_switch_preference:I

    invoke-virtual {p0, v4}, Lcom/android/settingslib/RestrictedSwitchPreference;->setLayoutResource(I)V

    invoke-virtual {p0, v5}, Lcom/android/settingslib/RestrictedSwitchPreference;->useAdminDisabledSummary(Z)V

    :cond_4
    return-void

    :cond_5
    move v4, v5

    goto :goto_0

    :cond_6
    move v4, v5

    goto :goto_0

    :cond_7
    iget-object v1, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_8
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method


# virtual methods
.method public performClick()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    :cond_0
    return-void
.end method

.method public useAdminDisabledSummary(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->useAdminDisabledSummary(Z)V

    return-void
.end method
