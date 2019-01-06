.class public final Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;
.super Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTreeNode;
.source "UsbDescriptorsInterfaceNode.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbDescriptorsInterfaceNode"


# instance fields
.field private final mACInterfaceNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/usb/descriptors/tree/UsbDescriptorsACInterfaceNode;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndpointNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;",
            ">;"
        }
    .end annotation
.end field

.field private final mInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTreeNode;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->mEndpointNodes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->mACInterfaceNodes:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->mInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    return-void
.end method


# virtual methods
.method public addACInterfaceNode(Lcom/android/server/usb/descriptors/tree/UsbDescriptorsACInterfaceNode;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->mACInterfaceNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addEndpointNode(Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->mEndpointNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .registers 7

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->mInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    invoke-virtual {v3, p1}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    iget-object v3, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->mACInterfaceNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_30

    const-string/jumbo v3, "Audio Class Interfaces"

    invoke-virtual {p1, v3, v4}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeParagraph(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    iget-object v3, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->mACInterfaceNodes:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsACInterfaceNode;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsACInterfaceNode;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    goto :goto_1d

    :cond_2d
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    :cond_30
    iget-object v3, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->mEndpointNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5a

    const-string/jumbo v3, "Endpoints"

    invoke-virtual {p1, v3, v4}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeParagraph(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    iget-object v3, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->mEndpointNodes:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;

    invoke-virtual {v1, p1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    goto :goto_47

    :cond_57
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    :cond_5a
    return-void
.end method
