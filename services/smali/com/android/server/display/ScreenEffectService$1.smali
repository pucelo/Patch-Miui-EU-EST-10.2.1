.class Lcom/android/server/display/ScreenEffectService$1;
.super Landroid/util/IntProperty;
.source "ScreenEffectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/ScreenEffectService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty",
        "<",
        "Lmiui/hardware/display/DisplayFeatureManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ScreenEffectService;


# direct methods
.method constructor <init>(Lcom/android/server/display/ScreenEffectService;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/display/ScreenEffectService$1;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-direct {p0, p2}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lmiui/hardware/display/DisplayFeatureManager;)Ljava/lang/Integer;
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lmiui/hardware/display/DisplayFeatureManager;

    invoke-virtual {p0, p1}, Lcom/android/server/display/ScreenEffectService$1;->get(Lmiui/hardware/display/DisplayFeatureManager;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .registers 3

    check-cast p1, Lmiui/hardware/display/DisplayFeatureManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/ScreenEffectService$1;->setValue(Lmiui/hardware/display/DisplayFeatureManager;I)V

    return-void
.end method

.method public setValue(Lmiui/hardware/display/DisplayFeatureManager;I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$1;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-get2(Lcom/android/server/display/ScreenEffectService;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    if-gtz p2, :cond_17

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$1;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-get10(Lcom/android/server/display/ScreenEffectService;)Lcom/android/server/display/MiuiRampAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/MiuiRampAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_17
    const/4 v0, 0x3

    invoke-virtual {p1, v0, p2}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(II)V

    :cond_1b
    return-void
.end method
