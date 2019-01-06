.class public Lmiui/accounts/MiuiChooseAccountTypeActivity;
.super Landroid/preference/PreferenceActivity;
.source "MiuiChooseAccountTypeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;,
        Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiChooseAccountType"


# instance fields
.field private mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTypeToAuthenticatorInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mTypeToAuthenticatorInfo:Ljava/util/HashMap;

    return-void
.end method

.method private hasXiaomiAccount()Z
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v4, "account"

    invoke-virtual {p0, v4}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountManager;

    const-string/jumbo v4, "com.xiaomi"

    invoke-virtual {v1, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v4, v0

    if-lez v4, :cond_16

    return v2

    :cond_16
    const-string/jumbo v4, "com.xiaomi.unactivated"

    invoke-virtual {v1, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v4, v0

    if-lez v4, :cond_21

    :goto_20
    return v2

    :cond_21
    move v2, v3

    goto :goto_20
.end method

.method private setResultAndFinish(Ljava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "accountType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->setResult(ILandroid/content/Intent;)V

    const-string/jumbo v1, "MiuiChooseAccountType"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3c

    const-string/jumbo v1, "MiuiChooseAccountType"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ChooseAccountTypeActivity.setResultAndFinish: selected account type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    invoke-virtual {p0}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected buildTypeToAuthDescriptionMap()V
    .registers 16

    invoke-direct {p0}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->hasXiaomiAccount()Z

    move-result v5

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v11

    const/4 v9, 0x0

    array-length v12, v11

    move v10, v9

    :goto_f
    if-ge v10, v12, :cond_b7

    aget-object v2, v11, v10

    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_15
    iget-object v9, v2, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {p0, v9, v13}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v13, v2, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {v9}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v13, v2, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_3a

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_39
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_39} :catch_8b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_39} :catch_63

    move-result-object v7

    :cond_3a
    :goto_3a
    const-string/jumbo v9, "com.xiaomi.unactivated"

    iget-object v13, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b3

    const-string/jumbo v9, "com.xiaomi"

    iget-object v13, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b5

    move v9, v5

    :goto_51
    if-nez v9, :cond_5f

    new-instance v1, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;

    invoke-direct {v1, v2, v7, v6}, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;-><init>(Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    iget-object v9, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mTypeToAuthenticatorInfo:Ljava/util/HashMap;

    iget-object v13, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v9, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5f
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_f

    :catch_63
    move-exception v4

    const-string/jumbo v9, "MiuiChooseAccountType"

    const/4 v13, 0x5

    invoke-static {v9, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_3a

    const-string/jumbo v9, "MiuiChooseAccountType"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "No icon resource for account type "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    :catch_8b
    move-exception v3

    const-string/jumbo v9, "MiuiChooseAccountType"

    const/4 v13, 0x5

    invoke-static {v9, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_3a

    const-string/jumbo v9, "MiuiChooseAccountType"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "No icon name for account type "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    :cond_b3
    const/4 v9, 0x1

    goto :goto_51

    :cond_b5
    const/4 v9, 0x0

    goto :goto_51

    :cond_b7
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 16

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v11, 0x11050000

    invoke-virtual {p0, v11}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->addPreferencesFromResource(I)V

    const-string/jumbo v11, "pref_add_account"

    invoke-virtual {p0, v11}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    const/4 v8, 0x0

    invoke-virtual {p0}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string/jumbo v12, "allowableAccountTypes"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_31

    new-instance v8, Ljava/util/HashSet;

    array-length v11, v10

    invoke-direct {v8, v11}, Ljava/util/HashSet;-><init>(I)V

    const/4 v11, 0x0

    array-length v12, v10

    :goto_27
    if-ge v11, v12, :cond_31

    aget-object v9, v10, v11

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_27

    :cond_31
    invoke-virtual {p0}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->buildTypeToAuthDescriptionMap()V

    new-instance v11, Ljava/util/ArrayList;

    iget-object v12, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mTypeToAuthenticatorInfo:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v11, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    iget-object v11, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mTypeToAuthenticatorInfo:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4b
    :goto_4b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_73

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;

    if-eqz v8, :cond_6d

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-nez v11, :cond_4b

    :cond_6d
    iget-object v11, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    :cond_73
    iget-object v11, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_9a

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v11, "errorMessage"

    const-string/jumbo v12, "no allowable account types"

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v11, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v11

    const/4 v12, -0x1

    invoke-virtual {p0, v12, v11}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->finish()V

    return-void

    :cond_9a
    iget-object v11, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_b4

    iget-object v11, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;

    iget-object v11, v11, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;->desc:Landroid/accounts/AuthenticatorDescription;

    iget-object v11, v11, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-direct {p0, v11}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->setResultAndFinish(Ljava/lang/String;)V

    return-void

    :cond_b4
    iget-object v11, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ba
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_db

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;

    new-instance v7, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;

    iget-object v11, v0, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;->desc:Landroid/accounts/AuthenticatorDescription;

    iget-object v11, v11, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v12, v0, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v13, v0, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;->name:Ljava/lang/String;

    invoke-direct {v7, p0, v11, v12, v13}, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;->setPersistent(Z)V

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_ba

    :cond_db
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 8

    instance-of v2, p2, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;

    if-eqz v2, :cond_3b

    move-object v0, p2

    check-cast v0, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;

    const-string/jumbo v2, "MiuiChooseAccountType"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2f

    const-string/jumbo v2, "MiuiChooseAccountType"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Attempting to add account of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    move-object v1, p2

    check-cast v1, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;

    invoke-virtual {v1}, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->setResultAndFinish(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :cond_3b
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2
.end method
