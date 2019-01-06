.class Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;
.super Ljava/lang/Object;
.source "LocationPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FakeGpsStrategy"
.end annotation


# instance fields
.field private mFakeGpsOn:Z

.field private mHasLocation:Z

.field private mListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocation:Landroid/location/Location;

.field private mPhoneStationary:Z

.field final synthetic this$0:Lcom/android/server/LocationPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/LocationPolicyManagerService;)V
    .registers 3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mFakeGpsOn:Z

    iput-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mPhoneStationary:Z

    iput-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mHasLocation:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mLocation:Landroid/location/Location;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mListener:Ljava/util/List;

    return-void
.end method

.method private notifyListeners(Z)V
    .registers 6

    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mListener:Ljava/util/List;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;

    invoke-interface {v0, p1}, Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;->onStationaryChanged(Z)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_19

    goto :goto_9

    :catchall_19
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1c
    monitor-exit v3

    return-void
.end method

.method private setLocation(Landroid/location/Location;)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mFakeGpsOn:Z

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mHasLocation:Z

    iput-object p1, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mLocation:Landroid/location/Location;

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mFakeGpsOn:Z

    if-nez v0, :cond_b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mHasLocation:Z

    goto :goto_b
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "miui gps provider info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n            on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mFakeGpsOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n    stationary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mPhoneStationary:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n  mHasLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mHasLocation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_41

    const-string/jumbo v1, "\n  mLocation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mLocation:Landroid/location/Location;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_41
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    return-void
.end method

.method public getLocation()Landroid/location/Location;
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mHasLocation:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mLocation:Landroid/location/Location;

    return-object v0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method getOnState()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mFakeGpsOn:Z

    return v0
.end method

.method getPhoneStationary()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mPhoneStationary:Z

    return v0
.end method

.method registerFakeGpsStatus(Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;)V
    .registers 5

    if-eqz p1, :cond_14

    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mListener:Ljava/util/List;

    monitor-enter v1

    :try_start_5
    const-string/jumbo v0, "LocationPolicy"

    const-string/jumbo v2, "register Status in strategy"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_15

    monitor-exit v1

    :cond_14
    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setOnState(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mFakeGpsOn:Z

    if-eq v0, p1, :cond_6

    iput-boolean p1, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mFakeGpsOn:Z

    :cond_6
    return-void
.end method

.method setPhoneStationay(ZLandroid/location/Location;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mPhoneStationary:Z

    if-eq v0, p1, :cond_e

    iput-boolean p1, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mPhoneStationary:Z

    invoke-direct {p0, p1}, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->notifyListeners(Z)V

    if-eqz p1, :cond_f

    invoke-direct {p0, p2}, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->setLocation(Landroid/location/Location;)V

    :cond_e
    :goto_e
    return-void

    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mHasLocation:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mLocation:Landroid/location/Location;

    goto :goto_e
.end method
