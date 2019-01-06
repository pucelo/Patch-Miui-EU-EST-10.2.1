.class public Lcom/android/systemui/miui/statusbar/notification/HookViewHelper;
.super Ljava/lang/Object;
.source "HookViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/miui/statusbar/notification/HookViewHelper$OnClickListenerProxy;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getClickListener(Landroid/view/View;)Landroid/view/View$OnClickListener;
    .locals 12

    const/4 v8, 0x0

    :try_start_0
    const-string/jumbo v10, "android.view.View"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v10, "mListenerInfo"

    invoke-virtual {v1, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    :cond_0
    const-string/jumbo v10, "android.view.View$ListenerInfo"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v10, "mOnClickListener"

    invoke-virtual {v2, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz v9, :cond_1

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Landroid/view/View$OnClickListener;

    move-object v8, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v8

    :catch_0
    move-exception v5

    const-string/jumbo v10, "HookViewManager"

    const-string/jumbo v11, "IllegalAccessException"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v6

    const-string/jumbo v10, "HookViewManager"

    const-string/jumbo v11, "NoSuchFieldException"

    invoke-static {v10, v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v4

    const-string/jumbo v10, "HookViewManager"

    const-string/jumbo v11, "ClassNotFoundException"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static hookView(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 3

    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/notification/HookViewHelper;->getClickListener(Landroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/systemui/miui/statusbar/notification/HookViewHelper$OnClickListenerProxy;

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/systemui/miui/statusbar/notification/HookViewHelper$OnClickListenerProxy;

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/miui/statusbar/notification/HookViewHelper$OnClickListenerProxy;-><init>(Landroid/view/View$OnClickListener;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
