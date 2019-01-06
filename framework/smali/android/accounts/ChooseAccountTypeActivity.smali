.class public Landroid/accounts/ChooseAccountTypeActivity;
.super Landroid/app/Activity;
.source "ChooseAccountTypeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/ChooseAccountTypeActivity$AccountArrayAdapter;,
        Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;,
        Landroid/accounts/ChooseAccountTypeActivity$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountChooser"


# instance fields
.field private mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;",
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
            "Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/accounts/ChooseAccountTypeActivity;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Landroid/accounts/ChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/accounts/ChooseAccountTypeActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/accounts/ChooseAccountTypeActivity;->setResultAndFinish(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/accounts/ChooseAccountTypeActivity;->mTypeToAuthenticatorInfo:Ljava/util/HashMap;

    return-void
.end method

.method private buildTypeToAuthDescriptionMap()V
    .registers 16

    const/4 v14, 0x5

    const/4 v8, 0x0

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v9

    array-length v10, v9

    :goto_b
    if-ge v8, v10, :cond_8f

    aget-object v2, v9, v8

    const/4 v6, 0x0

    const/4 v5, 0x0

    :try_start_11
    iget-object v11, v2, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Landroid/accounts/ChooseAccountTypeActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    iget v11, v2, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v0, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget v12, v2, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_2e

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_2e
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_31
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_31} :catch_68
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_31} :catch_41

    move-result-object v6

    :cond_32
    :goto_32
    new-instance v1, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;

    invoke-direct {v1, v2, v6, v5}, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;-><init>(Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    iget-object v11, p0, Landroid/accounts/ChooseAccountTypeActivity;->mTypeToAuthenticatorInfo:Ljava/util/HashMap;

    iget-object v12, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v11, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :catch_41
    move-exception v4

    const-string/jumbo v11, "AccountChooser"

    invoke-static {v11, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_32

    const-string/jumbo v11, "AccountChooser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "No icon resource for account type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    :catch_68
    move-exception v3

    const-string/jumbo v11, "AccountChooser"

    invoke-static {v11, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_32

    const-string/jumbo v11, "AccountChooser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "No icon name for account type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    :cond_8f
    return-void
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

    invoke-virtual {p0, v2, v1}, Landroid/accounts/ChooseAccountTypeActivity;->setResult(ILandroid/content/Intent;)V

    const-string/jumbo v1, "AccountChooser"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3c

    const-string/jumbo v1, "AccountChooser"

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
    invoke-virtual {p0}, Landroid/accounts/ChooseAccountTypeActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 14

    const/4 v9, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v8, "AccountChooser"

    const/4 v10, 0x2

    invoke-static {v8, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2f

    const-string/jumbo v8, "AccountChooser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ChooseAccountTypeActivity.onCreate(savedInstanceState="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/accounts/ChooseAccountTypeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string/jumbo v10, "allowableAccountTypes"

    invoke-virtual {v8, v10}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4f

    new-instance v5, Ljava/util/HashSet;

    array-length v8, v7

    invoke-direct {v5, v8}, Ljava/util/HashSet;-><init>(I)V

    array-length v10, v7

    move v8, v9

    :goto_45
    if-ge v8, v10, :cond_4f

    aget-object v6, v7, v8

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_45

    :cond_4f
    invoke-direct {p0}, Landroid/accounts/ChooseAccountTypeActivity;->buildTypeToAuthDescriptionMap()V

    new-instance v8, Ljava/util/ArrayList;

    iget-object v10, p0, Landroid/accounts/ChooseAccountTypeActivity;->mTypeToAuthenticatorInfo:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, p0, Landroid/accounts/ChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/accounts/ChooseAccountTypeActivity;->mTypeToAuthenticatorInfo:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_69
    :goto_69
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_91

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;

    if-eqz v5, :cond_8b

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_69

    :cond_8b
    iget-object v8, p0, Landroid/accounts/ChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_69

    :cond_91
    iget-object v8, p0, Landroid/accounts/ChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_b8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v8, "errorMessage"

    const-string/jumbo v9, "no allowable account types"

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v8, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {p0, v9, v8}, Landroid/accounts/ChooseAccountTypeActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/accounts/ChooseAccountTypeActivity;->finish()V

    return-void

    :cond_b8
    iget-object v8, p0, Landroid/accounts/ChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_d1

    iget-object v8, p0, Landroid/accounts/ChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;

    iget-object v8, v8, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;->desc:Landroid/accounts/AuthenticatorDescription;

    iget-object v8, v8, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-direct {p0, v8}, Landroid/accounts/ChooseAccountTypeActivity;->setResultAndFinish(Ljava/lang/String;)V

    return-void

    :cond_d1
    const v8, 0x1090045

    invoke-virtual {p0, v8}, Landroid/accounts/ChooseAccountTypeActivity;->setContentView(I)V

    const v8, 0x102000a

    invoke-virtual {p0, v8}, Landroid/accounts/ChooseAccountTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    new-instance v8, Landroid/accounts/ChooseAccountTypeActivity$AccountArrayAdapter;

    iget-object v10, p0, Landroid/accounts/ChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    const v11, 0x1090003

    invoke-direct {v8, p0, v11, v10}, Landroid/accounts/ChooseAccountTypeActivity$AccountArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v4, v9}, Landroid/widget/ListView;->setChoiceMode(I)V

    invoke-virtual {v4, v9}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    new-instance v8, Landroid/accounts/ChooseAccountTypeActivity$1;

    invoke-direct {v8, p0}, Landroid/accounts/ChooseAccountTypeActivity$1;-><init>(Landroid/accounts/ChooseAccountTypeActivity;)V

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
