.class Lcom/android/keyguard/settings/MiuiFaceDataInput$2;
.super Ljava/lang/Object;
.source "MiuiFaceDataInput.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/settings/MiuiFaceDataInput;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;


# direct methods
.method constructor <init>(Lcom/android/keyguard/settings/MiuiFaceDataInput;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$2;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$2;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-virtual {v1}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "face_unlock_has_feature"

    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v3

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v5, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.systemui"

    const-string/jumbo v2, "com.android.keyguard.settings.MiuiFaceDataManage"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "input_facedata_need_skip_password"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$2;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->startActivity(Landroid/content/Intent;)V

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$2;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-virtual {v1}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->finish()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$2;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v1}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get9(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$2;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v2}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get2(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$2;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-virtual {v1}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110266

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
