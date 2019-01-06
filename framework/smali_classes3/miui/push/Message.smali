.class public Lmiui/push/Message;
.super Lmiui/push/Packet;
.source "Message.java"


# static fields
.field public static final MSG_TYPE_CHAT:Ljava/lang/String; = "chat"

.field public static final MSG_TYPE_ERROR:Ljava/lang/String; = "error"

.field public static final MSG_TYPE_GROUPCHAT:Ljava/lang/String; = "groupchat"

.field public static final MSG_TYPE_HEADLINE:Ljava/lang/String; = "hearline"

.field public static final MSG_TYPE_NORMAL:Ljava/lang/String; = "normal"

.field public static final MSG_TYPE_PPL:Ljava/lang/String; = "ppl"


# instance fields
.field private fseq:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private mAppId:Ljava/lang/String;

.field private mBody:Ljava/lang/String;

.field private mBodyEncoding:Ljava/lang/String;

.field private mEncrypted:Z

.field private mSubject:Ljava/lang/String;

.field private mTransient:Z

.field private mseq:Ljava/lang/String;

.field private seq:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private thread:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lmiui/push/Packet;-><init>()V

    iput-object v0, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    iput-boolean v1, p0, Lmiui/push/Message;->mTransient:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    iput-boolean v1, p0, Lmiui/push/Message;->mEncrypted:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lmiui/push/Packet;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    iput-boolean v1, p0, Lmiui/push/Message;->mTransient:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    iput-boolean v1, p0, Lmiui/push/Message;->mEncrypted:Z

    const-string/jumbo v0, "ext_msg_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    const-string/jumbo v0, "ext_msg_lang"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    const-string/jumbo v0, "ext_msg_thread"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    const-string/jumbo v0, "ext_msg_sub"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    const-string/jumbo v0, "ext_msg_body"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    const-string/jumbo v0, "ext_body_encode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->mBodyEncoding:Ljava/lang/String;

    const-string/jumbo v0, "ext_msg_appid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->mAppId:Ljava/lang/String;

    const-string/jumbo v0, "ext_msg_trans"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/push/Message;->mTransient:Z

    const-string/jumbo v0, "ext_msg_seq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    const-string/jumbo v0, "ext_msg_mseq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    const-string/jumbo v0, "ext_msg_fseq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    const-string/jumbo v0, "ext_msg_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lmiui/push/Packet;-><init>()V

    iput-object v0, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    iput-boolean v1, p0, Lmiui/push/Message;->mTransient:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    iput-boolean v1, p0, Lmiui/push/Message;->mEncrypted:Z

    invoke-virtual {p0, p1}, Lmiui/push/Message;->setTo(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lmiui/push/Packet;-><init>()V

    iput-object v0, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    iput-boolean v1, p0, Lmiui/push/Message;->mTransient:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    iput-boolean v1, p0, Lmiui/push/Message;->mEncrypted:Z

    invoke-virtual {p0, p1}, Lmiui/push/Message;->setTo(Ljava/lang/String;)V

    iput-object p2, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_5

    return v1

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lmiui/push/Message;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_12

    :cond_11
    return v2

    :cond_12
    move-object v0, p1

    check-cast v0, Lmiui/push/Message;

    invoke-super {p0, v0}, Lmiui/push/Packet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    return v2

    :cond_1c
    iget-object v3, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    if-eqz v3, :cond_2d

    iget-object v3, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_31

    :cond_2c
    return v2

    :cond_2d
    iget-object v3, v0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    if-nez v3, :cond_2c

    :cond_31
    iget-object v3, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    if-eqz v3, :cond_42

    iget-object v3, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Message;->language:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_46

    :cond_41
    return v2

    :cond_42
    iget-object v3, v0, Lmiui/push/Message;->language:Ljava/lang/String;

    if-nez v3, :cond_41

    :cond_46
    iget-object v3, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    if-eqz v3, :cond_57

    iget-object v3, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5b

    :cond_56
    return v2

    :cond_57
    iget-object v3, v0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    if-nez v3, :cond_56

    :cond_5b
    iget-object v3, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    if-eqz v3, :cond_6c

    iget-object v3, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Message;->thread:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_70

    :cond_6b
    return v2

    :cond_6c
    iget-object v3, v0, Lmiui/push/Message;->thread:Ljava/lang/String;

    if-nez v3, :cond_6b

    :cond_70
    iget-object v3, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Message;->type:Ljava/lang/String;

    if-ne v3, v4, :cond_77

    :goto_76
    return v1

    :cond_77
    move v1, v2

    goto :goto_76
.end method

.method public getAppId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/push/Message;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getBodyEncoding()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/push/Message;->mBodyEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEncrypted()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/push/Message;->mEncrypted:Z

    return v0
.end method

.method public getFSeq()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getMSeq()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    return-object v0
.end method

.method public getSeq()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getThread()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    if-eqz v1, :cond_44

    iget-object v1, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    if-eqz v1, :cond_46

    iget-object v1, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_17
    add-int v0, v3, v1

    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    if-eqz v1, :cond_48

    iget-object v1, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_25
    add-int v0, v3, v1

    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_33
    add-int v0, v3, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    if-eqz v3, :cond_41

    iget-object v2, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_41
    add-int v0, v1, v2

    return v0

    :cond_44
    const/4 v0, 0x0

    goto :goto_b

    :cond_46
    move v1, v2

    goto :goto_17

    :cond_48
    move v1, v2

    goto :goto_25

    :cond_4a
    move v1, v2

    goto :goto_33
.end method

.method public setAppId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/push/Message;->mAppId:Ljava/lang/String;

    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    return-void
.end method

.method public setBody(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    iput-object p2, p0, Lmiui/push/Message;->mBodyEncoding:Ljava/lang/String;

    return-void
.end method

.method public setEncrypted(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/push/Message;->mEncrypted:Z

    return-void
.end method

.method public setFSeq(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    return-void
.end method

.method public setIsTransient(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/push/Message;->mTransient:Z

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    return-void
.end method

.method public setMSeq(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    return-void
.end method

.method public setSeq(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    return-void
.end method

.method public setThread(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    invoke-super {p0}, Lmiui/push/Packet;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string/jumbo v1, "ext_msg_type"

    iget-object v2, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    iget-object v1, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    if-eqz v1, :cond_20

    const-string/jumbo v1, "ext_msg_lang"

    iget-object v2, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    iget-object v1, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    if-eqz v1, :cond_2c

    const-string/jumbo v1, "ext_msg_sub"

    iget-object v2, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    iget-object v1, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    if-eqz v1, :cond_38

    const-string/jumbo v1, "ext_msg_body"

    iget-object v2, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    iget-object v1, p0, Lmiui/push/Message;->mBodyEncoding:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_48

    const-string/jumbo v1, "ext_body_encode"

    iget-object v2, p0, Lmiui/push/Message;->mBodyEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_48
    iget-object v1, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    if-eqz v1, :cond_54

    const-string/jumbo v1, "ext_msg_thread"

    iget-object v2, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_54
    iget-object v1, p0, Lmiui/push/Message;->mAppId:Ljava/lang/String;

    if-eqz v1, :cond_60

    const-string/jumbo v1, "ext_msg_appid"

    iget-object v2, p0, Lmiui/push/Message;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    iget-boolean v1, p0, Lmiui/push/Message;->mTransient:Z

    if-eqz v1, :cond_6b

    const-string/jumbo v1, "ext_msg_trans"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_6b
    iget-object v1, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7b

    const-string/jumbo v1, "ext_msg_seq"

    iget-object v2, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7b
    iget-object v1, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8b

    const-string/jumbo v1, "ext_msg_mseq"

    iget-object v2, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8b
    iget-object v1, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9b

    const-string/jumbo v1, "ext_msg_fseq"

    iget-object v2, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9b
    iget-object v1, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ab

    const-string/jumbo v1, "ext_msg_status"

    iget-object v2, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ab
    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<message"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/push/Message;->getXmlns()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    const-string/jumbo v2, " xmlns=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getXmlns()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_26
    iget-object v2, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    if-eqz v2, :cond_3f

    const-string/jumbo v2, " xml:lang=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3f
    invoke-virtual {p0}, Lmiui/push/Message;->getPacketID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5a

    const-string/jumbo v2, " id=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5a
    invoke-virtual {p0}, Lmiui/push/Message;->getTo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_79

    const-string/jumbo v2, " to=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getTo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_79
    invoke-virtual {p0}, Lmiui/push/Message;->getSeq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_98

    const-string/jumbo v2, " seq=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getSeq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_98
    invoke-virtual {p0}, Lmiui/push/Message;->getMSeq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b7

    const-string/jumbo v2, " mseq=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getMSeq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b7
    invoke-virtual {p0}, Lmiui/push/Message;->getFSeq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d6

    const-string/jumbo v2, " fseq=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getFSeq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d6
    invoke-virtual {p0}, Lmiui/push/Message;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f5

    const-string/jumbo v2, " status=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f5
    invoke-virtual {p0}, Lmiui/push/Message;->getFrom()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_114

    const-string/jumbo v2, " from=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_114
    invoke-virtual {p0}, Lmiui/push/Message;->getChannelId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_133

    const-string/jumbo v2, " chid=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_133
    iget-boolean v2, p0, Lmiui/push/Message;->mTransient:Z

    if-eqz v2, :cond_13d

    const-string/jumbo v2, " transient=\"true\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13d
    iget-object v2, p0, Lmiui/push/Message;->mAppId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15a

    const-string/jumbo v2, " appid=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15a
    iget-object v2, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_175

    const-string/jumbo v2, " type=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_175
    iget-boolean v2, p0, Lmiui/push/Message;->mEncrypted:Z

    if-eqz v2, :cond_17f

    const-string/jumbo v2, " s=\"1\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17f
    const-string/jumbo v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_19f

    const-string/jumbo v2, "<subject>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</subject>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19f
    iget-object v2, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    if-eqz v2, :cond_1db

    const-string/jumbo v2, "<body"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/push/Message;->mBodyEncoding:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c4

    const-string/jumbo v2, " encode=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/push/Message;->mBodyEncoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c4
    const-string/jumbo v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</body>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1db
    iget-object v2, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    if-eqz v2, :cond_1f2

    const-string/jumbo v2, "<thread>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</thread>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f2
    const-string/jumbo v2, "error"

    iget-object v3, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20a

    invoke-virtual {p0}, Lmiui/push/Message;->getError()Lmiui/push/XMPPError;

    move-result-object v1

    if-eqz v1, :cond_20a

    invoke-virtual {v1}, Lmiui/push/XMPPError;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20a
    invoke-virtual {p0}, Lmiui/push/Message;->getExtensionsXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</message>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
