.class public final Landroid/app/usage/UsageEvents;
.super Ljava/lang/Object;
.source "UsageEvents.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/UsageEvents$1;,
        Landroid/app/usage/UsageEvents$Event;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/usage/UsageEvents;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANT_APP_CLASS_NAME:Ljava/lang/String; = "android.instant_class"

.field public static final INSTANT_APP_PACKAGE_NAME:Ljava/lang/String; = "android.instant_app"


# instance fields
.field private final mEventCount:I

.field private mEventsToWrite:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I

.field private mParcel:Landroid/os/Parcel;

.field private mStringPool:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/usage/UsageEvents$1;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$1;-><init>()V

    sput-object v0, Landroid/app/usage/UsageEvents;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    iput-object v1, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    iput v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    iput v0, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    iput-object v2, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    iput v3, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    iget v2, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    if-lez v2, :cond_4d

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    iput-object v2, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    iget-object v2, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v2, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    invoke-virtual {v2, p1, v3, v0}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    iget-object v2, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    iget-object v3, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataSize(I)V

    iget-object v2, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    :cond_4d
    return-void
.end method

.method public constructor <init>(Ljava/util/List;[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    iput-object p2, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    iput-object p1, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    return-void
.end method

.method private findStringIndex(Ljava/lang/String;)I
    .registers 6

    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_29

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "String \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' is not in the string pool"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_29
    return v0
.end method

.method private readEventFromParcel(Landroid/os/Parcel;Landroid/app/usage/UsageEvents$Event;)V
    .registers 8

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ltz v1, :cond_35

    iget-object v2, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    aget-object v2, v2, v1

    iput-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    :goto_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_38

    iget-object v2, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    aget-object v2, v2, v0

    iput-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    :goto_19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iput-object v4, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v4, p2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    iput-object v4, p2, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    iput-object v4, p2, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    iput-object v4, p2, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    iget v2, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    packed-switch v2, :pswitch_data_60

    :goto_34
    :pswitch_34
    return-void

    :cond_35
    iput-object v4, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    goto :goto_d

    :cond_38
    iput-object v4, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    goto :goto_19

    :pswitch_3b
    sget-object v2, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    iput-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    goto :goto_34

    :pswitch_46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    goto :goto_34

    :pswitch_4d
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    goto :goto_34

    :pswitch_data_60
    .packed-switch 0x5
        :pswitch_3b
        :pswitch_34
        :pswitch_34
        :pswitch_46
        :pswitch_4d
    .end packed-switch
.end method

.method private writeEventToParcel(Landroid/app/usage/UsageEvents$Event;Landroid/os/Parcel;I)V
    .registers 8

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v2, :cond_2a

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/app/usage/UsageEvents;->findStringIndex(Ljava/lang/String;)I

    move-result v1

    :goto_a
    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v2, :cond_2c

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/app/usage/UsageEvents;->findStringIndex(Ljava/lang/String;)I

    move-result v0

    :goto_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v2, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {p2, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    packed-switch v2, :pswitch_data_4a

    :goto_29
    :pswitch_29
    return-void

    :cond_2a
    const/4 v1, -0x1

    goto :goto_a

    :cond_2c
    const/4 v0, -0x1

    goto :goto_14

    :pswitch_2e
    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, p2, p3}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_29

    :pswitch_34
    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_29

    :pswitch_3a
    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_29

    :pswitch_data_4a
    .packed-switch 0x5
        :pswitch_2e
        :pswitch_29
        :pswitch_29
        :pswitch_34
        :pswitch_3a
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z
    .registers 4

    iget v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    iget v1, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    if-lt v0, v1, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    iget-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-direct {p0, v0, p1}, Landroid/app/usage/UsageEvents;->readEventFromParcel(Landroid/os/Parcel;Landroid/app/usage/UsageEvents$Event;)V

    iget v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    iget v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    iget v1, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    if-lt v0, v1, :cond_21

    iget-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method public hasNextEvent()Z
    .registers 3

    iget v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    iget v1, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public resetToStart()V
    .registers 3

    const/4 v1, 0x0

    iput v1, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    iget-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    :cond_c
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 10

    const/4 v6, 0x0

    iget v4, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    if-lez v4, :cond_45

    iget-object v4, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v4, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    if-eqz v4, :cond_4b

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_1d
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    const/4 v1, 0x0

    :goto_21
    iget v4, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    if-ge v1, v4, :cond_33

    iget-object v4, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {p0, v0, v3, p2}, Landroid/app/usage/UsageEvents;->writeEventToParcel(Landroid/app/usage/UsageEvents$Event;Landroid/os/Parcel;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_33
    invoke-virtual {v3}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V
    :try_end_42
    .catchall {:try_start_1d .. :try_end_42} :catchall_46

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :cond_45
    :goto_45
    return-void

    :catchall_46
    move-exception v4

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v4

    :cond_4b
    iget-object v4, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    if-eqz v4, :cond_6d

    iget-object v4, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    iget-object v5, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->dataSize()I

    move-result v5

    invoke-virtual {p1, v4, v6, v5}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    goto :goto_45

    :cond_6d
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Either mParcel or mEventsToWrite must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
