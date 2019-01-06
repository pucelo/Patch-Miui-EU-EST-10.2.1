.class public abstract Lcom/android/server/usb/descriptors/report/ReportCanvas;
.super Ljava/lang/Object;
.source "ReportCanvas.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReportCanvas"


# instance fields
.field private final mConnection:Landroid/hardware/usb/UsbDeviceConnection;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDeviceConnection;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/descriptors/report/ReportCanvas;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    return-void
.end method

.method public static getBCDString(I)Ljava/lang/String;
    .registers 6

    shr-int/lit8 v3, p0, 0x8

    and-int/lit8 v0, v3, 0xf

    shr-int/lit8 v3, p0, 0x4

    and-int/lit8 v1, v3, 0xf

    and-int/lit8 v2, p0, 0xf

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getHexString(B)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit16 v1, p0, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHexString(I)Ljava/lang/String;
    .registers 4

    const v1, 0xffff

    and-int v0, p0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public abstract closeHeader(I)V
.end method

.method public abstract closeList()V
.end method

.method public abstract closeListItem()V
.end method

.method public abstract closeParagraph()V
.end method

.method public dumpHexArray([BLjava/lang/StringBuilder;)V
    .registers 6

    if-eqz p1, :cond_20

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openParagraph(Z)V

    const/4 v0, 0x0

    :goto_7
    array-length v1, p1

    if-ge v0, v1, :cond_1d

    aget-byte v1, p1, v0

    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeParagraph()V

    :cond_20
    return-void
.end method

.method public getConnection()Landroid/hardware/usb/UsbDeviceConnection;
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/descriptors/report/ReportCanvas;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    return-object v0
.end method

.method public abstract openHeader(I)V
.end method

.method public abstract openList()V
.end method

.method public abstract openListItem()V
.end method

.method public abstract openParagraph(Z)V
.end method

.method public abstract write(Ljava/lang/String;)V
.end method

.method public writeHeader(ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openHeader(I)V

    invoke-virtual {p0, p2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeHeader(I)V

    return-void
.end method

.method public writeListItem(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openListItem()V

    invoke-virtual {p0, p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeListItem()V

    return-void
.end method

.method public abstract writeParagraph(Ljava/lang/String;Z)V
.end method
