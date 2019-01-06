.class public Landroid/os/statistics/InputEventSuperviser$SingleInputEvent;
.super Landroid/os/statistics/MicroscopicEvent;
.source "InputEventSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/InputEventSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleInputEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/InputEventSuperviser$SingleInputEvent$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MicroscopicEvent",
        "<",
        "Landroid/os/statistics/InputEventSuperviser$InputEventFields;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/statistics/InputEventSuperviser$SingleInputEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_INPUT_CHANNEL:Ljava/lang/String; = "inputChannel"

.field private static final FIELD_INPUT_EVENT_DESCRIPTION:Ljava/lang/String; = "inputEventDescription"

.field private static final FIELD_INPUT_EVENT_SEQUENCE_NUMBER:Ljava/lang/String; = "inputEventSequenceNumber"

.field private static final FIELD_INPUT_EVENT_STAGE:Ljava/lang/String; = "inputEventStage"

.field private static final FIELD_INPUT_EVENT_TIME:Ljava/lang/String; = "inputEventTime"

.field private static final FIELD_TARGET_RECEIVER:Ljava/lang/String; = "targetReceiver"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/statistics/InputEventSuperviser$SingleInputEvent$1;

    invoke-direct {v0}, Landroid/os/statistics/InputEventSuperviser$SingleInputEvent$1;-><init>()V

    sput-object v0, Landroid/os/statistics/InputEventSuperviser$SingleInputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    new-instance v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;

    invoke-direct {v0}, Landroid/os/statistics/InputEventSuperviser$InputEventFields;-><init>()V

    const/16 v1, 0x9

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MicroscopicEvent;-><init>(ILandroid/os/statistics/MicroscopicEvent$MicroEventFields;)V

    const/4 v0, 0x1

    iput v0, p0, Landroid/os/statistics/InputEventSuperviser$SingleInputEvent;->eventFlags:I

    return-void
.end method

.method private static compactChannel(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    const-string/jumbo v2, "uninitialized"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string/jumbo v2, "uninitialized"

    return-object v2

    :cond_d
    const-string/jumbo v2, " "

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1e

    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    aget-object v2, v1, v2
    :try_end_1d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_1d} :catch_1f

    return-object v2

    :cond_1e
    return-object p0

    :catch_1f
    move-exception v0

    const-string/jumbo v2, "null"

    return-object v2
.end method


# virtual methods
.method fillIn(Landroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V
    .registers 8

    invoke-virtual {p0}, Landroid/os/statistics/InputEventSuperviser$SingleInputEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Landroid/os/statistics/InputEventSuperviser$SingleInputEvent;->threadId:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->threadName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/InputEventSuperviser$SingleInputEvent;->beginUptimeMillis:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/InputEventSuperviser$SingleInputEvent;->endUptimeMillis:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v1

    iput v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->schedPolicy:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->schedPriority:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->schedGroup:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->runningTimeMs:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->runnableTimeMs:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->sleepingTimeMs:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->endRealTimeMs:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventStage:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventSequenceNumber:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventTime:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventType:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventAction:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventCode:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputEventReceiver;

    iput-object v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->targetReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputChannel;

    iput-object v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputChannel:Landroid/view/InputChannel;

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

    const/4 v0, 0x0

    return v0
.end method

.method public isRootEvent()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isUserPerceptible()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p0}, Landroid/os/statistics/InputEventSuperviser$SingleInputEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventStage:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventSequenceNumber:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventDescription:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputChannelName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->targetReceiverName:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventType:I

    iput v4, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventAction:I

    iput v4, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventCode:I

    iput-object v5, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->targetReceiver:Landroid/view/InputEventReceiver;

    iput-object v5, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputChannel:Landroid/view/InputChannel;

    return-void
.end method

.method resolveLazyInfo()V
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/os/statistics/InputEventSuperviser$SingleInputEvent;->isLazyInfoResolved()Z

    move-result v2

    if-eqz v2, :cond_9

    return-void

    :cond_9
    invoke-super {p0}, Landroid/os/statistics/MicroscopicEvent;->resolveLazyInfo()V

    invoke-virtual {p0}, Landroid/os/statistics/InputEventSuperviser$SingleInputEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventType:I

    if-nez v2, :cond_73

    const-string/jumbo v2, "KeyEvent { action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventAction:I

    invoke-static {v3}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventCode:I

    invoke-static {v3}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventDescription:Ljava/lang/String;

    iget-object v2, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->targetReceiver:Landroid/view/InputEventReceiver;

    if-eqz v2, :cond_8a

    iget-object v2, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->targetReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {v2}, Landroid/view/InputEventReceiver;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_55
    iput-object v2, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->targetReceiverName:Ljava/lang/String;

    iget-object v2, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputChannel:Landroid/view/InputChannel;

    if-eqz v2, :cond_8e

    iget-object v2, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputChannel:Landroid/view/InputChannel;

    invoke-virtual {v2}, Landroid/view/InputChannel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/statistics/InputEventSuperviser$SingleInputEvent;->compactChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_65
    iput-object v2, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputChannelName:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventType:I

    iput v5, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventAction:I

    iput v5, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventCode:I

    iput-object v4, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->targetReceiver:Landroid/view/InputEventReceiver;

    iput-object v4, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputChannel:Landroid/view/InputChannel;

    return-void

    :cond_73
    const-string/jumbo v2, "MotionEvent { action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventAction:I

    invoke-static {v3}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_41

    :cond_8a
    const-string/jumbo v2, ""

    goto :goto_55

    :cond_8e
    const-string/jumbo v2, ""

    goto :goto_65
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->writeToJson(Lorg/json/JSONObject;)V

    :try_start_3
    invoke-virtual {p0}, Landroid/os/statistics/InputEventSuperviser$SingleInputEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;

    const-string/jumbo v2, "inputEventStage"

    iget v3, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventStage:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "inputEventSequenceNumber"

    iget v3, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventSequenceNumber:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "inputEventTime"

    iget-wide v4, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventTime:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "inputEventDescription"

    iget-object v3, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventDescription:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "inputChannel"

    iget-object v3, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputChannelName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "targetReceiver"

    iget-object v3, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->targetReceiverName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_39} :catch_3a

    :goto_39
    return-void

    :catch_3a
    move-exception v1

    goto :goto_39
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    invoke-super {p0, p1, p2}, Landroid/os/statistics/MicroscopicEvent;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {p0}, Landroid/os/statistics/InputEventSuperviser$SingleInputEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;

    iget v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventStage:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventSequenceNumber:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v2, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventDescription:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputChannelName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->targetReceiverName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
