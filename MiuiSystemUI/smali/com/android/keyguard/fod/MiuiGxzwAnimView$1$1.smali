.class Lcom/android/keyguard/fod/MiuiGxzwAnimView$1$1;
.super Ljava/lang/Object;
.source "MiuiGxzwAnimView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/fod/MiuiGxzwAnimView$1;->onInterrupt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/fod/MiuiGxzwAnimView$1;


# direct methods
.method constructor <init>(Lcom/android/keyguard/fod/MiuiGxzwAnimView$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView$1$1;->this$1:Lcom/android/keyguard/fod/MiuiGxzwAnimView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->releaseDrawWackLock()V

    return-void
.end method
