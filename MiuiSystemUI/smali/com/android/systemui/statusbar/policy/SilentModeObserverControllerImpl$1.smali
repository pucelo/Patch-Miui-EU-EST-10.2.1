.class Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl$1;
.super Ljava/lang/Object;
.source "SilentModeObserverControllerImpl.java"

# interfaces
.implements Lmiui/provider/ExtraTelephony$QuietModeEnableListener;


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
.method constructor <init>(Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQuietModeEnableChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->-set0(Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;Z)V

    return-void
.end method
