.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$5;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$5;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$5;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleTapPending:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$5;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleTapPending:Z

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$5;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchHomeFromHotKey()V

    :cond_10
    return-void
.end method