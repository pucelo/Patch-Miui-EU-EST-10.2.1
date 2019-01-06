.class public abstract Landroid/preference/TwoStatePreference;
.super Landroid/preference/Preference;
.source "TwoStatePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/TwoStatePreference$SavedState;
    }
.end annotation


# instance fields
.field mChecked:Z

.field private mCheckedSet:Z

.field private mDisableDependentsState:Z

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public getDisableDependentsState()Z
    .registers 2

    iget-boolean v0, p0, Landroid/preference/TwoStatePreference;->mDisableDependentsState:Z

    return v0
.end method

.method public getSummaryOff()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummaryOn()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isChecked()Z
    .registers 2

    iget-boolean v0, p0, Landroid/preference/TwoStatePreference;->mChecked:Z

    return v0
.end method

.method protected onClick()V
    .registers 3

    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/TwoStatePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_16
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/preference/TwoStatePreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_14

    :cond_10
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_14
    move-object v0, p1

    check-cast v0, Landroid/preference/TwoStatePreference$SavedState;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v1, v0, Landroid/preference/TwoStatePreference$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_b

    return-object v1

    :cond_b
    new-instance v0, Landroid/preference/TwoStatePreference$SavedState;

    invoke-direct {v0, v1}, Landroid/preference/TwoStatePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Landroid/preference/TwoStatePreference$SavedState;->checked:Z

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .registers 4

    if-eqz p1, :cond_c

    iget-boolean v0, p0, Landroid/preference/TwoStatePreference;->mChecked:Z

    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->getPersistedBoolean(Z)Z

    move-result v0

    :goto_8
    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    :cond_c
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_8
.end method

.method public setChecked(Z)V
    .registers 4

    iget-boolean v1, p0, Landroid/preference/TwoStatePreference;->mChecked:Z

    if-eq v1, p1, :cond_22

    const/4 v0, 0x1

    :goto_5
    if-nez v0, :cond_d

    iget-boolean v1, p0, Landroid/preference/TwoStatePreference;->mCheckedSet:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_21

    :cond_d
    iput-boolean p1, p0, Landroid/preference/TwoStatePreference;->mChecked:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/preference/TwoStatePreference;->mCheckedSet:Z

    invoke-virtual {p0, p1}, Landroid/preference/TwoStatePreference;->persistBoolean(Z)Z

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->shouldDisableDependents()Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/preference/TwoStatePreference;->notifyDependencyChange(Z)V

    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->notifyChanged()V

    :cond_21
    return-void

    :cond_22
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setDisableDependentsState(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/preference/TwoStatePreference;->mDisableDependentsState:Z

    return-void
.end method

.method public setSummaryOff(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSummaryOff(Ljava/lang/CharSequence;)V
    .registers 3

    iput-object p1, p0, Landroid/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->notifyChanged()V

    :cond_b
    return-void
.end method

.method public setSummaryOn(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSummaryOn(Ljava/lang/CharSequence;)V
    .registers 3

    iput-object p1, p0, Landroid/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->notifyChanged()V

    :cond_b
    return-void
.end method

.method public shouldDisableDependents()Z
    .registers 3

    iget-boolean v1, p0, Landroid/preference/TwoStatePreference;->mDisableDependentsState:Z

    if-eqz v1, :cond_d

    iget-boolean v0, p0, Landroid/preference/TwoStatePreference;->mChecked:Z

    :goto_6
    if-nez v0, :cond_12

    invoke-super {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v1

    :goto_c
    return v1

    :cond_d
    iget-boolean v1, p0, Landroid/preference/TwoStatePreference;->mChecked:Z

    xor-int/lit8 v0, v1, 0x1

    goto :goto_6

    :cond_12
    const/4 v1, 0x1

    goto :goto_c
.end method

.method syncSummaryView(Landroid/view/View;)V
    .registers 7

    const v4, 0x1020010

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_3e

    const/4 v3, 0x1

    iget-boolean v4, p0, Landroid/preference/TwoStatePreference;->mChecked:Z

    if-eqz v4, :cond_3f

    iget-object v4, p0, Landroid/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3f

    iget-object v4, p0, Landroid/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    :cond_20
    :goto_20
    if-eqz v3, :cond_30

    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_30

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    :cond_30
    const/16 v0, 0x8

    if-nez v3, :cond_35

    const/4 v0, 0x0

    :cond_35
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v0, v4, :cond_3e

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3e
    return-void

    :cond_3f
    iget-boolean v4, p0, Landroid/preference/TwoStatePreference;->mChecked:Z

    if-nez v4, :cond_20

    iget-object v4, p0, Landroid/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_20

    iget-object v4, p0, Landroid/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    goto :goto_20
.end method
