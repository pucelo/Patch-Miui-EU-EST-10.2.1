.class Lcom/android/keyguard/AwesomeLockScreen$3;
.super Ljava/lang/Object;
.source "AwesomeLockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/AwesomeLockScreen;->unlocked(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/AwesomeLockScreen;


# direct methods
.method constructor <init>(Lcom/android/keyguard/AwesomeLockScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/AwesomeLockScreen$3;->this$0:Lcom/android/keyguard/AwesomeLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/AwesomeLockScreen$3;->this$0:Lcom/android/keyguard/AwesomeLockScreen;

    invoke-static {v1}, Lcom/android/keyguard/AwesomeLockScreen;->-wrap0(Lcom/android/keyguard/AwesomeLockScreen;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AwesomeLockScreen"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
