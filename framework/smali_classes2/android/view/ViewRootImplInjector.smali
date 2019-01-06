.class public Landroid/view/ViewRootImplInjector;
.super Ljava/lang/Object;
.source "ViewRootImplInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImplInjector$1;
    }
.end annotation


# static fields
.field private static final GESTURE_FINGER_COUNT:I = 0x3

.field private static final PACKAGE_ALLOW_DRAW_IF_ANIMATING:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PACKAGE_NAME_HOME:Ljava/lang/String; = "com.miui.home"

.field private static final PACKAGE_NAME_SYSTEMUI:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "ViewRootImpl"

.field static sLauncher:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/view/ViewRootImplInjector$1;

    invoke-direct {v0}, Landroid/view/ViewRootImplInjector$1;-><init>()V

    sput-object v0, Landroid/view/ViewRootImplInjector;->PACKAGE_ALLOW_DRAW_IF_ANIMATING:Ljava/util/Set;

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.miui.home"

    const-string/jumbo v2, "com.miui.home.launcher.Launcher"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/view/ViewRootImplInjector;->sLauncher:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static allowDrawIfAnimating(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Landroid/view/ViewRootImplInjector;->PACKAGE_ALLOW_DRAW_IF_ANIMATING:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static checkForThreeGesture(Landroid/view/MotionEvent;)V
    .registers 4

    const/4 v2, 0x3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_1d

    const-string/jumbo v0, "sys.miui.screenshot"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    const-string/jumbo v0, "ViewRootImpl"

    const-string/jumbo v1, "cancle motionEvent because of threeGesture detecting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return-void
.end method

.method private static elementToString(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static needUpdateWindowState(Landroid/view/ViewRootImpl;Z)Z
    .registers 11

    const/4 v8, 0x0

    const/4 v7, 0x1

    if-eqz p0, :cond_8

    xor-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_9

    :cond_8
    return v7

    :cond_9
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    if-nez v2, :cond_e

    return v7

    :cond_e
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/view/ViewRootImplInjector;->sLauncher:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    const-string/jumbo v5, "activity"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v5, 0x1

    :try_start_28
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_49

    sget-object v5, Landroid/view/ViewRootImplInjector;->sLauncher:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_44} :catch_48

    move-result v5

    if-eqz v5, :cond_49

    return v8

    :catch_48
    move-exception v3

    :cond_49
    return v7
.end method

.method public static transformWindowType(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .registers 8

    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v4, :cond_a

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    return-void

    :cond_b
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7d5

    if-ne v4, v5, :cond_6f

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v4, "android.view.ViewRootImplInjector.transformWindowType"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "android.view.ViewRootImpl.setView"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "android.view.WindowManagerGlobal.addView"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "android.view.WindowManagerImpl.addView"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "android.widget.Toast$TN.handleShow"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_34
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v4, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v4, v5, :cond_6f

    const/4 v1, 0x0

    :goto_45
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6f

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aget-object v5, v3, v1

    invoke-static {v5}, Landroid/view/ViewRootImplInjector;->elementToString(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_62

    const/16 v4, 0x7d3

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->type:I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_61} :catch_65

    return-void

    :cond_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    :catch_65
    move-exception v0

    const-string/jumbo v4, "ViewRootImpl"

    const-string/jumbo v5, " transformWindowTye error "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6f
    return-void
.end method
