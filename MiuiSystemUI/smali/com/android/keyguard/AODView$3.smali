.class Lcom/android/keyguard/AODView$3;
.super Landroid/database/ContentObserver;
.source "AODView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/AODView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/AODView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/AODView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/AODView$3;->this$0:Lcom/android/keyguard/AODView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v1, p0, Lcom/android/keyguard/AODView$3;->this$0:Lcom/android/keyguard/AODView;

    iget-object v0, p0, Lcom/android/keyguard/AODView$3;->this$0:Lcom/android/keyguard/AODView;

    invoke-virtual {v0}, Lcom/android/keyguard/AODView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->getKeyguardNotificationStatus(Landroid/content/ContentResolver;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/keyguard/AODView;->-set0(Lcom/android/keyguard/AODView;Z)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
