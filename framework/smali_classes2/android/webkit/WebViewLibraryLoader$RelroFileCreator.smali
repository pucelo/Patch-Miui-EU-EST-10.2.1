.class Landroid/webkit/WebViewLibraryLoader$RelroFileCreator;
.super Ljava/lang/Object;
.source "WebViewLibraryLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewLibraryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RelroFileCreator"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 9

    const/4 v7, 0x0

    const/4 v2, 0x0

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v1

    :try_start_a
    array-length v3, p0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_13

    const/4 v3, 0x0

    aget-object v3, p0, v3

    if-nez v3, :cond_49

    :cond_13
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid RelroFileCreator args: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_a .. :try_end_32} :catchall_ff

    :try_start_32
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v3

    invoke-interface {v3}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted()V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_39} :catch_b3

    :goto_39
    if-nez v2, :cond_45

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "failed to create relro file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_49
    const/4 v3, 0x1

    :try_start_4a
    aget-object v3, p0, v3

    if-eqz v3, :cond_13

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RelroFileCreator (64bit = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "), "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " 32-bit lib: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, p0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", 64-bit lib: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, p0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-get1()Z

    move-result v3

    if-nez v3, :cond_cc

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "can\'t create relro file; address space not reserved"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c
    .catchall {:try_start_4a .. :try_end_9c} :catchall_ff

    :try_start_9c
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v3

    invoke-interface {v3}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted()V
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_a3} :catch_c0

    :goto_a3
    if-nez v2, :cond_af

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "failed to create relro file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_af
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    return-void

    :catch_b3
    move-exception v0

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "error notifying update service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_39

    :catch_c0
    move-exception v0

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "error notifying update service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a3

    :cond_cc
    const/4 v3, 0x0

    :try_start_cd
    aget-object v3, p0, v3

    const/4 v4, 0x1

    aget-object v4, p0, v4

    const-string/jumbo v5, "/data/misc/shared_relro/libwebviewchromium32.relro"

    const-string/jumbo v6, "/data/misc/shared_relro/libwebviewchromium64.relro"

    invoke-static {v3, v4, v5, v6}, Landroid/webkit/WebViewLibraryLoader;->nativeCreateRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_db
    .catchall {:try_start_cd .. :try_end_db} :catchall_ff

    move-result v2

    :try_start_dc
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v3

    invoke-interface {v3}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted()V
    :try_end_e3
    .catch Landroid/os/RemoteException; {:try_start_dc .. :try_end_e3} :catch_f3

    :goto_e3
    if-nez v2, :cond_ef

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "failed to create relro file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ef
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    return-void

    :catch_f3
    move-exception v0

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "error notifying update service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e3

    :catchall_ff
    move-exception v3

    :try_start_100
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v4

    invoke-interface {v4}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted()V
    :try_end_107
    .catch Landroid/os/RemoteException; {:try_start_100 .. :try_end_107} :catch_117

    :goto_107
    if-nez v2, :cond_113

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "failed to create relro file"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_113
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    throw v3

    :catch_117
    move-exception v0

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "error notifying update service"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_107
.end method
