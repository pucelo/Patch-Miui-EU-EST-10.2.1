.class public Landroid/preference/Preference;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/Preference$BaseSavedState;,
        Landroid/preference/Preference$OnPreferenceChangeInternalListener;,
        Landroid/preference/Preference$OnPreferenceChangeListener;,
        Landroid/preference/Preference$OnPreferenceClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/preference/Preference;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_ORDER:I = 0x7fffffff


# instance fields
.field private mBaseMethodCalled:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultValue:Ljava/lang/Object;

.field private mDependencyKey:Ljava/lang/String;

.field private mDependencyMet:Z

.field private mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFragment:Ljava/lang/String;

.field private mHasSingleLineTitleAttr:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mIconSpaceReserved:Z

.field private mId:J

.field private mIntent:Landroid/content/Intent;

.field private mKey:Ljava/lang/String;

.field private mLayoutResId:I

.field private mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

.field private mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mOrder:I

.field private mParentDependencyMet:Z

.field private mParentGroup:Landroid/preference/PreferenceGroup;

.field private mPersistent:Z

.field private mPreferenceDataStore:Landroid/preference/PreferenceDataStore;

.field private mPreferenceManager:Landroid/preference/PreferenceManager;

.field private mRecycleEnabled:Z

.field private mRequiresKey:Z

.field private mSelectable:Z

.field private mShouldDisableView:Z

.field private mSingleLineTitle:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleRes:I

.field private mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x101008e

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v3, 0x7fffffff

    iput v3, p0, Landroid/preference/Preference;->mOrder:I

    iput-boolean v4, p0, Landroid/preference/Preference;->mEnabled:Z

    iput-boolean v4, p0, Landroid/preference/Preference;->mSelectable:Z

    iput-boolean v4, p0, Landroid/preference/Preference;->mPersistent:Z

    iput-boolean v4, p0, Landroid/preference/Preference;->mDependencyMet:Z

    iput-boolean v4, p0, Landroid/preference/Preference;->mParentDependencyMet:Z

    iput-boolean v4, p0, Landroid/preference/Preference;->mRecycleEnabled:Z

    iput-boolean v4, p0, Landroid/preference/Preference;->mSingleLineTitle:Z

    iput-boolean v4, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    const v3, 0x10900ba

    iput v3, p0, Landroid/preference/Preference;->mLayoutResId:I

    iput-object p1, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_2d
    if-ltz v2, :cond_ca

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    packed-switch v1, :pswitch_data_ce

    :goto_36
    add-int/lit8 v2, v2, -0x1

    goto :goto_2d

    :pswitch_39
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/preference/Preference;->mIconResId:I

    goto :goto_36

    :pswitch_40
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    goto :goto_36

    :pswitch_47
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/preference/Preference;->mTitleRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    goto :goto_36

    :pswitch_54
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    goto :goto_36

    :pswitch_5b
    iget v3, p0, Landroid/preference/Preference;->mOrder:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/preference/Preference;->mOrder:I

    goto :goto_36

    :pswitch_64
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/preference/Preference;->mFragment:Ljava/lang/String;

    goto :goto_36

    :pswitch_6b
    iget v3, p0, Landroid/preference/Preference;->mLayoutResId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/preference/Preference;->mLayoutResId:I

    goto :goto_36

    :pswitch_74
    iget v3, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    goto :goto_36

    :pswitch_7d
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/preference/Preference;->mEnabled:Z

    goto :goto_36

    :pswitch_84
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/preference/Preference;->mSelectable:Z

    goto :goto_36

    :pswitch_8b
    iget-boolean v3, p0, Landroid/preference/Preference;->mPersistent:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/preference/Preference;->mPersistent:Z

    goto :goto_36

    :pswitch_94
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    goto :goto_36

    :pswitch_9b
    invoke-virtual {p0, v0, v1}, Landroid/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Landroid/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    goto :goto_36

    :pswitch_a2
    iget-boolean v3, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    goto :goto_36

    :pswitch_ab
    iget-boolean v3, p0, Landroid/preference/Preference;->mRecycleEnabled:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/preference/Preference;->mRecycleEnabled:Z

    goto :goto_36

    :pswitch_b4
    iget-boolean v3, p0, Landroid/preference/Preference;->mSingleLineTitle:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/preference/Preference;->mSingleLineTitle:Z

    iput-boolean v4, p0, Landroid/preference/Preference;->mHasSingleLineTitleAttr:Z

    goto/16 :goto_36

    :pswitch_c0
    iget-boolean v3, p0, Landroid/preference/Preference;->mIconSpaceReserved:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/preference/Preference;->mIconSpaceReserved:Z

    goto/16 :goto_36

    :cond_ca
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_39
        :pswitch_8b
        :pswitch_7d
        :pswitch_6b
        :pswitch_47
        :pswitch_84
        :pswitch_40
        :pswitch_54
        :pswitch_5b
        :pswitch_74
        :pswitch_94
        :pswitch_9b
        :pswitch_a2
        :pswitch_64
        :pswitch_ab
        :pswitch_b4
        :pswitch_c0
    .end packed-switch
