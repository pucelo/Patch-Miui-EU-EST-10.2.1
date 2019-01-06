.class Lcom/android/internal/util/ReadWriteNV$1;
.super Ljava/lang/Object;
.source "ReadWriteNV.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/ReadWriteNV;->readWriteNV()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/util/ReadWriteNV;


# direct methods
.method constructor <init>(Lcom/android/internal/util/ReadWriteNV;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/util/ReadWriteNV$1;->this$0:Lcom/android/internal/util/ReadWriteNV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/ReadWriteNV$1;->this$0:Lcom/android/internal/util/ReadWriteNV;

    iget-object v2, p0, Lcom/android/internal/util/ReadWriteNV$1;->this$0:Lcom/android/internal/util/ReadWriteNV;

    invoke-static {v2}, Lcom/android/internal/util/ReadWriteNV;->-get1(Lcom/android/internal/util/ReadWriteNV;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/util/ReadWriteNV$1;->this$0:Lcom/android/internal/util/ReadWriteNV;

    invoke-static {v3}, Lcom/android/internal/util/ReadWriteNV;->-get0(Lcom/android/internal/util/ReadWriteNV;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/internal/util/ReadWriteNV$1;->this$0:Lcom/android/internal/util/ReadWriteNV;

    invoke-static {v4}, Lcom/android/internal/util/ReadWriteNV;->-get2(Lcom/android/internal/util/ReadWriteNV;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/ReadWriteNV;->send_command(IZLjava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    :goto_17
    return-void

    :catch_18
    move-exception v0

    const-string/jumbo v1, "ReadWriteNV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method
