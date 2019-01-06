.class Landroid/sax/RootElement$Handler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "RootElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sax/RootElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Handler"
.end annotation


# instance fields
.field bodyBuilder:Ljava/lang/StringBuilder;

.field current:Landroid/sax/Element;

.field depth:I

.field locator:Lorg/xml/sax/Locator;

.field final synthetic this$0:Landroid/sax/RootElement;


# direct methods
.method constructor <init>(Landroid/sax/RootElement;)V
    .registers 4

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/sax/RootElement$Handler;->this$0:Landroid/sax/RootElement;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/sax/RootElement$Handler;->depth:I

    iput-object v1, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    iput-object v1, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_9
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    iget v2, p0, Landroid/sax/RootElement$Handler;->depth:I

    iget v3, v1, Landroid/sax/Element;->depth:I

    if-ne v2, v3, :cond_2c

    iget-object v2, p0, Landroid/sax/RootElement$Handler;->locator:Lorg/xml/sax/Locator;

    invoke-virtual {v1, v2}, Landroid/sax/Element;->checkRequiredChildren(Lorg/xml/sax/Locator;)V

    iget-object v2, v1, Landroid/sax/Element;->endElementListener:Landroid/sax/EndElementListener;

    if-eqz v2, :cond_17

    iget-object v2, v1, Landroid/sax/Element;->endElementListener:Landroid/sax/EndElementListener;

    invoke-interface {v2}, Landroid/sax/EndElementListener;->end()V

    :cond_17
    iget-object v2, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    if-eqz v2, :cond_28

    iget-object v2, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v4, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    iget-object v2, v1, Landroid/sax/Element;->endTextElementListener:Landroid/sax/EndTextElementListener;

    invoke-interface {v2, v0}, Landroid/sax/EndTextElementListener;->end(Ljava/lang/String;)V

    :cond_28
    iget-object v2, v1, Landroid/sax/Element;->parent:Landroid/sax/Element;

    iput-object v2, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    :cond_2c
    iget v2, p0, Landroid/sax/RootElement$Handler;->depth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/sax/RootElement$Handler;->depth:I

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 2

    iput-object p1, p0, Landroid/sax/RootElement$Handler;->locator:Lorg/xml/sax/Locator;

    return-void
.end method

.method start(Landroid/sax/Element;Lorg/xml/sax/Attributes;)V
    .registers 4

    iput-object p1, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    iget-object v0, p1, Landroid/sax/Element;->startElementListener:Landroid/sax/StartElementListener;

    if-eqz v0, :cond_b

    iget-object v0, p1, Landroid/sax/Element;->startElementListener:Landroid/sax/StartElementListener;

    invoke-interface {v0, p2}, Landroid/sax/StartElementListener;->start(Lorg/xml/sax/Attributes;)V

    :cond_b
    iget-object v0, p1, Landroid/sax/Element;->endTextElementListener:Landroid/sax/EndTextElementListener;

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    :cond_16
    invoke-virtual {p1}, Landroid/sax/Element;->resetRequiredChildren()V

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/sax/Element;->visited:Z

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget v3, p0, Landroid/sax/RootElement$Handler;->depth:I

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Landroid/sax/RootElement$Handler;->depth:I

    if-nez v2, :cond_c

    invoke-virtual {p0, p1, p2, p4}, Landroid/sax/RootElement$Handler;->startRoot(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void

    :cond_c
    iget-object v3, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    if-eqz v3, :cond_35

    new-instance v3, Landroid/sax/BadXmlException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Encountered mixed content within text element named "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/sax/RootElement$Handler;->locator:Lorg/xml/sax/Locator;

    invoke-direct {v3, v4, v5}, Landroid/sax/BadXmlException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v3

    :cond_35
    iget-object v3, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    iget v3, v3, Landroid/sax/Element;->depth:I

    add-int/lit8 v3, v3, 0x1

    if-ne v2, v3, :cond_4c

    iget-object v3, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    iget-object v1, v3, Landroid/sax/Element;->children:Landroid/sax/Children;

    if-eqz v1, :cond_4c

    invoke-virtual {v1, p1, p2}, Landroid/sax/Children;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    if-eqz v0, :cond_4c

    invoke-virtual {p0, v0, p4}, Landroid/sax/RootElement$Handler;->start(Landroid/sax/Element;Lorg/xml/sax/Attributes;)V

    :cond_4c
    return-void
.end method

.method startRoot(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Landroid/sax/RootElement$Handler;->this$0:Landroid/sax/RootElement;

    iget-object v1, v0, Landroid/sax/Element;->uri:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, v0, Landroid/sax/Element;->localName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3d

    :cond_12
    new-instance v1, Landroid/sax/BadXmlException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Root element name does not match. Expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Landroid/sax/Element;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/sax/RootElement$Handler;->locator:Lorg/xml/sax/Locator;

    invoke-direct {v1, v2, v3}, Landroid/sax/BadXmlException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v1

    :cond_3d
    invoke-virtual {p0, v0, p3}, Landroid/sax/RootElement$Handler;->start(Landroid/sax/Element;Lorg/xml/sax/Attributes;)V

    return-void
.end method
