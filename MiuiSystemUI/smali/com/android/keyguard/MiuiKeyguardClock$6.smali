.class Lcom/android/keyguard/MiuiKeyguardClock$6;
.super Ljava/lang/Object;
.source "MiuiKeyguardClock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/MiuiKeyguardClock;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MiuiKeyguardClock;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MiuiKeyguardClock;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardClock$6;->this$0:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock$6;->this$0:Lcom/android/keyguard/MiuiKeyguardClock;

    iget-object v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "lockScreenInfo"

    invoke-static {v0, v1}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;->gotoLockScreenMagazine(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock$6;->this$0:Lcom/android/keyguard/MiuiKeyguardClock;

    iget-object v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "click_entry"

    invoke-static {v0, v1}, Lcom/android/keyguard/analytics/LockScreenMagazineAnalytics;->recordLockScreenMagazinePreviewAction(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
