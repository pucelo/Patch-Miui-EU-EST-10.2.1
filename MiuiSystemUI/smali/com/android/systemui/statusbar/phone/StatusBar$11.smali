.class Lcom/android/systemui/statusbar/phone/StatusBar$11;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/stackdivider/Divider$DockedStackExistsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDockedStackMinimizedChanged(Z)V
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get20(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->setState(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get20(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->clearState(I)V

    goto :goto_0
.end method
