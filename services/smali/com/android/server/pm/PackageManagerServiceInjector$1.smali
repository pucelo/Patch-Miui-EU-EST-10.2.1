.class final Lcom/android/server/pm/PackageManagerServiceInjector$1;
.super Ljava/lang/Object;
.source "PackageManagerServiceInjector.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 8

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_58

    :goto_5
    const/4 v3, 0x1

    return v3

    :pswitch_7
    :try_start_7
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v1, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;

    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceInjector;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "goon the pending installation"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;->-wrap0(Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_4c

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;->-get0(Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_26} :catch_27

    goto :goto_5

    :catch_27
    move-exception v2

    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceInjector;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "failed goon the pending installation due to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_4c
    :try_start_4c
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceInjector;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "handler dismissed"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_56} :catch_27

    goto :goto_5

    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method
