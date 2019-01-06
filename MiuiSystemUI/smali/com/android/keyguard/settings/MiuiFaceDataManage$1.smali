.class Lcom/android/keyguard/settings/MiuiFaceDataManage$1;
.super Ljava/lang/Object;
.source "MiuiFaceDataManage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/settings/MiuiFaceDataManage;->handleSecurityLockToggle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/settings/MiuiFaceDataManage;


# direct methods
.method constructor <init>(Lcom/android/keyguard/settings/MiuiFaceDataManage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/settings/MiuiFaceDataManage$1;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataManage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataManage$1;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataManage;

    invoke-virtual {v0}, Lcom/android/keyguard/settings/MiuiFaceDataManage;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "face_unlock_has_feature"

    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataManage$1;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataManage;

    invoke-virtual {v0}, Lcom/android/keyguard/settings/MiuiFaceDataManage;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->deleteFeature()V

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataManage$1;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataManage;

    invoke-virtual {v0}, Lcom/android/keyguard/settings/MiuiFaceDataManage;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->release(Z)V

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataManage$1;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataManage;

    invoke-virtual {v0}, Lcom/android/keyguard/settings/MiuiFaceDataManage;->finish()V

    :cond_0
    return-void
.end method
