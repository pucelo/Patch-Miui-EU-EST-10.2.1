.class public final Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;
.super Lcom/android/server/usb/descriptors/report/ReportCanvas;
.source "HTMLReportCanvas.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HTMLReportCanvas"


# instance fields
.field private final mStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDeviceConnection;Ljava/lang/StringBuilder;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;-><init>(Landroid/hardware/usb/UsbDeviceConnection;)V

    iput-object p2, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public closeHeader(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "</h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public closeList()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "</ul>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public closeListItem()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "</li>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public closeParagraph()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "</p>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public openHeader(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public openList()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<ul>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public openListItem()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<li>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public openParagraph(Z)V
    .registers 4

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<p style=\"color:red\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<p>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a
.end method

.method public write(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public writeParagraph(Ljava/lang/String;Z)V
    .registers 4

    invoke-virtual {p0, p2}, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->openParagraph(Z)V

    iget-object v0, p0, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/report/HTMLReportCanvas;->closeParagraph()V

    return-void
.end method
