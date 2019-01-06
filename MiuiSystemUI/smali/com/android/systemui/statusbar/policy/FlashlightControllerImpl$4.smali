.class Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$4;
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

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$4;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Ljava/lang/String;

    move-result-object v7

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$4;->val$enabled:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-get8(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)I

    move-result v5

    :goto_0
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/miui/Shell;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v5, "FlashlightController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setFlashModeInternal: file writer write: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$4;->val$enabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$4;->val$enabled:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-get8(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)I

    move-result v6

    :cond_0
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v5, v6

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_2
    :try_start_3
    const-string/jumbo v5, "FlashlightController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FileWriter write failed!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_4
    throw v5

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v5

    move-object v3, v4

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v3, v4

    goto :goto_2
.end method
