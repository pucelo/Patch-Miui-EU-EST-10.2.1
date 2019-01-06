.class public Landroid/accounts/ChooseAccountActivity;
.super Landroid/app/Activity;
.source "ChooseAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/ChooseAccountActivity$AccountArrayAdapter;,
        Landroid/accounts/ChooseAccountActivity$AccountInfo;,
        Landroid/accounts/ChooseAccountActivity$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountManager"


# instance fields
.field private mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

.field private mAccounts:[Landroid/os/Parcelable;

.field private mCallingPackage:Ljava/lang/String;

.field private mCallingUid:I

.field private mResult:Landroid/os/Bundle;

.field private mTypeToAuthDescription:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/HashMap;

    return-void
.end method

.method private getAuthDescriptions()V
    .registers 7

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_a
    if-ge v1, v3, :cond_18

    aget-object v0, v2, v1

    iget-object v4, p0, Landroid/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/HashMap;

    iget-object v5, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_18
    return-void
.end method

.method private getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 10

    const/4 v7, 0x5

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    :try_start_a
    iget-object v5, p0, Landroid/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    iget-object v5, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/accounts/ChooseAccountActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_1e} :catch_45
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_1e} :catch_20

    move-result-object v4

    :cond_1f
    :goto_1f
    return-object v4

    :catch_20
    move-exception v3

    const-string/jumbo v5, "AccountManager"

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1f

    const-string/jumbo v5, "AccountManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No icon resource for account type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    :catch_45
    move-exception v2

    const-string/jumbo v5, "AccountManager"

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1f

    const-string/jumbo v5, "AccountManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No icon name for account type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method


# virtual methods
.method public finish()V
    .registers 4

    iget-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mResult:Landroid/os/Bundle;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

    iget-object v1, p0, Landroid/accounts/ChooseAccountActivity;->mResult:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManagerResponse;->onResult(Landroid/os/Bundle;)V

    :cond_f
    :goto_f
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_13
    iget-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

    const-string/jumbo v1, "canceled"

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/accounts/AccountManagerResponse;->onError(ILjava/lang/String;)V

    goto :goto_f
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12

    const/16 v9, 0x3e8

    const/4 v8, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "accounts"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    iput-object v5, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "accountManagerResponse"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/accounts/AccountManagerResponse;

    iput-object v5, p0, Landroid/accounts/ChooseAccountActivity;->mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

    iget-object v5, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    if-nez v5, :cond_2e

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/accounts/ChooseAccountActivity;->setResult(I)V

    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->finish()V

    return-void

    :cond_2e
    :try_start_2e
    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, v0}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v5

    iput v5, p0, Landroid/accounts/ChooseAccountActivity;->mCallingUid:I

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, v0}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/accounts/ChooseAccountActivity;->mCallingPackage:Ljava/lang/String;
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_46} :catch_d1

    :goto_46
    iget v5, p0, Landroid/accounts/ChooseAccountActivity;->mCallingUid:I

    invoke-static {v5, v9}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "androidPackageName"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_68

    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "androidPackageName"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/accounts/ChooseAccountActivity;->mCallingPackage:Ljava/lang/String;

    :cond_68
    iget v5, p0, Landroid/accounts/ChooseAccountActivity;->mCallingUid:I

    invoke-static {v5, v9}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v5

    if-nez v5, :cond_a5

    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "androidPackageName"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a5

    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Non-system Uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/accounts/ChooseAccountActivity;->mCallingUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " tried to override packageName \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a5
    invoke-direct {p0}, Landroid/accounts/ChooseAccountActivity;->getAuthDescriptions()V

    iget-object v5, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    array-length v5, v5

    new-array v3, v5, [Landroid/accounts/ChooseAccountActivity$AccountInfo;

    const/4 v1, 0x0

    :goto_ae
    iget-object v5, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    array-length v5, v5

    if-ge v1, v5, :cond_f3

    new-instance v6, Landroid/accounts/ChooseAccountActivity$AccountInfo;

    iget-object v5, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    aget-object v5, v5, v1

    check-cast v5, Landroid/accounts/Account;

    iget-object v7, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v5, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    aget-object v5, v5, v1

    check-cast v5, Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/accounts/ChooseAccountActivity;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Landroid/accounts/ChooseAccountActivity$AccountInfo;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    aput-object v6, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_ae

    :catch_d1
    move-exception v4

    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to get caller identity \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_46

    :cond_f3
    const v5, 0x1090043

    invoke-virtual {p0, v5}, Landroid/accounts/ChooseAccountActivity;->setContentView(I)V

    const v5, 0x102000a

    invoke-virtual {p0, v5}, Landroid/accounts/ChooseAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    new-instance v5, Landroid/accounts/ChooseAccountActivity$AccountArrayAdapter;

    const v6, 0x1090003

    invoke-direct {v5, p0, v6, v3}, Landroid/accounts/ChooseAccountActivity$AccountArrayAdapter;-><init>(Landroid/content/Context;I[Landroid/accounts/ChooseAccountActivity$AccountInfo;)V

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setChoiceMode(I)V

    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    new-instance v5, Landroid/accounts/ChooseAccountActivity$1;

    invoke-direct {v5, p0}, Landroid/accounts/ChooseAccountActivity$1;-><init>(Landroid/accounts/ChooseAccountActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 13

    iget-object v4, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    aget-object v0, v4, p3

    check-cast v0, Landroid/accounts/Account;

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v4, p0, Landroid/accounts/ChooseAccountActivity;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Landroid/accounts/AccountManager;->getAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_23

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_23

    iget-object v4, p0, Landroid/accounts/ChooseAccountActivity;->mCallingPackage:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v1, v0, v4, v5}, Landroid/accounts/AccountManager;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;I)Z

    :cond_23
    const-string/jumbo v4, "AccountManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "selected account "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "authAccount"

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "accountType"

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Landroid/accounts/ChooseAccountActivity;->mResult:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->finish()V

    return-void
.end method
