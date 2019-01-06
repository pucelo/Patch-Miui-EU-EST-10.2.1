.class public Lmiui/app/ConnectivityManagerReflector;
.super Ljava/lang/Object;
.source "ConnectivityManagerReflector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiManagerReflector"

.field public static final TETHERING_WIFI:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWifiStaSapConcurrency(Landroid/net/wifi/WifiManager;)Z
    .registers 6

    const/4 v1, 0x0

    const-string/jumbo v2, "getWifiStaSapConcurrency"

    const-class v3, Ljava/lang/Boolean;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3, v4}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v0

    if-nez v0, :cond_f

    :goto_e
    return v1

    :cond_f
    invoke-virtual {v0}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_e
.end method

.method public static startTethering(Landroid/net/ConnectivityManager;IZ)Z
    .registers 16

    const/4 v9, 0x0

    const-class v1, Landroid/net/ConnectivityManager;

    const/4 v10, 0x3

    :try_start_4
    new-array v8, v10, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v10, v8, v11

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x1

    aput-object v10, v8, v11

    const-string/jumbo v10, "android.net.ConnectivityManager$OnStartTetheringCallback"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v8, v11

    const-string/jumbo v10, "startTethering"

    invoke-virtual {v1, v10, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v0, Lmiui/app/ConnectivityManagerReflector$1;

    invoke-direct {v0}, Lmiui/app/ConnectivityManagerReflector$1;-><init>()V

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const/4 v11, 0x2

    aput-object v0, v10, v11

    invoke-virtual {v7, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_41} :catch_6f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_41} :catch_64
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_41} :catch_59
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_41} :catch_4e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_41} :catch_43

    const/4 v9, 0x1

    :goto_42
    return v9

    :catch_43
    move-exception v3

    const-string/jumbo v10, "WifiManagerReflector"

    const-string/jumbo v11, "Exception"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42

    :catch_4e
    move-exception v6

    const-string/jumbo v10, "WifiManagerReflector"

    const-string/jumbo v11, "InvocationTargetException"

    invoke-static {v10, v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42

    :catch_59
    move-exception v4

    const-string/jumbo v10, "WifiManagerReflector"

    const-string/jumbo v11, "IllegalAccessException"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42

    :catch_64
    move-exception v5

    const-string/jumbo v10, "WifiManagerReflector"

    const-string/jumbo v11, "NoSuchMethodException"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42

    :catch_6f
    move-exception v2

    const-string/jumbo v10, "WifiManagerReflector"

    const-string/jumbo v11, "ClassNotFoundException"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42
.end method

.method public static stopTethering(Landroid/net/ConnectivityManager;I)Z
    .registers 13

    const/4 v6, 0x0

    const-class v0, Landroid/net/ConnectivityManager;

    :try_start_3
    const-string/jumbo v7, "stopTethering"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v5, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_23} :catch_46
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_23} :catch_3b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_23} :catch_30
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_23} :catch_25

    const/4 v6, 0x1

    :goto_24
    return v6

    :catch_25
    move-exception v1

    const-string/jumbo v7, "WifiManagerReflector"

    const-string/jumbo v8, "Exception"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    :catch_30
    move-exception v4

    const-string/jumbo v7, "WifiManagerReflector"

    const-string/jumbo v8, "InvocationTargetException"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    :catch_3b
    move-exception v2

    const-string/jumbo v7, "WifiManagerReflector"

    const-string/jumbo v8, "IllegalAccessException"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    :catch_46
    move-exception v3

    const-string/jumbo v7, "WifiManagerReflector"

    const-string/jumbo v8, "NoSuchMethodException"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24
.end method
