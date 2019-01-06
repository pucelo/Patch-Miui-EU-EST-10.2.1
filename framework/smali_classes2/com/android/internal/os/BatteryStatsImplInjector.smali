.class public Lcom/android/internal/os/BatteryStatsImplInjector;
.super Ljava/lang/Object;
.source "BatteryStatsImplInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProcessName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_17

    const-string/jumbo v2, "#for"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_d

    return-object p0

    :cond_d
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_17
    return-object p0
.end method
