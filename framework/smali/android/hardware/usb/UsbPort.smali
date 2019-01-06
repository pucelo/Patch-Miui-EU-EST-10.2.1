.class public final Landroid/hardware/usb/UsbPort;
.super Ljava/lang/Object;
.source "UsbPort.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/UsbPort$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/usb/UsbPort;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATA_ROLE_DEVICE:I = 0x2

.field public static final DATA_ROLE_HOST:I = 0x1

.field public static final DATA_ROLE_NONE:I = 0x0

.field public static final MODE_AUDIO_ACCESSORY:I = 0x4

.field public static final MODE_DEBUG_ACCESSORY:I = 0x8

.field public static final MODE_DFP:I = 0x2

.field public static final MODE_DUAL:I = 0x3

.field public static final MODE_NONE:I = 0x0

.field public static final MODE_UFP:I = 0x1

.field private static final NUM_DATA_ROLES:I = 0x3

.field public static final POWER_ROLE_NONE:I = 0x0

.field private static final POWER_ROLE_OFFSET:I = 0x0

.field public static final POWER_ROLE_SINK:I = 0x2

.field public static final POWER_ROLE_SOURCE:I = 0x1


# instance fields
.field private final mId:Ljava/lang/String;

.field private final mSupportedModes:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/usb/UsbPort$1;

    invoke-direct {v0}, Landroid/hardware/usb/UsbPort$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/UsbPort;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    iput p2, p0, Landroid/hardware/usb/UsbPort;->mSupportedModes:I

    return-void
.end method

.method public static checkDataRole(I)V
    .registers 4

    const-string/jumbo v0, "powerRole"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    return-void
.end method

.method public static checkMode(I)V
    .registers 4

    const-string/jumbo v0, "portMode"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {p0, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    return-void
.end method

.method public static checkPowerRole(I)V
    .registers 4

    const-string/jumbo v0, "powerRole"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    return-void
.end method

.method public static checkRoles(II)V
    .registers 5

    const/4 v2, 0x2

    const/4 v1, 0x0

    const-string/jumbo v0, "powerRole"

    invoke-static {p0, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    const-string/jumbo v0, "dataRole"

    invoke-static {p1, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    return-void
.end method

.method public static combineRolesAsBit(II)I
    .registers 4

    invoke-static {p0, p1}, Landroid/hardware/usb/UsbPort;->checkRoles(II)V

    add-int/lit8 v1, p0, 0x0

    mul-int/lit8 v1, v1, 0x3

    add-int v0, v1, p1

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    return v1
.end method

.method public static dataRoleToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_14

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "no-data"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "host"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "device"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_8
        :pswitch_c
        :pswitch_10
    .end packed-switch
.end method

.method public static modeToString(I)Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_c

    const-string/jumbo v1, "none"

    return-object v1

    :cond_c
    and-int/lit8 v1, p0, 0x3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_39

    const-string/jumbo v1, "dual, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    :goto_17
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_22

    const-string/jumbo v1, "audio_acc, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2e

    const-string/jumbo v1, "debug_acc, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_51

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_39
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_45

    const-string/jumbo v1, "dfp, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_45
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    const-string/jumbo v1, "ufp, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static powerRoleToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_14

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "no-power"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "source"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "sink"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_8
        :pswitch_c
        :pswitch_10
    .end packed-switch
.end method

.method public static roleCombinationsToString(I)Ljava/lang/String;
    .registers 7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :goto_c
    if-eqz p0, :cond_3a

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    const/4 v5, 0x1

    shl-int/2addr v5, v2

    not-int v5, v5

    and-int/2addr p0, v5

    div-int/lit8 v5, v2, 0x3

    add-int/lit8 v3, v5, 0x0

    rem-int/lit8 v0, v2, 0x3

    if-eqz v1, :cond_33

    const/4 v1, 0x0

    :goto_1f
    invoke-static {v3}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_33
    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    :cond_3a
    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedModes()I
    .registers 2

    iget v0, p0, Landroid/hardware/usb/UsbPort;->mSupportedModes:I

    return v0
.end method

.method public isModeSupported(I)Z
    .registers 3

    iget v0, p0, Landroid/hardware/usb/UsbPort;->mSupportedModes:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UsbPort{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", supportedModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbPort;->mSupportedModes:I

    invoke-static {v1}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/usb/UsbPort;->mSupportedModes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
