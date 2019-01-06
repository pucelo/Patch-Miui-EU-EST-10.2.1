.class Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl$2;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "SilentModeObserverControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->-get0(Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/MiuiSettings$SilenceMode;->isSilenceModeEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->-set0(Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;Z)V

    return-void
.end method
