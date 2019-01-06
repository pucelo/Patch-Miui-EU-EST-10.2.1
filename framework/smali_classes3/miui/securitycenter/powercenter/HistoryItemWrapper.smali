.class public Lmiui/securitycenter/powercenter/HistoryItemWrapper;
.super Ljava/lang/Object;
.source "HistoryItemWrapper.java"


# static fields
.field static final CMD_CURRENT_TIME:B = 0x5t

.field static final CMD_NULL:B = -0x1t

.field static final CMD_OVERFLOW:B = 0x6t

.field static final CMD_RESET:B = 0x7t

.field static final CMD_SHUTDOWN:B = 0x8t

.field static final CMD_START:B = 0x4t

.field static final CMD_UPDATE:B


# instance fields
.field batteryHealth:B

.field batteryLevel:B

.field batteryPlugType:B

.field batteryStatus:B

.field batteryTemperature:S

.field batteryVoltage:C

.field charging:Z

.field cmd:B

.field cpuRunning:Z

.field gpsOn:Z

.field phoneSignalStrength:I

.field screenOn:Z

.field time:J

.field wakelockOn:Z

.field wifiOn:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cmd:B

    return-void
.end method


# virtual methods
.method public getObjectValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    const-string/jumbo v0, "time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->time:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_10
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-byte v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cmd:B

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_20
    const-string/jumbo v0, "batteryLevel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-byte v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryLevel:B

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_30
    const-string/jumbo v0, "batteryStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-byte v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryStatus:B

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_40
    const-string/jumbo v0, "batteryHealth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-byte v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryHealth:B

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_50
    const-string/jumbo v0, "batteryPlugType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    iget-byte v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryPlugType:B

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_60
    const-string/jumbo v0, "batteryTemperature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    iget-short v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryTemperature:S

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_70
    const-string/jumbo v0, "batteryVoltage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    iget-char v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryVoltage:C

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_80
    const-string/jumbo v0, "wifiOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    iget-boolean v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->wifiOn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_90
    const-string/jumbo v0, "gpsOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    iget-boolean v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->gpsOn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_a0
    const-string/jumbo v0, "charging"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    iget-boolean v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->charging:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_b0
    const-string/jumbo v0, "screenOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    iget-boolean v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->screenOn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_c0
    const-string/jumbo v0, "wakelockOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    iget-boolean v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->wakelockOn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_d0
    const-string/jumbo v0, "phoneSignalStrength"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e0

    iget v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->phoneSignalStrength:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_e0
    const-string/jumbo v0, "cpuRunning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f0

    iget-boolean v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cpuRunning:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_f0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTime()J
    .registers 3

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->time:J

    return-wide v0
.end method

.method public isDeltaData()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_f

    iget-byte v2, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cmd:B

    if-nez v2, :cond_d

    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_c

    :cond_f
    iget-byte v2, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cmd:B

    if-ne v2, v0, :cond_14

    :goto_13
    return v0

    :cond_14
    move v0, v1

    goto :goto_13
.end method

.method public isOverflow()Z
    .registers 3

    iget-byte v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cmd:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method
