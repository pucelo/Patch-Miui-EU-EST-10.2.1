.class final Lcom/android/server/pm/SettingsInjector$1;
.super Ljava/lang/Object;
.source "SettingsInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/SettingsInjector;->noftifyFirstLaunch(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pkgSetting:Lcom/android/server/pm/PackageSetting;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageSetting;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/pm/SettingsInjector$1;->val$pkgSetting:Lcom/android/server/pm/PackageSetting;

    iput p2, p0, Lcom/android/server/pm/SettingsInjector$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    :try_start_0
    invoke-static {}, Lcom/android/server/pm/SettingsInjector;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "notify first launch"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "miui.intent.action.PACKAGE_FIRST_LAUNCH"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "package"

    iget-object v5, p0, Lcom/android/server/pm/SettingsInjector$1;->val$pkgSetting:Lcom/android/server/pm/PackageSetting;

    iget-object v5, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/pm/SettingsInjector$1;->val$pkgSetting:Lcom/android/server/pm/PackageSetting;

    iget-object v4, v4, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_30

    const-string/jumbo v4, "installer"

    iget-object v5, p0, Lcom/android/server/pm/SettingsInjector$1;->val$pkgSetting:Lcom/android/server/pm/PackageSetting;

    iget-object v5, v5, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_30
    const-string/jumbo v4, "userId"

    iget v5, p0, Lcom/android/server/pm/SettingsInjector$1;->val$userId:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3a} :catch_68

    const/16 v5, 0x19

    if-le v4, v5, :cond_55

    :try_start_3e
    const-class v4, Landroid/content/Intent;

    const-string/jumbo v5, "FLAG_RECEIVER_INCLUDE_BACKGROUND"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_55} :catch_5c
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_55} :catch_68

    :cond_55
    :goto_55
    :try_start_55
    const-string/jumbo v4, "miui.permission.USE_INTERNAL_GENERAL_API"

    invoke-static {v2, v4}, Lcom/android/server/pm/IActivityManagerCompat;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_5b
    return-void

    :catch_5c
    move-exception v0

    invoke-static {}, Lcom/android/server/pm/SettingsInjector;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Intent flag FLAG_RECEIVER_INCLUDE_BACKGROUND not exist"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_67} :catch_68

    goto :goto_55

    :catch_68
    move-exception v3

    invoke-static {}, Lcom/android/server/pm/SettingsInjector;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "notify first launch exception"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5b
.end method
