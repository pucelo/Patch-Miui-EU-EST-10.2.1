.class Lcom/android/systemui/keyguard/KeyguardViewMediator$16;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field final synthetic val$currentUser:Landroid/os/UserHandle;

.field final synthetic val$currentUserId:I

.field final synthetic val$um:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/UserManager;Landroid/os/UserHandle;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$16;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$16;->val$um:Landroid/os/UserManager;

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$16;->val$currentUser:Landroid/os/UserHandle;

    iput p4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$16;->val$currentUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$16;->val$um:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$16;->val$currentUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/UserManagerCompat;->getProfileIdsWithDisabled(Landroid/os/UserManager;I)[I

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget v0, v2, v1

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$16;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v4, v4, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get0()Landroid/content/Intent;

    move-result-object v5

    invoke-static {v0}, Landroid/os/UserHandleCompat;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$16;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get15(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$16;->val$currentUserId:I

    invoke-static {v1, v2}, Lcom/android/internal/widget/LockPatternUtilsCompat;->userPresent(Lcom/android/internal/widget/LockPatternUtils;I)V

    return-void
.end method
