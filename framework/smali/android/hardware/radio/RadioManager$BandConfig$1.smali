.class final Landroid/hardware/radio/RadioManager$BandConfig$1;
.super Ljava/lang/Object;
.source "RadioManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager$BandConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/hardware/radio/RadioManager$BandConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/RadioManager$BandConfig;
    .registers 6

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->-wrap0(Landroid/os/Parcel;)I

    move-result v0

    packed-switch v0, :pswitch_data_2e

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported band: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_22
    new-instance v1, Landroid/hardware/radio/RadioManager$FmBandConfig;

    invoke-direct {v1, p1, v2}, Landroid/hardware/radio/RadioManager$FmBandConfig;-><init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$FmBandConfig;)V

    return-object v1

    :pswitch_28
    new-instance v1, Landroid/hardware/radio/RadioManager$AmBandConfig;

    invoke-direct {v1, p1, v2}, Landroid/hardware/radio/RadioManager$AmBandConfig;-><init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$AmBandConfig;)V

    return-object v1

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_28
        :pswitch_22
        :pswitch_22
        :pswitch_28
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/hardware/radio/RadioManager$BandConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/RadioManager$BandConfig;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/radio/RadioManager$BandConfig;
    .registers 3

    new-array v0, p1, [Landroid/hardware/radio/RadioManager$BandConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/hardware/radio/RadioManager$BandConfig$1;->newArray(I)[Landroid/hardware/radio/RadioManager$BandConfig;

    move-result-object v0

    return-object v0
.end method
