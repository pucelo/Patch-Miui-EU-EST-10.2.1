.class Lcom/android/server/wm/WindowManagerServiceInjector;
.super Ljava/lang/Object;
.source "WindowManagerServiceInjector.java"


# static fields
.field private static CUR_DEVICE:Ljava/lang/String; = null

.field private static FORCE_ORI_DEVICES_LIST:[Ljava/lang/String; = null

.field private static FORCE_ORI_LIST:[Ljava/lang/String; = null

.field public static final MIUI_AI_MODE_STACK_ID:I = 0x7

.field private static final TAG:Ljava/lang/String; = "WindowManagerService"


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "com.tencent.mm/com.tencent.mm.plugin.voip.ui.VideoActivity"

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.tencent.mm/com.tencent.mm.plugin.multitalk.ui.MultiTalkMainUI"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->FORCE_ORI_LIST:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "lithium"

    aput-object v1, v0, v2

    const-string/jumbo v1, "chiron"

    aput-object v1, v0, v3

    const-string/jumbo v1, "polaris"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->FORCE_ORI_DEVICES_LIST:[Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->CUR_DEVICE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustFindDeviceAttrs(ILandroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V
    .registers 5

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/lit16 v1, v1, 0x800

    if-nez v1, :cond_d

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/lit16 v1, v1, 0x1000

    if-nez v1, :cond_d

    return-void

    :cond_d
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {p0, p2}, Lcom/android/server/wm/WindowManagerServiceInjector;->isFindDeviceFlagUsePermitted(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_26

    const-string/jumbo v1, "com.xiaomi.finddevice"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    :cond_26
    return-void

    :cond_27
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/lit16 v1, v1, -0x801

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/lit16 v1, v1, -0x1001

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    return-void
.end method

.method public static adjustWindowParams(Landroid/app/AppOpsManager;Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;I)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-nez v1, :cond_11

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x400000

    and-int/2addr v1, v2

    if-eqz v1, :cond_4e

    :cond_11
    const/16 v1, 0x2724

    invoke-virtual {p0, v1, p3, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4e

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x80001

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x400001

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-string/jumbo v1, "WindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MIUILOG- Show when locked PermissionDenied pkg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    invoke-static {p3, p1, p2}, Lcom/android/server/wm/WindowManagerServiceInjector;->adjustFindDeviceAttrs(ILandroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V

    return-void
.end method

.method static checkBoostPriorityForLockTime(J)V
    .registers 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v2, v0, p0

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_3f

    const-string/jumbo v2, "WindowManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Slow operation: holding wms lock in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v0, p0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    return-void
.end method

.method public static getForceOrientation(Lcom/android/server/wm/AppWindowToken;I)I
    .registers 8

    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceInjector;->needForceOrientation()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_2b

    sget-object v2, Lcom/android/server/wm/WindowManagerServiceInjector;->FORCE_ORI_LIST:[Ljava/lang/String;

    if-eqz v2, :cond_2b

    sget-object v3, Lcom/android/server/wm/WindowManagerServiceInjector;->FORCE_ORI_LIST:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_14
    if-ge v2, v4, :cond_2b

    aget-object v0, v3, v2

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    const/4 v2, 0x7

    return v2

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_2b
    return p1
.end method

.method public static interceptMiuiAiModeStackAppTransitionAnimationIfNeeded(Lcom/android/server/wm/AppWindowToken;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public static isAllowedDisableKeyguard(Landroid/app/AppOpsManager;I)Z
    .registers 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    :try_start_3
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_37

    move-result-object v2

    :goto_b
    if-eqz v2, :cond_10

    array-length v3, v2

    if-nez v3, :cond_11

    :cond_10
    return v5

    :cond_11
    aget-object v3, v2, v6

    const/16 v4, 0x2724

    invoke-virtual {p0, v4, p1, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1c

    return v5

    :cond_1c
    const-string/jumbo v3, "WindowManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MIUILOG- DisableKeyguard PermissionDenied uid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :catch_37
    move-exception v0

    goto :goto_b
.end method

.method private static isFindDeviceFlagUsePermitted(ILjava/lang/String;)Z
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    return v5

    :cond_9
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    if-nez v2, :cond_10

    return v5

    :cond_10
    :try_start_10
    const-string/jumbo v3, "android"

    invoke-interface {v2, v3, p1}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1a

    return v6

    :cond_1a
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, p1, v4, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_27} :catch_2c

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2d

    return v6

    :catch_2c
    move-exception v1

    :cond_2d
    return v5
.end method

.method private static needForceOrientation()Z
    .registers 6

    const/4 v2, 0x0

    sget-object v3, Lcom/android/server/wm/WindowManagerServiceInjector;->FORCE_ORI_DEVICES_LIST:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_5
    if-ge v1, v4, :cond_16

    aget-object v0, v3, v1

    sget-object v5, Lcom/android/server/wm/WindowManagerServiceInjector;->CUR_DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    const/4 v1, 0x1

    return v1

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_16
    return v2
.end method
