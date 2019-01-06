.class public final Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;
.super Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTreeNode;
.source "UsbDescriptorsEndpointNode.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbDescriptorsEndpointNode"


# instance fields
.field private final mEndpointDescriptor:Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTreeNode;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;->mEndpointDescriptor:Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    return-void
.end method


# virtual methods
.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;->mEndpointDescriptor:Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    return-void
.end method
