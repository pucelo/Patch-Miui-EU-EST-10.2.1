.class Lcom/android/keyguard/KeyguardClockContainer$1;
.super Ljava/lang/Object;
.source "KeyguardClockContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardClockContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardClockContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardClockContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockContainer$1;->this$0:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer$1;->this$0:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardClockContainer;->-get0(Lcom/android/keyguard/KeyguardClockContainer;)Lcom/android/keyguard/KeyguardClockContainer$KeyguardClockView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer$1;->this$0:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardClockContainer;->-get0(Lcom/android/keyguard/KeyguardClockContainer;)Lcom/android/keyguard/KeyguardClockContainer$KeyguardClockView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardClockContainer$KeyguardClockView;->updateTime()V

    :cond_0
    return-void
.end method
