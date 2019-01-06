.class public Lcom/android/systemui/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static sMiuiOptimizationDisabled:Z

.field private static sUserExperienceEnable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 3

    invoke-static {p0, p2}, Lcom/android/systemui/Util;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v2, 0x0

    return-object v2
.end method

.method public static getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;
    .locals 5

    move-object v0, p0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v4, 0x4

    invoke-virtual {p0, v2, v4, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static hideSystemBars(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x2f06

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static isBrowserSearchExist(Landroid/content/Context;)Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.browser.browser_search"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.android.browser"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/android/systemui/Util;->isIntentActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public static isCNFileExplorerExist(Landroid/content/Context;)Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.android.fileexplorer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/android/systemui/Util;->isIntentActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public static isDefaultTheme()Z
    .locals 1

    sget-object v0, Lcom/android/systemui/Constants;->THEME_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isGlobalFileExplorerExist(Landroid/content/Context;)Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.mi.android.globalFileexplorer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/android/systemui/Util;->isIntentActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method private static isIntentActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 5

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return v2

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0xc0000

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lez v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method public static isMiuiOptimizationDisabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Util;->sMiuiOptimizationDisabled:Z

    return v0
.end method

.method public static isProviderAccess(Ljava/lang/String;I)Z
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const v3, 0xc0e00

    :try_start_0
    invoke-interface {v1, p0, v3, p1}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :catch_0
    move-exception v0

    return v2
.end method

.method public static isUserExperienceProgramEnable()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Util;->sUserExperienceEnable:Z

    return v0
.end method

.method private static makeSystemOverlayToast(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ShowToast"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x7d6

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setType(I)V

    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-object v0
.end method

.method public static playRingtoneAsync(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 2

    const-class v0, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/Util$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/Util$2;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static setMiuiOptimizationDisabled(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/systemui/Util;->sMiuiOptimizationDisabled:Z

    return-void
.end method

.method public static setUserExperienceProgramEnabled(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/systemui/Util;->sUserExperienceEnable:Z

    return-void
.end method

.method public static setViewRoundCorner(Landroid/view/View;F)V
    .locals 2

    new-instance v0, Lcom/android/systemui/Util$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/Util$1;-><init>(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method

.method public static showCtsSpecifiedColor()Z
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/systemui/Util;->sMiuiOptimizationDisabled:Z

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static showSystemOverlayToast(Landroid/content/Context;II)Landroid/widget/Toast;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/systemui/Util;->showSystemOverlayToast(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static showSystemOverlayToast(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/android/systemui/Util;->makeSystemOverlayToast(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-class v1, Lcom/android/systemui/miui/ToastOverlayManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/miui/ToastOverlayManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/miui/ToastOverlayManager;->dispatchShowToast(Landroid/widget/Toast;)V

    return-object v0
.end method
