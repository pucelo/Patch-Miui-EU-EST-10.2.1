.class public Landroid/preference/MyListPreference;
.super Landroid/preference/ListPreference;
.source "MyListPreference.java"


# instance fields
.field private mMyPreference:Landroid/preference/MyPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/preference/MyPreference;

    invoke-direct {v0, p1, p2}, Landroid/preference/MyPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Landroid/preference/MyListPreference;->mMyPreference:Landroid/preference/MyPreference;

    return-void
.end method


# virtual methods
.method protected onAttachedToActivity()V
    .registers 3

    invoke-virtual {p0}, Landroid/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    instance-of v1, v0, Landroid/preference/MyCheckBoxPreference;

    if-eqz v1, :cond_1b

    check-cast v0, Landroid/preference/MyCheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/MyCheckBoxPreference;->registerDependent(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1b

    return-void

    :cond_1b
    invoke-super {p0}, Landroid/preference/Preference;->onAttachedToActivity()V

    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/preference/MyListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Landroid/preference/MyListPreference;->mMyPreference:Landroid/preference/MyPreference;

    invoke-virtual {v0, p1, v1}, Landroid/preference/MyPreference;->setMargin(Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method

.method protected onDialogClosed(Z)V
    .registers 6

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_20

    invoke-virtual {p0}, Landroid/preference/MyListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/preference/MyListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/MyListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/preference/MyListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/MyListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Landroid/preference/MyListPreference;->mMyPreference:Landroid/preference/MyPreference;

    invoke-virtual {v0, v1, v2, v3}, Landroid/preference/MyPreference;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/preference/MyPreference;->sendIntent(Landroid/content/Context;)V

    :cond_20
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .registers 6

    invoke-virtual {p0}, Landroid/preference/MyListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/MyListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_20

    check-cast p2, Ljava/lang/String;

    :goto_c
    iget-object v0, p0, Landroid/preference/MyListPreference;->mMyPreference:Landroid/preference/MyPreference;

    invoke-virtual {v0, v1, v2, p2}, Landroid/preference/MyPreference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/preference/MyListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, p2}, Landroid/preference/MyPreference;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/preference/MyListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/MyListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_20
    invoke-virtual {p0}, Landroid/preference/MyListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_c
.end method
