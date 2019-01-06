.class Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$3;
.super Ljava/lang/Object;
.source "FlashlightControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setMiuiFlashModeInternal(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v0, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileReader;->read()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    const/16 v6, 0x30

    if-ne v5, v6, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    move-object v3, v4

    :cond_1
    :goto_2
    if-eqz v0, :cond_4

    const-string/jumbo v5, "FlashlightController"

    const-string/jumbo v6, "setFlashModeInternal: StatusDetectingRunnable: state change"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-wrap2(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Z)V

    :goto_3
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_4
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v5

    :goto_5
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_6
    throw v5

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :cond_4
    const-string/jumbo v5, "FlashlightController"

    const-string/jumbo v6, "setFlashModeInternal: in runnable, post delay StatusDetectingRunnable"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-get6(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v8, 0x3e8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :catchall_1
    move-exception v5

    move-object v3, v4

    goto :goto_5

    :catch_4
    move-exception v2

    move-object v3, v4

    goto :goto_4
.end method
