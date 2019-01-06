.class public Lcom/miui/hybrid/hook/HookClient;
.super Ljava/lang/Object;
.source "HookClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HookClient"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hookGetCallingPkg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    move-object v1, p1

    :try_start_1
    invoke-static {}, Lcom/miui/hybrid/hook/CallingPkgHook;->getInstance()Lcom/miui/hybrid/hook/CallingPkgHook;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/miui/hybrid/hook/CallingPkgHook;->getHookCallingPkg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_a

    move-result-object v1

    :goto_9
    return-object v1

    :catch_a
    move-exception v0

    const-string/jumbo v2, "HookClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception happened when hook getCallingPkg for hostApp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", originCallingPkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public static hookPkgInfo(Landroid/content/pm/PackageInfo;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 8

    move-object v1, p0

    :try_start_1
    invoke-static {}, Lcom/miui/hybrid/hook/PkgInfoHook;->getInstance()Lcom/miui/hybrid/hook/PkgInfoHook;

    move-result-object v2

    invoke-virtual {v2, p0, p1, p2}, Lcom/miui/hybrid/hook/PkgInfoHook;->hook(Landroid/content/pm/PackageInfo;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_a

    move-result-object v1

    :goto_9
    return-object v1

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v2, "HookClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception happened when hookPackageInfo for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public static redirectStartActivity(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7

    move-object v1, p0

    :try_start_1
    invoke-static {}, Lcom/miui/hybrid/hook/IntentHook;->getInstance()Lcom/miui/hybrid/hook/IntentHook;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/miui/hybrid/hook/IntentHook;->redirect(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_a

    move-result-object v1

    :goto_9
    return-object v1

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v2, "HookClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception happened when redirect intent for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method
