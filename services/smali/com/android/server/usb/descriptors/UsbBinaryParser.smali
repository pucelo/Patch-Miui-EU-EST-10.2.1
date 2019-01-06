.class public final Lcom/android/server/usb/descriptors/UsbBinaryParser;
.super Ljava/lang/Object;
.source "UsbBinaryParser.java"


# static fields
.field private static final LOGGING:Z = false

.field private static final TAG:Ljava/lang/String; = "UsbBinaryParser"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dumpDescriptor(Lcom/android/server/usb/descriptors/ByteStream;IBLjava/lang/StringBuilder;)V
    .registers 8

    const-string/jumbo v1, "<p>"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<b> l: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " t:0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getDescriptorName(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</b><br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    :goto_36
    if-ge v0, p2, :cond_56

    const-string/jumbo v1, "0x"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_56
    const-string/jumbo v1, "</p>"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public parseDescriptors(Landroid/hardware/usb/UsbDeviceConnection;[BLjava/lang/StringBuilder;)V
    .registers 8

    const-string/jumbo v3, "<tt>"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/server/usb/descriptors/ByteStream;

    invoke-direct {v1, p2}, Lcom/android/server/usb/descriptors/ByteStream;-><init>([B)V

    :goto_b
    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result v3

    if-lez v3, :cond_1f

    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v3

    and-int/lit16 v0, v3, 0xff

    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v2

    invoke-direct {p0, v1, v0, v2, p3}, Lcom/android/server/usb/descriptors/UsbBinaryParser;->dumpDescriptor(Lcom/android/server/usb/descriptors/ByteStream;IBLjava/lang/StringBuilder;)V

    goto :goto_b

    :cond_1f
    const-string/jumbo v3, "</tt>"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
