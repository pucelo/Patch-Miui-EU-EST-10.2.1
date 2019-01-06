.class Lcom/android/server/display/ScreenEffectService$PaperModeAnimatListener;
.super Ljava/lang/Object;
.source "ScreenEffectService.java"

# interfaces
.implements Lcom/android/server/display/MiuiRampAnimator$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ScreenEffectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PaperModeAnimatListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ScreenEffectService;


# direct methods
.method constructor <init>(Lcom/android/server/display/ScreenEffectService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/ScreenEffectService$PaperModeAnimatListener;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$PaperModeAnimatListener;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-get2(Lcom/android/server/display/ScreenEffectService;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$PaperModeAnimatListener;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-wrap5(Lcom/android/server/display/ScreenEffectService;)V

    :cond_e
    return-void
.end method
