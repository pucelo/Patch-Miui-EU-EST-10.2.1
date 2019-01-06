.class Lcom/android/keyguard/settings/MiuiFaceDataInput$5;
.super Ljava/lang/Object;
.source "MiuiFaceDataInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/settings/MiuiFaceDataInput;->openCameraSucced(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/settings/MiuiFaceDataInput;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$5;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    iput-boolean p2, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$5;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$5;->val$result:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$5;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get8(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Lcom/android/keyguard/settings/CameraView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/keyguard/settings/CameraView;->refreshCameraView(Z)V

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$5;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get8(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Lcom/android/keyguard/settings/CameraView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$5;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-virtual {v1}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/settings/CameraView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$5;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get9(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/settings/MiuiFaceDataInput$5$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput$5$1;-><init>(Lcom/android/keyguard/settings/MiuiFaceDataInput$5;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$5;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get1(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$5;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get3(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$5;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-set1(Lcom/android/keyguard/settings/MiuiFaceDataInput;J)J

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$5;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get3(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f110263

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
