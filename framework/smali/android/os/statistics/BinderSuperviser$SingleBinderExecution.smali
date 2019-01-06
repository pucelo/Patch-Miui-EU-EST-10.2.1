.class public Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;
.super Landroid/os/statistics/MicroscopicEvent;
.source "BinderSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/BinderSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleBinderExecution"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/BinderSuperviser$SingleBinderExecution$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MicroscopicEvent",
        "<",
        "Landroid/os/statistics/MicroscopicEvent$MicroEventFields;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_CALLING_PID:Ljava/lang/String; = "callingPid"

.field private static final FIELD_CALLING_UID:Ljava/lang/String; = "callingUid"

.field private static final FIELD_CODE:Ljava/lang/String; = "code"

.field private static final FIELD_INTERFACE_DESCRIPTOR:Ljava/lang/String; = "interface"


# instance fields
.field public callingPid:I

.field public callingUid:I

.field public code:I

.field public interfaceDescriptor:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution$1;

    invoke-direct {v0}, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution$1;-><init>()V

    sput-object v0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    new-instance v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;

    invoke-direct {v0}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;-><init>()V

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MicroscopicEvent;-><init>(ILandroid/os/statistics/MicroscopicEvent$MicroEventFields;)V

    const/4 v0, 0x2

    iput v0, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->eventFlags:I

    return-void
.end method


# virtual methods
.method fillIn(Landroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V
    .registers 8

    invoke-virtual {p0}, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v1

    check-cast v1, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->threadId:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->threadName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->beginUptimeMillis:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->endUptimeMillis:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v2

    iput v2, v1, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPolicy:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPriority:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedGroup:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->runningTimeMs:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->runnableTimeMs:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->sleepingTimeMs:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->endRealTimeMs:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->interfaceDescriptor:Ljava/lang/String;

    if-eqz v0, :cond_62

    invoke-static {v0}, Landroid/os/statistics/BinderSuperviser;->-wrap0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->interfaceDescriptor:Ljava/lang/String;

    :cond_62
    iget-object v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->interfaceDescriptor:Ljava/lang/String;

    if-nez v2, :cond_6b

    const-string/jumbo v2, ""

    iput-object v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->interfaceDescriptor:Ljava/lang/String;

    :cond_6b
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->code:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->callingPid:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->callingUid:I

    return-void
.end method

.method public hasMultiplePeerBlockingEvents()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasPeerBlockingEvent()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isBlockedBy(Landroid/os/statistics/MicroscopicEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isBlockedBySameProcess()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isBlockingMultiplePeer()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isBlockingSameProcess()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isPeerBlockingEvent()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isRootEvent()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->interfaceDescriptor:Ljava/lang/String;

    iget-object v0, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->interfaceDescriptor:Ljava/lang/String;

    if-nez v0, :cond_12

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->interfaceDescriptor:Ljava/lang/String;

    :cond_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->code:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->callingPid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->callingUid:I

    return-void
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->writeToJson(Lorg/json/JSONObject;)V

    :try_start_3
    const-string/jumbo v1, "interface"

    iget-object v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->interfaceDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "code"

    iget v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->code:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "callingPid"

    iget v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->callingPid:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "callingUid"

    iget v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->callingUid:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_23} :catch_24

    :goto_23
    return-void

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_23
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/os/statistics/MicroscopicEvent;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->interfaceDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->callingPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->callingUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
