.class Lcom/android/keyguard/UnlockHintSwitcher$1;
.super Ljava/lang/Object;
.source "UnlockHintSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/UnlockHintSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/UnlockHintSwitcher;


# direct methods
.method constructor <init>(Lcom/android/keyguard/UnlockHintSwitcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/UnlockHintSwitcher$1;->this$0:Lcom/android/keyguard/UnlockHintSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/UnlockHintSwitcher$1;->this$0:Lcom/android/keyguard/UnlockHintSwitcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/UnlockHintSwitcher;->-set0(Lcom/android/keyguard/UnlockHintSwitcher;Z)Z

    return-void
.end method
