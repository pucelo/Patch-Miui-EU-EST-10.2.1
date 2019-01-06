.class Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;
.super Ljava/lang/Object;
.source "CellularTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/CellularTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellSignalCallback"
.end annotation


# instance fields
.field private final mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/CellularTile;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;)Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    return-object v0
.end method

.method private constructor <init>(Lcom/android/systemui/qs/tiles/CellularTile;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;-><init>(Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/CellularTile;Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;-><init>(Lcom/android/systemui/qs/tiles/CellularTile;)V

    return-void
.end method


# virtual methods
.method public setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 0

    return-void
.end method

.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->airplaneModeEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/CellularTile;->-wrap0(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V

    return-void
.end method

.method public setIsDefaultDataSim(IZ)V
    .locals 0

    return-void
.end method

.method public setIsImsRegisted(IZ)V
    .locals 0

    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CellularTile;->-get2(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->setMobileDataEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/CellularTile;->-wrap0(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V

    return-void
.end method

.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZIIILjava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-boolean v2, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    iput-boolean v2, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget v2, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v2, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSignalIconId:I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-object v2, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->signalContentDescription:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput p4, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataTypeIconId:I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-object p10, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataContentDescription:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-boolean p5, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->activityIn:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-boolean p6, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->activityOut:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-object p11, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    if-eqz p4, :cond_1

    :goto_0
    iput-boolean p12, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->isDataTypeIconWide:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    move/from16 v0, p14

    iput-boolean v0, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->roaming:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/CellularTile;->-wrap0(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 p12, 0x0

    goto :goto_0
.end method

.method public setNetworkNameVoice(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setNoSims(Z)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->noSim:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-boolean v0, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->noSim:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSignalIconId:I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CellularTile;->-get0(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110363

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->signalContentDescription:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/CellularTile;->-wrap0(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V

    return-void
.end method

.method public setSpeechHd(IZ)V
    .locals 0

    return-void
.end method

.method public setSubs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setVolteNoService(IZ)V
    .locals 0

    return-void
.end method

.method public setVowifi(IZ)V
    .locals 0

    return-void
.end method

.method public setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->wifiEnabled:Z

    return-void
.end method
