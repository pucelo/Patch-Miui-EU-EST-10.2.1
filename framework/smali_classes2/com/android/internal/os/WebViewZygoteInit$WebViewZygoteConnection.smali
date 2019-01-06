.class Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteConnection;
.super Lcom/android/internal/os/ZygoteConnection;
.source "WebViewZygoteInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/WebViewZygoteInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebViewZygoteConnection"
.end annotation


# direct methods
.method constructor <init>(Landroid/net/LocalSocket;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/ZygoteConnection;-><init>(Landroid/net/LocalSocket;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handlePreloadPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    const-string/jumbo v9, "WebViewZygoteInit"

    const-string/jumbo v10, "Beginning package preload"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    move-result-object v9

    invoke-virtual {v9, p1, p2, p3}, Landroid/app/ApplicationLoaders;->createAndCacheWebViewClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v2

    sget-object v9, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {p1, v9}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    array-length v10, v4

    :goto_19
    if-ge v9, v10, :cond_23

    aget-object v3, v4, v9

    invoke-static {v3}, Lcom/android/internal/os/Zygote;->nativeAllowFileAcrossFork(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_19

    :cond_23
    const/4 v6, 0x0

    :try_start_24
    invoke-static {v2}, Landroid/webkit/WebViewFactory;->getWebViewProviderClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    const-string/jumbo v9, "preloadInZygote"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v9, v10, :cond_5b

    const-string/jumbo v9, "WebViewZygoteInit"

    const-string/jumbo v10, "Unexpected return type: preloadInZygote must return boolean"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_24 .. :try_end_47} :catch_7f

    :cond_47
    :goto_47
    :try_start_47
    invoke-virtual {p0}, Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteConnection;->getSocketOutputStream()Ljava/io/DataOutputStream;

    move-result-object v8

    if-eqz v6, :cond_8a

    const/4 v9, 0x1

    :goto_4e
    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_51} :catch_8c

    const-string/jumbo v9, "WebViewZygoteInit"

    const-string/jumbo v10, "Package preload done"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5b
    :try_start_5b
    const-string/jumbo v9, "preloadInZygote"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_47

    const-string/jumbo v9, "WebViewZygoteInit"

    const-string/jumbo v10, "preloadInZygote returned false"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_5b .. :try_end_7e} :catch_7f

    goto :goto_47

    :catch_7f
    move-exception v0

    const-string/jumbo v9, "WebViewZygoteInit"

    const-string/jumbo v10, "Exception while preloading package"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_47

    :cond_8a
    const/4 v9, 0x0

    goto :goto_4e

    :catch_8c
    move-exception v1

    new-instance v9, Ljava/lang/IllegalStateException;

    const-string/jumbo v10, "Error writing to command socket"

    invoke-direct {v9, v10, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method

.method protected isPreloadComplete()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected preload()V
    .registers 1

    return-void
.end method