.end method

.method private dispatchSetInitialValue()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v4, v1}, Landroid/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    return-void

    :cond_e
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2d

    :cond_22
    iget-object v1, p0, Landroid/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Landroid/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    invoke-virtual {p0, v4, v3}, Landroid/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_2c
.end method

.method private registerDependency()V
    .registers 5

    iget-object v1, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_9
    iget-object v1, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-direct {v0, p0}, Landroid/preference/Preference;->registerDependent(Landroid/preference/Preference;)V

    return-void

    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Dependency \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" not found for preference \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" (title: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private registerDependent(Landroid/preference/Preference;)V
    .registers 3

    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .registers 6

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1c

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_10
    if-ltz v0, :cond_1c

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Landroid/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    :cond_1c
    return-void
.end method

.method private tryCommit(Landroid/content/SharedPreferences$Editor;)V
    .registers 4

    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->shouldCommit()Z

    move-result v1

    if-eqz v1, :cond_b

    :try_start_8
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_b
    .catch Ljava/lang/AbstractMethodError; {:try_start_8 .. :try_end_b} :catch_c

    :cond_b
    :goto_b
    return-void

    :catch_c
    move-exception v0

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_b
.end method

.method private unregisterDependency()V
    .registers 3

    iget-object v1, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-direct {v0, p0}, Landroid/preference/Preference;->unregisterDependent(Landroid/preference/Preference;)V

    :cond_f
    return-void
.end method

.method private unregisterDependent(Landroid/preference/Preference;)V
    .registers 3

    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method


# virtual methods
.method assignParent(Landroid/preference/PreferenceGroup;)V
    .registers 2

    iput-object p1, p0, Landroid/preference/Preference;->mParentGroup:Landroid/preference/PreferenceGroup;

    return-void
.end method

.method protected callChangeListener(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroid/preference/Preference;->mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/preference/Preference;->mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public compareTo(Landroid/preference/Preference;)I
    .registers 4

    iget v0, p0, Landroid/preference/Preference;->mOrder:I

    iget v1, p1, Landroid/preference/Preference;->mOrder:I

    if-eq v0, v1, :cond_c

    iget v0, p0, Landroid/preference/Preference;->mOrder:I

    iget v1, p1, Landroid/preference/Preference;->mOrder:I

    sub-int/2addr v0, v1

    return v0

    :cond_c
    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_14

    const/4 v0, 0x0

    return v0

    :cond_14
    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    iget-object v0, p1, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_20

    const/4 v0, -0x1

    return v0

    :cond_20
    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/internal/util/CharSequences;->compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5

    invoke-virtual {p0}, Landroid/preference/Preference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_21

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v1, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    if-nez v1, :cond_21

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    return-void
.end method

.method dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    invoke-virtual {p0}, Landroid/preference/Preference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    invoke-virtual {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iget-boolean v1, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    if-nez v1, :cond_1a

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    if-eqz v0, :cond_21

    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_21
    return-void
.end method

.method protected findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;
    .registers 4

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_c

    :cond_b
    return-object v1

    :cond_c
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDependency()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    return-object v0
.end method

.method public getEditor()Landroid/content/SharedPreferences$Editor;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_c

    :cond_b
    return-object v1

    :cond_c
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/preference/Preference;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/preference/Preference;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroid/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .registers 6

    const/16 v4, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_18
    invoke-virtual {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_38

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_38
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/preference/Preference;->mFragment:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_14

    iget v0, p0, Landroid/preference/Preference;->mIconResId:I

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/preference/Preference;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_14
    iget-object v0, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getId()J
    .registers 3

    iget-wide v0, p0, Landroid/preference/Preference;->mId:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Landroid/preference/Preference;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutResource()I
    .registers 2

    iget v0, p0, Landroid/preference/Preference;->mLayoutResId:I

    return v0
.end method

.method public getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;
    .registers 2

    iget-object v0, p0, Landroid/preference/Preference;->mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method

.method public getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;
    .registers 2

    iget-object v0, p0, Landroid/preference/Preference;->mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-object v0
.end method

.method public getOrder()I
    .registers 2

    iget v0, p0, Landroid/preference/Preference;->mOrder:I

    return v0
.end method

.method public getParent()Landroid/preference/PreferenceGroup;
    .registers 2

    iget-object v0, p0, Landroid/preference/Preference;->mParentGroup:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method protected getPersistedBoolean(Z)Z
    .registers 5

    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v1

    if-nez v1, :cond_7

    return p1

    :cond_7
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/preference/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    :cond_14
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method protected getPersistedFloat(F)F
    .registers 5

    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v1

    if-nez v1, :cond_7

    return p1

    :cond_7
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/preference/PreferenceDataStore;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1

    :cond_14
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method protected getPersistedInt(I)I
    .registers 5

    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v1

    if-nez v1, :cond_7

    return p1

    :cond_7
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/preference/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    :cond_14
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method protected getPersistedLong(J)J
    .registers 8

    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v1

    if-nez v1, :cond_7

    return-wide p1

    :cond_7
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/preference/PreferenceDataStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2

    :cond_14
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v1

    if-nez v1, :cond_7

    return-object p1

    :cond_7
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/preference/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_14
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v1

    if-nez v1, :cond_7

    return-object p1

    :cond_7
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/preference/PreferenceDataStore;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    :cond_14
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public getPreferenceDataStore()Landroid/preference/PreferenceDataStore;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceDataStore:Landroid/preference/PreferenceDataStore;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceDataStore:Landroid/preference/PreferenceDataStore;

    return-object v0

    :cond_8
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    return-object v0

    :cond_13
    return-object v1
.end method

.method public getPreferenceManager()Landroid/preference/PreferenceManager;
    .registers 2

    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_c

    :cond_b
    return-object v1

    :cond_c
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getShouldDisableView()Z
    .registers 2

    iget-boolean v0, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleRes()I
    .registers 2

    iget v0, p0, Landroid/preference/Preference;->mTitleRes:I

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    if-nez p1, :cond_6

    invoke-virtual {p0, p2}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :cond_6
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-object p1
.end method

.method public getWidgetLayoutResource()I
    .registers 2

    iget v0, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    return v0
.end method

.method public hasKey()Z
    .registers 2

    iget-object v0, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/preference/Preference;->mEnabled:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroid/preference/Preference;->mDependencyMet:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroid/preference/Preference;->mParentDependencyMet:Z

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isIconSpaceReserved()Z
    .registers 2

    iget-boolean v0, p0, Landroid/preference/Preference;->mIconSpaceReserved:Z

    return v0
.end method

.method public isPersistent()Z
    .registers 2

    iget-boolean v0, p0, Landroid/preference/Preference;->mPersistent:Z

    return v0
.end method

.method public isRecycleEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/preference/Preference;->mRecycleEnabled:Z

    return v0
.end method

.method public isSelectable()Z
    .registers 2

    iget-boolean v0, p0, Landroid/preference/Preference;->mSelectable:Z

    return v0
.end method

.method public isSingleLineTitle()Z
    .registers 2

    iget-boolean v0, p0, Landroid/preference/Preference;->mSingleLineTitle:Z

    return v0
.end method

.method protected notifyChanged()V
    .registers 2

    iget-object v0, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Landroid/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceChange(Landroid/preference/Preference;)V

    :cond_9
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .registers 6

    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    invoke-virtual {v3, p0, p1}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_18
    return-void
.end method

.method protected notifyHierarchyChanged()V
    .registers 2

    iget-object v0, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Landroid/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceHierarchyChange(Landroid/preference/Preference;)V

    :cond_9
    return-void
.end method

.method protected onAttachedToActivity()V
    .registers 1

    invoke-direct {p0}, Landroid/preference/Preference;->registerDependency()V

    return-void
.end method

.method protected onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .registers 4

    iput-object p1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p1}, Landroid/preference/PreferenceManager;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/preference/Preference;->mId:J

    invoke-direct {p0}, Landroid/preference/Preference;->dispatchSetInitialValue()V

    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .registers 13

    const/4 v7, 0x4

    const/16 v8, 0x8

    const/4 v10, 0x0

    const v6, 0x1020016

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_28

    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_92

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v6, p0, Landroid/preference/Preference;->mHasSingleLineTitleAttr:Z

    if-eqz v6, :cond_28

    iget-boolean v6, p0, Landroid/preference/Preference;->mSingleLineTitle:Z

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_28
    :goto_28
    const v6, 0x1020010

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_43

    invoke-virtual {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_96

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_43
    :goto_43
    const v6, 0x1020006

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_76

    iget v6, p0, Landroid/preference/Preference;->mIconResId:I

    if-nez v6, :cond_56

    iget-object v6, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_6f

    :cond_56
    iget-object v6, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_66

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v9, p0, Landroid/preference/Preference;->mIconResId:I

    invoke-virtual {v6, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_66
    iget-object v6, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_6f

    iget-object v6, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6f
    iget-object v6, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_9a

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_76
    :goto_76
    const v6, 0x102003e

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_86

    iget-object v6, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_a5

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_86
    :goto_86
    iget-boolean v6, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    if-eqz v6, :cond_91

    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v6

    invoke-direct {p0, p1, v6}, Landroid/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    :cond_91
    return-void

    :cond_92
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_28

    :cond_96
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_43

    :cond_9a
    iget-boolean v6, p0, Landroid/preference/Preference;->mIconSpaceReserved:Z

    if-eqz v6, :cond_a3

    move v6, v7

    :goto_9f
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_76

    :cond_a3
    move v6, v8

    goto :goto_9f

    :cond_a5
    iget-boolean v6, p0, Landroid/preference/Preference;->mIconSpaceReserved:Z

    if-eqz v6, :cond_ad

    :goto_a9
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_86

    :cond_ad
    move v7, v8

    goto :goto_a9
.end method

.method protected onClick()V
    .registers 1

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iget v3, p0, Landroid/preference/Preference;->mLayoutResId:I

    invoke-virtual {v1, v3, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v3, 0x1020018

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_26

    iget v3, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    if-eqz v3, :cond_27

    iget v3, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :cond_26
    :goto_26
    return-object v0

    :cond_27
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_26
.end method

.method public onDependencyChanged(Landroid/preference/Preference;Z)V
    .registers 4

    iget-boolean v0, p0, Landroid/preference/Preference;->mDependencyMet:Z

    if-ne v0, p2, :cond_12

    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mDependencyMet:Z

    invoke-virtual {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    :cond_12
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public onParentChanged(Landroid/preference/Preference;Z)V
    .registers 4

    iget-boolean v0, p0, Landroid/preference/Preference;->mParentDependencyMet:Z

    if-ne v0, p2, :cond_12

    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mParentDependencyMet:Z

    invoke-virtual {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    :cond_12
    return-void
.end method

.method protected onPrepareForRemoval()V
    .registers 1

    invoke-direct {p0}, Landroid/preference/Preference;->unregisterDependency()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    sget-object v0, Landroid/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_12

    if-eqz p1, :cond_12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Wrong state class -- expecting Preference State"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    sget-object v0, Landroid/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public peekExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public performClick(Landroid/preference/PreferenceScreen;)V
    .registers 6

    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/preference/Preference;->onClick()V

    iget-object v3, p0, Landroid/preference/Preference;->mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    if-eqz v3, :cond_17

    iget-object v3, p0, Landroid/preference/Preference;->mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-interface {v3, p0}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_17

    return-void

    :cond_17
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getOnPreferenceTreeClickListener()Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v1

    if-eqz p1, :cond_2c

    if-eqz v1, :cond_2c

    invoke-interface {v1, p1, p0}, Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_2c

    return-void

    :cond_2c
    iget-object v3, p0, Landroid/preference/Preference;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_39

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Landroid/preference/Preference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_39
    return-void
.end method

.method protected persistBoolean(Z)Z
    .registers 6

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x0

    return v2

    :cond_9
    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->getPersistedBoolean(Z)Z

    move-result v2

    if-ne p1, v2, :cond_12

    return v3

    :cond_12
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/preference/PreferenceDataStore;->putBoolean(Ljava/lang/String;Z)V

    :goto_1d
    return v3

    :cond_1e
    iget-object v2, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v1}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_1d
.end method

.method protected persistFloat(F)Z
    .registers 6

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x0

    return v2

    :cond_9
    const/high16 v2, 0x7fc00000    # Float.NaN

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->getPersistedFloat(F)F

    move-result v2

    cmpl-float v2, p1, v2

    if-nez v2, :cond_14

    return v3

    :cond_14
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/preference/PreferenceDataStore;->putFloat(Ljava/lang/String;F)V

    :goto_1f
    return v3

    :cond_20
    iget-object v2, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v1}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_1f
.end method

.method protected persistInt(I)Z
    .registers 6

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x0

    return v2

    :cond_9
    not-int v2, p1

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->getPersistedInt(I)I

    move-result v2

    if-ne p1, v2, :cond_11

    return v3

    :cond_11
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/preference/PreferenceDataStore;->putInt(Ljava/lang/String;I)V

    :goto_1c
    return v3

    :cond_1d
    iget-object v2, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v1}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_1c
.end method

.method protected persistLong(J)Z
    .registers 8

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x0

    return v2

    :cond_9
    not-long v2, p1

    invoke-virtual {p0, v2, v3}, Landroid/preference/Preference;->getPersistedLong(J)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_13

    return v4

    :cond_13
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1, p2}, Landroid/preference/PreferenceDataStore;->putLong(Ljava/lang/String;J)V

    :goto_1e
    return v4

    :cond_1f
    iget-object v2, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v1}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_1e
.end method

.method protected persistString(Ljava/lang/String;)Z
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x0

    return v2

    :cond_a
    invoke-virtual {p0, v4}, Landroid/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    return v3

    :cond_15
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/preference/PreferenceDataStore;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_20
    return v3

    :cond_21
    iget-object v2, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v1}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_20
.end method

.method public persistStringSet(Ljava/util/Set;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x0

    return v2

    :cond_a
    invoke-virtual {p0, v4}, Landroid/preference/Preference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    return v3

    :cond_15
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceDataStore()Landroid/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/preference/PreferenceDataStore;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    :goto_20
    return v3

    :cond_21
    iget-object v2, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v1}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_20
.end method

.method requireKey()V
    .registers 3

    iget-object v0, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Preference does not have a key assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mRequiresKey:Z

    return-void
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Landroid/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    return-void
.end method

.method public setDependency(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Landroid/preference/Preference;->unregisterDependency()V

    iput-object p1, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-direct {p0}, Landroid/preference/Preference;->registerDependency()V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/preference/Preference;->mEnabled:Z

    if-eq v0, p1, :cond_10

    iput-boolean p1, p0, Landroid/preference/Preference;->mEnabled:Z

    invoke-virtual {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    :cond_10
    return-void
.end method

.method public setFragment(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/preference/Preference;->mFragment:Ljava/lang/String;

    return-void
.end method

.method public setIcon(I)V
    .registers 3

    iget v0, p0, Landroid/preference/Preference;->mIconResId:I

    if-eq v0, p1, :cond_f

    iput p1, p0, Landroid/preference/Preference;->mIconResId:I

    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    if-nez p1, :cond_c

    iget-object v0, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    :goto_6
    iput-object p1, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    :cond_b
    return-void

    :cond_c
    if-eqz p1, :cond_b

    iget-object v0, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_b

    goto :goto_6
.end method

.method public setIconSpaceReserved(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/preference/Preference;->mIconSpaceReserved:Z

    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .registers 2

    iput-object p1, p0, Landroid/preference/Preference;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    iget-boolean v0, p0, Landroid/preference/Preference;->mRequiresKey:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/preference/Preference;->hasKey()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/preference/Preference;->requireKey()V

    :cond_11
    return-void
.end method

.method public setLayoutResource(I)V
    .registers 3

    iget v0, p0, Landroid/preference/Preference;->mLayoutResId:I

    if-eq p1, v0, :cond_7

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/Preference;->mRecycleEnabled:Z

    :cond_7
    iput p1, p0, Landroid/preference/Preference;->mLayoutResId:I

    return-void
.end method

.method final setOnPreferenceChangeInternalListener(Landroid/preference/Preference$OnPreferenceChangeInternalListener;)V
    .registers 2

    iput-object p1, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    return-void
.end method

.method public setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .registers 2

    iput-object p1, p0, Landroid/preference/Preference;->mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method public setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    .registers 2

    iput-object p1, p0, Landroid/preference/Preference;->mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method public setOrder(I)V
    .registers 3

    iget v0, p0, Landroid/preference/Preference;->mOrder:I

    if-eq p1, v0, :cond_9

    iput p1, p0, Landroid/preference/Preference;->mOrder:I

    invoke-virtual {p0}, Landroid/preference/Preference;->notifyHierarchyChanged()V

    :cond_9
    return-void
.end method

.method public setPersistent(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/preference/Preference;->mPersistent:Z

    return-void
.end method

.method public setPreferenceDataStore(Landroid/preference/PreferenceDataStore;)V
    .registers 2

    iput-object p1, p0, Landroid/preference/Preference;->mPreferenceDataStore:Landroid/preference/PreferenceDataStore;

    return-void
.end method

.method public setRecycleEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/preference/Preference;->mRecycleEnabled:Z

    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setSelectable(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/preference/Preference;->mSelectable:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Landroid/preference/Preference;->mSelectable:Z

    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    :cond_9
    return-void
.end method

.method public setShouldDisableView(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setSingleLineTitle(Z)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mHasSingleLineTitleAttr:Z

    iput-boolean p1, p0, Landroid/preference/Preference;->mSingleLineTitle:Z

    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setSummary(I)V
    .registers 3

    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .registers 3

    if-nez p1, :cond_c

    iget-object v0, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    if-eqz v0, :cond_c

    :goto_6
    iput-object p1, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    :cond_b
    return-void

    :cond_c
    if-eqz p1, :cond_b

    iget-object v0, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b

    goto :goto_6
.end method

.method public setTitle(I)V
    .registers 3

    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iput p1, p0, Landroid/preference/Preference;->mTitleRes:I

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    if-nez p1, :cond_f

    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_f

    :goto_6
    const/4 v0, 0x0

    iput v0, p0, Landroid/preference/Preference;->mTitleRes:I

    iput-object p1, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    :cond_e
    return-void

    :cond_f
    if-eqz p1, :cond_e

    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_e

    goto :goto_6
.end method

.method public setWidgetLayoutResource(I)V
    .registers 3

    iget v0, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    if-eq p1, v0, :cond_7

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/Preference;->mRecycleEnabled:Z

    :cond_7
    iput p1, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    return-void
.end method

.method public shouldCommit()Z
    .registers 2

    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->shouldCommit()Z

    move-result v0

    return v0
.end method

.method public shouldDisableDependents()Z
    .registers 2

    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected shouldPersist()Z
    .registers 2

    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/preference/Preference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/preference/Preference;->hasKey()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/preference/Preference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
