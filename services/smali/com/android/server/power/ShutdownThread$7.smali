.class Lcom/android/server/power/ShutdownThread$7;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/os/RecoverySystem$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->uncrypt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$7;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(I)V
    .registers 8

    const/16 v1, 0x64

    if-ltz p1, :cond_25

    if-ge p1, v1, :cond_25

    int-to-double v2, p1

    const-wide/high16 v4, 0x4054000000000000L    # 80.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    double-to-int p1, v2

    add-int/lit8 p1, p1, 0x14

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$7;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->-get4(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x104055c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get7()Lcom/android/server/power/ShutdownThread;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/android/server/power/ShutdownThread;->-wrap4(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    :cond_24
    :goto_24
    return-void

    :cond_25
    if-ne p1, v1, :cond_24

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$7;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->-get4(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x104055e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get7()Lcom/android/server/power/ShutdownThread;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/android/server/power/ShutdownThread;->-wrap4(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    goto :goto_24
.end method
