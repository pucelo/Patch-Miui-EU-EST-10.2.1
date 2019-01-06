.class Lcom/android/systemui/recents/misc/SystemServicesProxy$5;
.super Ljava/lang/Object;
.source "SystemServicesProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerMiuiTaskResizeList(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$5;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iput-object p2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v7, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$5;->val$context:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getMultiWindowForceResizeList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$5;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v7, v7, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v7}, Landroid/app/ActivityManager;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string/jumbo v8, "setResizeWhiteList"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const-class v10, Ljava/util/List;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$5;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v7, v7, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v7, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$5;->val$context:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getMultiWindowForceNotResizeList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    :try_start_1
    iget-object v7, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$5;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v7, v7, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v7}, Landroid/app/ActivityManager;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string/jumbo v8, "setResizeBlackList"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const-class v10, Ljava/util/List;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$5;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v7, v7, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1
.end method
