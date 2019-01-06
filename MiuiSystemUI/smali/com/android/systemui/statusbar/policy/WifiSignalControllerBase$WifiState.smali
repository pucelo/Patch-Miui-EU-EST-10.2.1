.class Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;
.super Lcom/android/systemui/statusbar/policy/SignalController$State;
.source "WifiSignalControllerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WifiState"
.end annotation


# instance fields
.field badgeEnum:I

.field isTransient:Z

.field noNetwork:Z

.field ssid:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SignalController$State;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/systemui/statusbar/policy/SignalController$State;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController$State;->copyFrom(Lcom/android/systemui/statusbar/policy/SignalController$State;)V

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->ssid:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->ssid:Ljava/lang/String;

    iget v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->badgeEnum:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->badgeEnum:I

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->isTransient:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->isTransient:Z

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->noNetwork:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->noNetwork:Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->ssid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->ssid:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->badgeEnum:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->badgeEnum:I

    if-ne v0, v2, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->isTransient:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->isTransient:Z

    if-ne v0, v2, :cond_1

    check-cast p1, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->noNetwork:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->noNetwork:Z

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 3

    const/16 v2, 0x2c

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController$State;->toString(Ljava/lang/StringBuilder;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "badgeEnum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->badgeEnum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "isTransient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->isTransient:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "noNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->noNetwork:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-void
.end method
