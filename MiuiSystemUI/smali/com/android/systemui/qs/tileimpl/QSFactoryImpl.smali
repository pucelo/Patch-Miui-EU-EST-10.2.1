.class public Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;
.super Ljava/lang/Object;
.source "QSFactoryImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QSFactory;


# instance fields
.field private final mHost:Lcom/android/systemui/qs/QSTileHost;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-void
.end method

.method private createTileInternal(Ljava/lang/String;)Lcom/android/systemui/qs/tileimpl/QSTileImpl;
    .locals 3

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/WifiTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    :cond_0
    const-string/jumbo v0, "bt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/systemui/qs/tiles/BluetoothTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    :cond_1
    const-string/jumbo v0, "cell"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/systemui/qs/tiles/CellularTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/CellularTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    :cond_2
    const-string/jumbo v0, "airplane"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    :cond_3
    const-string/jumbo v0, "rotation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/systemui/qs/tiles/RotationLockTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/RotationLockTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    :cond_4
    const-string/jumbo v0, "flashlight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/systemui/qs/tiles/FlashlightTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/FlashlightTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    :cond_5
    const-string/jumbo v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/android/systemui/qs/tiles/GpsTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/GpsTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    :cond_6
    const-string/jumbo v0, "hotspot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/android/systemui/qs/tiles/HotspotTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    :cond_7
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/android/systemui/qs/tiles/UserTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/UserTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    :cond_8
    const-string/jumbo v0, "saver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/android/systemui/qs/tiles/DataSaverTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/DataSaverTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    :cond_9
    const-string/jumbo v0, "nfc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/android/systemui/qs/tiles/NfcTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/NfcTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    :cond_a
    const-string/jumbo v0, "screenlock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/android/systemui/qs/tiles/ScreenLockTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/ScreenLockTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    :cond_b
    const-string/jumbo v0, "screenshot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/android/systemui/qs/tiles/ScreenShotTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/ScreenShotTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    :cond_c
    const-string/jumbo v0, "papermode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/android/systemui/qs/tiles/PaperModeTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/PaperModeTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    :cond_d
    const-string/jumbo v0, "autobrightness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    :cond_e
    const-string/jumbo v0, "vibrate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lcom/android/systemui/qs/tiles/VibrateTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/VibrateTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    :cond_f
    const-string/jumbo v0, "sync"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lcom/android/systemui/qs/tiles/SyncTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/SyncTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    :cond_10
    const-string/jumbo v0, "quietmode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lcom/android/systemui/qs/tiles/QuietModeTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/QuietModeTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    :cond_11
    const-string/jumbo v0, "mute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Lcom/android/systemui/qs/tiles/MuteTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/MuteTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    :cond_12
    const-string/jumbo v0, "edit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Lcom/android/systemui/qs/tiles/EditTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/EditTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    :cond_13
    const-string/jumbo v0, "powermode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Lcom/android/systemui/qs/tiles/PowerModeTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/PowerModeTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    :cond_14
    const-string/jumbo v0, "screenbutton"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Lcom/android/systemui/qs/tiles/ScreenButtonTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/ScreenButtonTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    :cond_15
    const-string/jumbo v0, "batterysaver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Lcom/android/systemui/qs/tiles/PowerSaverTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/PowerSaverTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    :cond_16
    const-string/jumbo v0, "extremebatterysaver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Lcom/android/systemui/qs/tiles/PowerSaverExtremeTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/PowerSaverExtremeTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    :cond_17
    const-string/jumbo v0, "drivemode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Lcom/android/systemui/qs/tiles/DriveModeTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/DriveModeTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    :cond_18
    const-string/jumbo v0, "intent("

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tiles/IntentTile;->create(Lcom/android/systemui/qs/QSHost;Ljava/lang/String;)Lcom/android/systemui/qs/tiles/IntentTile;

    move-result-object v0

    return-object v0

    :cond_19
    const-string/jumbo v0, "custom("

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/external/CustomTile;->create(Lcom/android/systemui/qs/QSTileHost;Ljava/lang/String;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object v0

    return-object v0

    :cond_1a
    const-string/jumbo v0, "QSFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad tile spec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->createTileInternal(Ljava/lang/String;)Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    move-result-object v0

    return-object v0
.end method

.method public createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTileHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/qs/QSTile;->createTileView(Landroid/content/Context;)Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v1

    if-eqz p2, :cond_0

    new-instance v2, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

    invoke-direct {v2, v0, v1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V

    return-object v2

    :cond_0
    new-instance v2, Lcom/android/systemui/qs/tileimpl/QSTileView;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V

    return-object v2
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public onCreate(Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method
