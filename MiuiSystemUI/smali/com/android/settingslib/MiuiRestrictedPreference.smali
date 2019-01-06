.class public Lcom/android/settingslib/MiuiRestrictedPreference;
.super Lcom/android/settingslib/MiuiTwoTargetPreference;
.source "MiuiRestrictedPreference.java"


# instance fields
.field mHelper:Lcom/android/settingslib/MiuiRestrictedPreferenceHelper;

.field private mRightValue:Ljava/lang/CharSequence;

.field private mShowRightArrow:Z

.field private mSummary2Value:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/MiuiRestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settingslib/MiuiRestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/MiuiTwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/android/settingslib/MiuiRestrictedPreferenceHelper;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/settingslib/MiuiRestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settingslib/MiuiRestrictedPreference;->mHelper:Lcom/android/settingslib/MiuiRestrictedPreferenceHelper;

    sget v0, Lmiui/R$layout;->preference_value:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/MiuiRestrictedPreference;->setLayoutResource(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/MiuiRestrictedPreference;->mSummary2Value:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/MiuiRestrictedPreference;->mShowRightArrow:Z

    return-void
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .locals 1

    sget v0, Lcom/android/settingslib/R$layout;->restricted_icon:I

    return v0
.end method

.method public isDisabledByAdmin()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/MiuiRestrictedPreference;->mHelper:Lcom/android/settingslib/MiuiRestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/MiuiRestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/MiuiRestrictedPreference;->mHelper:Lcom/android/settingslib/MiuiRestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/MiuiRestrictedPreferenceHelper;->onAttachedToHierarchy()V

    invoke-super {p0, p1}, Lcom/android/settingslib/MiuiTwoTargetPreference;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 8

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-super {p0, p1}, Lcom/android/settingslib/MiuiTwoTargetPreference;->onBindView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/android/settingslib/MiuiRestrictedPreference;->mHelper:Lcom/android/settingslib/MiuiRestrictedPreferenceHelper;

    invoke-virtual {v5, p1}, Lcom/android/settingslib/MiuiRestrictedPreferenceHelper;->onBindView(Landroid/view/View;)V

    sget v5, Lcom/android/settingslib/R$id;->restricted_icon:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/MiuiRestrictedPreference;->isDisabledByAdmin()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    :goto_0
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    sget v5, Lmiui/R$id;->arrow_right:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-boolean v5, p0, Lcom/android/settingslib/MiuiRestrictedPreference;->mShowRightArrow:Z

    if-eqz v5, :cond_4

    move v5, v6

    :goto_1
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    sget v5, Lmiui/R$id;->value_right:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x1020010

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v4, :cond_6

    iget-boolean v5, p0, Lcom/android/settingslib/MiuiRestrictedPreference;->mSummary2Value:Z

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/android/settingslib/MiuiRestrictedPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_3
    return-void

    :cond_3
    move v5, v7

    goto :goto_0

    :cond_4
    move v5, v7

    goto :goto_1

    :cond_5
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/settingslib/MiuiRestrictedPreference;->mRightValue:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settingslib/MiuiRestrictedPreference;->mRightValue:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public performClick(Landroid/preference/PreferenceScreen;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/MiuiRestrictedPreference;->mHelper:Lcom/android/settingslib/MiuiRestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/MiuiRestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/settingslib/MiuiTwoTargetPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/MiuiRestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/MiuiRestrictedPreference;->mHelper:Lcom/android/settingslib/MiuiRestrictedPreferenceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/MiuiRestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/MiuiTwoTargetPreference;->setEnabled(Z)V

    return-void
.end method

.method protected shouldHideSecondTarget()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingslib/MiuiRestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
