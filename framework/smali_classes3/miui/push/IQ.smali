.class public Lmiui/push/IQ;
.super Lmiui/push/Packet;
.source "IQ.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/push/IQ$Type;
    }
.end annotation


# instance fields
.field private type:Lmiui/push/IQ$Type;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lmiui/push/Packet;-><init>()V

    sget-object v0, Lmiui/push/IQ$Type;->GET:Lmiui/push/IQ$Type;

    iput-object v0, p0, Lmiui/push/IQ;->type:Lmiui/push/IQ$Type;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/push/Packet;-><init>(Landroid/os/Bundle;)V

    sget-object v0, Lmiui/push/IQ$Type;->GET:Lmiui/push/IQ$Type;

    iput-object v0, p0, Lmiui/push/IQ;->type:Lmiui/push/IQ$Type;

    const-string/jumbo v0, "ext_iq_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "ext_iq_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/push/IQ$Type;->fromString(Ljava/lang/String;)Lmiui/push/IQ$Type;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/IQ;->type:Lmiui/push/IQ$Type;

    :cond_1d
    return-void
.end method

.method public static createErrorResponse(Lmiui/push/IQ;Lmiui/push/XMPPError;)Lmiui/push/IQ;
    .registers 6

    invoke-virtual {p0}, Lmiui/push/IQ;->getType()Lmiui/push/IQ$Type;

    move-result-object v1

    sget-object v2, Lmiui/push/IQ$Type;->GET:Lmiui/push/IQ$Type;

    if-eq v1, v2, :cond_2e

    invoke-virtual {p0}, Lmiui/push/IQ;->getType()Lmiui/push/IQ$Type;

    move-result-object v1

    sget-object v2, Lmiui/push/IQ$Type;->SET:Lmiui/push/IQ$Type;

    if-eq v1, v2, :cond_2e

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IQ must be of type \'set\' or \'get\'. Original IQ: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/IQ;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2e
    new-instance v0, Lmiui/push/IQ$2;

    invoke-direct {v0, p0}, Lmiui/push/IQ$2;-><init>(Lmiui/push/IQ;)V

    sget-object v1, Lmiui/push/IQ$Type;->ERROR:Lmiui/push/IQ$Type;

    invoke-virtual {v0, v1}, Lmiui/push/IQ;->setType(Lmiui/push/IQ$Type;)V

    invoke-virtual {p0}, Lmiui/push/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/push/IQ;->setPacketID(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/push/IQ;->getTo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/push/IQ;->setFrom(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/push/IQ;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/push/IQ;->setTo(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lmiui/push/IQ;->setError(Lmiui/push/XMPPError;)V

    return-object v0
.end method

.method public static createResultIQ(Lmiui/push/IQ;)Lmiui/push/IQ;
    .registers 5

    invoke-virtual {p0}, Lmiui/push/IQ;->getType()Lmiui/push/IQ$Type;

    move-result-object v1

    sget-object v2, Lmiui/push/IQ$Type;->GET:Lmiui/push/IQ$Type;

    if-eq v1, v2, :cond_2e

    invoke-virtual {p0}, Lmiui/push/IQ;->getType()Lmiui/push/IQ$Type;

    move-result-object v1

    sget-object v2, Lmiui/push/IQ$Type;->SET:Lmiui/push/IQ$Type;

    if-eq v1, v2, :cond_2e

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IQ must be of type \'set\' or \'get\'. Original IQ: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/IQ;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2e
    new-instance v0, Lmiui/push/IQ$1;

    invoke-direct {v0}, Lmiui/push/IQ$1;-><init>()V

    sget-object v1, Lmiui/push/IQ$Type;->RESULT:Lmiui/push/IQ$Type;

    invoke-virtual {v0, v1}, Lmiui/push/IQ;->setType(Lmiui/push/IQ$Type;)V

    invoke-virtual {p0}, Lmiui/push/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/push/IQ;->setPacketID(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/push/IQ;->getTo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/push/IQ;->setFrom(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/push/IQ;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/push/IQ;->setTo(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Lmiui/push/IQ$Type;
    .registers 2

    iget-object v0, p0, Lmiui/push/IQ;->type:Lmiui/push/IQ$Type;

    return-object v0
.end method

.method public setType(Lmiui/push/IQ$Type;)V
    .registers 3

    if-nez p1, :cond_7

    sget-object v0, Lmiui/push/IQ$Type;->GET:Lmiui/push/IQ$Type;

    iput-object v0, p0, Lmiui/push/IQ;->type:Lmiui/push/IQ$Type;

    :goto_6
    return-void

    :cond_7
    iput-object p1, p0, Lmiui/push/IQ;->type:Lmiui/push/IQ$Type;

    goto :goto_6
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    invoke-super {p0}, Lmiui/push/Packet;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lmiui/push/IQ;->type:Lmiui/push/IQ$Type;

    if-eqz v1, :cond_14

    const-string/jumbo v1, "ext_iq_type"

    iget-object v2, p0, Lmiui/push/IQ;->type:Lmiui/push/IQ$Type;

    invoke-virtual {v2}, Lmiui/push/IQ$Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<iq "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/push/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_26

    const-string/jumbo v3, "id=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lmiui/push/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\" "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_26
    invoke-virtual {p0}, Lmiui/push/IQ;->getTo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_45

    const-string/jumbo v3, "to=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lmiui/push/IQ;->getTo()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\" "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_45
    invoke-virtual {p0}, Lmiui/push/IQ;->getFrom()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_64

    const-string/jumbo v3, "from=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lmiui/push/IQ;->getFrom()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\" "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_64
    invoke-virtual {p0}, Lmiui/push/IQ;->getChannelId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_83

    const-string/jumbo v3, "chid=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lmiui/push/IQ;->getChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\" "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_83
    iget-object v3, p0, Lmiui/push/IQ;->type:Lmiui/push/IQ$Type;

    if-nez v3, :cond_b5

    const-string/jumbo v3, "type=\"get\">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8d
    invoke-virtual {p0}, Lmiui/push/IQ;->getChildElementXML()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_96

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_96
    invoke-virtual {p0}, Lmiui/push/IQ;->getExtensionsXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/push/IQ;->getError()Lmiui/push/XMPPError;

    move-result-object v1

    if-eqz v1, :cond_aa

    invoke-virtual {v1}, Lmiui/push/XMPPError;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_aa
    const-string/jumbo v3, "</iq>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_b5
    const-string/jumbo v3, "type=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lmiui/push/IQ;->getType()Lmiui/push/IQ$Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8d
.end method
