.class public final Landroid/nfc/TransceiveResult;
.super Ljava/lang/Object;
.source "TransceiveResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/TransceiveResult$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/TransceiveResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_EXCEEDED_LENGTH:I = 0x3

.field public static final RESULT_FAILURE:I = 0x1

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final RESULT_TAGLOST:I = 0x2


# instance fields
.field final mResponseData:[B

.field final mResult:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/nfc/TransceiveResult$1;

    invoke-direct {v0}, Landroid/nfc/TransceiveResult$1;-><init>()V

    sput-object v0, Landroid/nfc/TransceiveResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/nfc/TransceiveResult;->mResult:I

    iput-object p2, p0, Landroid/nfc/TransceiveResult;->mResponseData:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getResponseOrThrow()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/nfc/TransceiveResult;->mResult:I

    packed-switch v0, :pswitch_data_24

    :pswitch_5
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Transceive failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_e
    iget-object v0, p0, Landroid/nfc/TransceiveResult;->mResponseData:[B

    return-object v0

    :pswitch_11
    new-instance v0, Landroid/nfc/TagLostException;

    const-string/jumbo v1, "Tag was lost."

    invoke-direct {v0, v1}, Landroid/nfc/TagLostException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1a
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Transceive length exceeds supported maximum"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_e
        :pswitch_5
        :pswitch_11
        :pswitch_1a
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/nfc/TransceiveResult;->mResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/nfc/TransceiveResult;->mResult:I

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/nfc/TransceiveResult;->mResponseData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/TransceiveResult;->mResponseData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_14
    return-void
.end method
