.class Lcom/android/keyguard/fod/MiuiGxzwManager$1;
.super Ljava/lang/Object;
.source "MiuiGxzwManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/fod/MiuiGxzwManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/fod/MiuiGxzwManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$1;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$1;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-set1(Lcom/android/keyguard/fod/MiuiGxzwManager;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$1;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->updateGxzwState()V

    return-void
.end method
