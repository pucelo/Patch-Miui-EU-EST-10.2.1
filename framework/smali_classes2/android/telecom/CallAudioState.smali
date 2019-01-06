.class public final Landroid/telecom/CallAudioState;
.super Ljava/lang/Object;
.source "CallAudioState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/CallAudioState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/CallAudioState;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROUTE_ALL:I = 0xf

.field public static final ROUTE_BLUETOOTH:I = 0x2

.field public static final ROUTE_EARPIECE:I = 0x1

.field public static final ROUTE_SPEAKER:I = 0x8

.field public static final ROUTE_WIRED_HEADSET:I = 0x4

.field public static final ROUTE_WIRED_OR_EARPIECE:I = 0x5


# instance fields
.field private final isMuted:Z

.field private final route:I

.field private final supportedRouteMask:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telecom/CallAudioState$1;

    invoke-direct {v0}, Landroid/telecom/CallAudioState$1;-><init>()V

    sput-object v0, Landroid/telecom/CallAudioState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/telecom/AudioState;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/telecom/AudioState;->isMuted()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/CallAudioState;->isMuted:Z

    invoke-virtual {p1}, Landroid/telecom/AudioState;->getRoute()I

    move-result v0

    iput v0, p0, Landroid/telecom/CallAudioState;->route:I

    invoke-virtual {p1}, Landroid/telecom/AudioState;->getSupportedRouteMask()I

    move-result v0

    iput v0, p0, Landroid/telecom/CallAudioState;->supportedRouteMask:I

    return-void
.end method

.method public constructor <init>(Landroid/telecom/CallAudioState;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/CallAudioState;->isMuted:Z

    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    iput v0, p0, Landroid/telecom/CallAudioState;->route:I

    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v0

    iput v0, p0, Landroid/telecom/CallAudioState;->supportedRouteMask:I

    return-void
.end method

.method public constructor <init>(ZII)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/telecom/CallAudioState;->isMuted:Z

    iput p2, p0, Landroid/telecom/CallAudioState;->route:I

    iput p3, p0, Landroid/telecom/CallAudioState;->supportedRouteMask:I

    return-void
.end method

.method public static audioRouteToString(I)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_6

    and-int/lit8 v1, p0, -0x10

    if-eqz v1, :cond_a

    :cond_6
    const-string/jumbo v1, "UNKNOWN"

    return-object v1

    :cond_a
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    const-string/jumbo v1, "EARPIECE"

    invoke-static {v0, v1}, Landroid/telecom/CallAudioState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_1a
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_25

    const-string/jumbo v1, "BLUETOOTH"

    invoke-static {v0, v1}, Landroid/telecom/CallAudioState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_25
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_30

    const-string/jumbo v1, "WIRED_HEADSET"

    invoke-static {v0, v1}, Landroid/telecom/CallAudioState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_30
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3c

    const-string/jumbo v1, "SPEAKER"

    invoke-static {v0, v1}, Landroid/telecom/CallAudioState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_3c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_c

    const-string/jumbo v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    if-nez p1, :cond_4

    return v1

    :cond_4
    instance-of v2, p1, Landroid/telecom/CallAudioState;

    if-nez v2, :cond_9

    return v1

    :cond_9
    move-object v0, p1

    check-cast v0, Landroid/telecom/CallAudioState;

    invoke-virtual {p0}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result v2

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result v3

    if-ne v2, v3, :cond_2b

    invoke-virtual {p0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v2

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v3

    if-ne v2, v3, :cond_2b

    invoke-virtual {p0}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v2

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v3

    if-ne v2, v3, :cond_2b

    const/4 v1, 0x1

    :cond_2b
    return v1
.end method

.method public getRoute()I
    .registers 2

    iget v0, p0, Landroid/telecom/CallAudioState;->route:I

    return v0
.end method

.method public getSupportedRouteMask()I
    .registers 2

    iget v0, p0, Landroid/telecom/CallAudioState;->supportedRouteMask:I

    return v0
.end method

.method public isMuted()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telecom/CallAudioState;->isMuted:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "[AudioState isMuted: %b, route: %s, supportedRouteMask: %s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v3, p0, Landroid/telecom/CallAudioState;->isMuted:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Landroid/telecom/CallAudioState;->route:I

    invoke-static {v3}, Landroid/telecom/CallAudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget v3, p0, Landroid/telecom/CallAudioState;->supportedRouteMask:I

    invoke-static {v3}, Landroid/telecom/CallAudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-boolean v0, p0, Landroid/telecom/CallAudioState;->isMuted:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_5
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Landroid/telecom/CallAudioState;->route:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telecom/CallAudioState;->supportedRouteMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_14
    const/4 v0, 0x0

    goto :goto_5
.end method
