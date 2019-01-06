.class Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$1;
.super Landroid/database/ContentObserver;
.source "MiuiKeyguardMoveLeftControlCenterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$1;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$1;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    invoke-static {v1}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->-get0(Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "torch_state"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$1;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    invoke-static {v1}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->-get2(Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
