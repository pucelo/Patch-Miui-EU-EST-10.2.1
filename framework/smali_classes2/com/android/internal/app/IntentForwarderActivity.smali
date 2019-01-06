.class public Lcom/android/internal/app/IntentForwarderActivity;
.super Landroid/app/Activity;
.source "IntentForwarderActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IntentForwarderActivity$Injector;,
        Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;
    }
.end annotation


# static fields
.field public static FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

.field public static FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

.field public static TAG:Ljava/lang/String;


# instance fields
.field private mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "IntentForwarderActivity"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "com.android.internal.app.ForwardIntentToParent"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    const-string/jumbo v0, "com.android.internal.app.ForwardIntentToManagedProfile"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getManagedProfile()I
    .registers 7

    iget-object v3, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    invoke-interface {v3}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_12

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    return v3

    :cond_27
    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " has been called, but there is no managed profile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, -0x2710

    return v3
.end method

.method private getProfileParent()I
    .registers 5

    iget-object v1, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    invoke-interface {v1}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_2e

    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has been called, but there is no parent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x2710

    return v1

    :cond_2e
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    return v1
.end method

.method private sanitizeIntent(Landroid/content/Intent;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method canForward(Landroid/content/Intent;I)Landroid/content/Intent;
    .registers 10

    const/4 v6, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v4, 0x3000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->sanitizeIntent(Landroid/content/Intent;)V

    move-object v2, v1

    const-string/jumbo v4, "android.intent.action.CHOOSER"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    const-string/jumbo v4, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    sget-object v4, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "An chooser intent with extra initial intents cannot be forwarded to a different user"

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_2e
    const-string/jumbo v4, "android.intent.extra.REPLACEMENT_EXTRAS"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    sget-object v4, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "A chooser intent with replacement extras cannot be forwarded to a different user"

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_40
    const-string/jumbo v4, "android.intent.extra.INTENT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    if-nez v2, :cond_54

    sget-object v4, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Cannot forward a chooser intent with no extra android.intent.extra.INTENT"

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_54
    invoke-virtual {v1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_5e

    invoke-virtual {v1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2

    :cond_5e
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/internal/app/IntentForwarderActivity;->sanitizeIntent(Landroid/content/Intent;)V

    :try_start_69
    iget-object v4, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    invoke-interface {v4}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v5

    invoke-interface {v4, v2, v3, v5, p2}, Landroid/content/pm/IPackageManager;->canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_76} :catch_7a

    move-result v4

    if-eqz v4, :cond_83

    return-object v1

    :catch_7a
    move-exception v0

    sget-object v4, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "PackageManagerService is dead?"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    return-object v6
.end method

.method protected createInjector()Lcom/android/internal/app/IntentForwarderActivity$Injector;
    .registers 3

    new-instance v0, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;-><init>(Lcom/android/internal/app/IntentForwarderActivity;Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 19

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->createInjector()Lcom/android/internal/app/IntentForwarderActivity$Injector;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    sget-object v14, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2e

    const v13, 0x1040242

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getProfileParent()I

    move-result v12

    :goto_26
    const/16 v14, -0x2710

    if-ne v12, v14, :cond_61

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    return-void

    :cond_2e
    sget-object v14, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3e

    const v13, 0x1040243

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getManagedProfile()I

    move-result v12

    goto :goto_26

    :cond_3e
    sget-object v14, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-class v16, Lcom/android/internal/app/IntentForwarderActivity;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " cannot be called directly"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, -0x1

    const/16 v12, -0x2710

    goto :goto_26

    :cond_61
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12}, Lcom/android/internal/app/IntentForwarderActivity;->canForward(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v9

    if-eqz v9, :cond_140

    const-string/jumbo v14, "android.intent.action.CHOOSER"

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b8

    const-string/jumbo v14, "android.intent.extra.INTENT"

    invoke-virtual {v9, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    invoke-virtual {v5, v1}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    :goto_86
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    invoke-interface {v14}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const/high16 v15, 0x10000

    invoke-virtual {v14, v9, v15, v12}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    if-eqz v10, :cond_9a

    iget-object v14, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v14, :cond_bc

    :cond_9a
    const/4 v11, 0x1

    :goto_9b
    const/4 v14, 0x0

    const/4 v15, 0x0

    :try_start_9d
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v14, v15, v12}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    :try_end_a2
    .catch Ljava/lang/RuntimeException; {:try_start_9d .. :try_end_a2} :catch_ee

    :goto_a2
    if-eqz v11, :cond_b4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    :cond_b4
    :goto_b4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    return-void

    :cond_b8
    invoke-virtual {v9, v1}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    goto :goto_86

    :cond_bc
    const-string/jumbo v14, "android"

    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-nez v14, :cond_9a

    const-class v14, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_ec

    const-class v14, Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    :goto_e9
    xor-int/lit8 v11, v14, 0x1

    goto :goto_9b

    :cond_ec
    const/4 v14, 0x1

    goto :goto_e9

    :catch_ee
    move-exception v3

    const/4 v8, -0x1

    const-string/jumbo v7, "?"

    :try_start_f3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v15

    invoke-interface {v14, v15}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v8

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v15

    invoke-interface {v14, v15}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_10a
    .catch Landroid/os/RemoteException; {:try_start_f3 .. :try_end_10a} :catch_171

    move-result-object v7

    :goto_10b
    sget-object v14, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Unable to launch as UID "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " package "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", while running in "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a2

    :cond_140
    sget-object v14, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "the intent: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " cannot be forwarded from user "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " to user "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b4

    :catch_171
    move-exception v4

    goto :goto_10b
.end method
