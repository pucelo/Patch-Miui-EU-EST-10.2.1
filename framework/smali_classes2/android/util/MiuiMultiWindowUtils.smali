.class public Landroid/util/MiuiMultiWindowUtils;
.super Ljava/lang/Object;
.source "MiuiMultiWindowUtils.java"


# static fields
.field static final FREEFORM_TO_NAVIBAR:I = 0x96

.field static final FREEFORM_WINDOW_HEIGHT:I = 0x42e

.field static final FREEFORM_WINDOW_MIN:I = 0x2bc

.field static final FREEFORM_WINDOW_WIDTH:I = 0x3a2

.field static final TAG:Ljava/lang/String; = "FreeformWindow"

.field private static sAppList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/util/MiuiMultiWindowUtils;->sAppList:Ljava/util/HashMap;

    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->sAppList:Ljava/util/HashMap;

    const-string/jumbo v1, "com.tencent.mm"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->sAppList:Ljava/util/HashMap;

    const-string/jumbo v1, "com.tencent.mobileqq"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exitFreeFormWindowIfNeeded()V
    .registers 9

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    if-eqz v2, :cond_28

    iget-object v4, v2, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    if-eqz v4, :cond_28

    iget-object v4, v2, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v5, v4

    :goto_14
    if-ge v3, v5, :cond_28

    aget v1, v4, v3

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface {v6, v1, v7, v8}, Landroid/app/IActivityManager;->moveTaskToStack(IIZ)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_21} :catch_24

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_28
    return-void
.end method

.method public static getActivityOptions(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ActivityOptions;
    .registers 12

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "gb_boosting"

    const/4 v8, -0x2

    invoke-static {v6, v7, v9, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_69

    sget-boolean v6, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    xor-int/lit8 v2, v6, 0x1

    :goto_14
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    const/4 v6, 0x3

    :try_start_19
    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v4

    if-eqz v4, :cond_32

    iget-object v6, v4, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    if-eqz v6, :cond_32

    iget-object v6, v4, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v6, v6

    if-lez v6, :cond_32

    const-string/jumbo v6, "FreeformWindow"

    const-string/jumbo v7, "current focusStack is DOCKED and will cancel freeform"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_31} :catch_6b

    const/4 v2, 0x0

    :cond_32
    :goto_32
    const-string/jumbo v6, "FreeformWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isLaunchMultiWindow:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " gameKey:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    if-eqz v2, :cond_68

    invoke-static {p1}, Landroid/util/MiuiMultiWindowUtils;->supportFreeFromWindow(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_68

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    :cond_68
    return-object v3

    :cond_69
    const/4 v2, 0x0

    goto :goto_14

    :catch_6b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_32
.end method

.method public static getFreeformRect(Landroid/content/Context;Z)Landroid/graphics/Rect;
    .registers 16

    if-nez p0, :cond_4

    const/4 v11, 0x0

    return-object v11

    :cond_4
    const-string/jumbo v11, "window"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/16 v9, 0x3a2

    const/16 v8, 0x42e

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v2, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v1, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v11, 0x3a2

    if-le v2, v11, :cond_45

    const/16 v11, 0x42e

    if-gt v1, v11, :cond_8f

    :cond_45
    const-string/jumbo v11, "FreeformWindow"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "The freeform window ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ") is bigger than screen ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    mul-int/lit8 v11, v2, 0x3

    div-int/lit8 v9, v11, 0x5

    mul-int/lit8 v11, v1, 0x3

    div-int/lit8 v8, v11, 0x5

    :cond_8f
    const/16 v11, 0x2bc

    if-ge v9, v11, :cond_95

    const/16 v9, 0x2bc

    :cond_95
    const/16 v11, 0x2bc

    if-ge v8, v11, :cond_9b

    const/16 v8, 0x2bc

    :cond_9b
    if-eqz p1, :cond_af

    sub-int v11, v5, v9

    div-int/lit8 v3, v11, 0x2

    :goto_a1
    add-int v4, v3, v9

    if-eqz p1, :cond_b2

    const/16 v7, 0x96

    :goto_a7
    add-int v0, v7, v8

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v3, v7, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v11

    :cond_af
    const/16 v3, 0x96

    goto :goto_a1

    :cond_b2
    sub-int v11, v5, v8

    div-int/lit8 v7, v11, 0x2

    goto :goto_a7
.end method

.method public static getOrientation(Landroid/content/Context;)I
    .registers 5

    if-nez p0, :cond_4

    const/4 v2, -0x1

    return v2

    :cond_4
    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v2, v3, :cond_25

    const/4 v2, 0x2

    :goto_24
    return v2

    :cond_25
    const/4 v2, 0x1

    goto :goto_24
.end method

.method public static moveTaskToStack(IIZ)I
    .registers 10

    const-string/jumbo v4, "FreeformWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "moveTaskToStack "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", isOnTop:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/util/MiuiMultiWindowUtils;->supportFreeFromWindow(I)Z

    move-result v4

    if-eqz v4, :cond_6f

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_42
    invoke-interface {v1, p0, p1, p2}, Landroid/app/IActivityManager;->moveTaskToStack(IIZ)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_45} :catch_4a
    .catchall {:try_start_42 .. :try_end_45} :catchall_6a

    const/4 v4, 0x1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catch_4a
    move-exception v0

    :try_start_4b
    const-string/jumbo v4, "FreeformWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "moveTaskToStack failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_4b .. :try_end_65} :catchall_6a

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_68
    const/4 v4, -0x1

    return v4

    :catchall_6a
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :cond_6f
    const-string/jumbo v4, "FreeformWindow"

    const-string/jumbo v5, "only support mobileqq & wechat"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68
.end method

.method public static resizeTask(ILandroid/graphics/Rect;I)I
    .registers 10

    const-string/jumbo v4, "FreeformWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resizeTask taskId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " resizeMode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " bounds "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/util/MiuiMultiWindowUtils;->supportFreeFromWindow(I)Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_46
    invoke-interface {v1, p0, p1, p2}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_49} :catch_4e
    .catchall {:try_start_46 .. :try_end_49} :catchall_6e

    const/4 v4, 0x1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catch_4e
    move-exception v0

    :try_start_4f
    const-string/jumbo v4, "FreeformWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resizeTask failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catchall {:try_start_4f .. :try_end_69} :catchall_6e

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_6c
    const/4 v4, -0x1

    return v4

    :catchall_6e
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :cond_73
    const-string/jumbo v4, "FreeformWindow"

    const-string/jumbo v5, "only support mobileqq & wechat"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c
.end method

.method public static supportFreeFromWindow(I)Z
    .registers 4

    const-string/jumbo v1, ""

    :try_start_3
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_15

    move-result-object v1

    :goto_b
    sget-object v2, Landroid/util/MiuiMultiWindowUtils;->sAppList:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    :goto_14
    return v2

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b

    :cond_1a
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public static supportFreeFromWindow(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->sAppList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
