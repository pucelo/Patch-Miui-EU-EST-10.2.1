.class public Landroid/telecom/Voicemail$Builder;
.super Ljava/lang/Object;
.source "Voicemail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Voicemail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBuilderDuration:Ljava/lang/Long;

.field private mBuilderHasContent:Z

.field private mBuilderId:Ljava/lang/Long;

.field private mBuilderIsRead:Ljava/lang/Boolean;

.field private mBuilderNumber:Ljava/lang/String;

.field private mBuilderPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private mBuilderSourceData:Ljava/lang/String;

.field private mBuilderSourcePackage:Ljava/lang/String;

.field private mBuilderTimestamp:Ljava/lang/Long;

.field private mBuilderTranscription:Ljava/lang/String;

.field private mBuilderUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/telecom/Voicemail$Builder;)V
    .registers 2

    invoke-direct {p0}, Landroid/telecom/Voicemail$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/telecom/Voicemail;
    .registers 14

    const-wide/16 v2, 0x0

    const/4 v12, 0x0

    iget-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderId:Ljava/lang/Long;

    if-nez v0, :cond_4f

    const-wide/16 v0, -0x1

    :goto_9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderId:Ljava/lang/Long;

    iget-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderTimestamp:Ljava/lang/Long;

    if-nez v0, :cond_56

    move-wide v0, v2

    :goto_14
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderTimestamp:Ljava/lang/Long;

    iget-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderDuration:Ljava/lang/Long;

    if-nez v0, :cond_5d

    :goto_1e
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderDuration:Ljava/lang/Long;

    iget-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderIsRead:Ljava/lang/Boolean;

    if-nez v0, :cond_64

    const/4 v0, 0x0

    :goto_29
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderIsRead:Ljava/lang/Boolean;

    new-instance v0, Landroid/telecom/Voicemail;

    iget-object v1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderTimestamp:Ljava/lang/Long;

    iget-object v2, p0, Landroid/telecom/Voicemail$Builder;->mBuilderNumber:Ljava/lang/String;

    iget-object v3, p0, Landroid/telecom/Voicemail$Builder;->mBuilderPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    iget-object v4, p0, Landroid/telecom/Voicemail$Builder;->mBuilderId:Ljava/lang/Long;

    iget-object v5, p0, Landroid/telecom/Voicemail$Builder;->mBuilderDuration:Ljava/lang/Long;

    iget-object v6, p0, Landroid/telecom/Voicemail$Builder;->mBuilderSourcePackage:Ljava/lang/String;

    iget-object v7, p0, Landroid/telecom/Voicemail$Builder;->mBuilderSourceData:Ljava/lang/String;

    iget-object v8, p0, Landroid/telecom/Voicemail$Builder;->mBuilderUri:Landroid/net/Uri;

    iget-object v9, p0, Landroid/telecom/Voicemail$Builder;->mBuilderIsRead:Ljava/lang/Boolean;

    iget-boolean v10, p0, Landroid/telecom/Voicemail$Builder;->mBuilderHasContent:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-object v11, p0, Landroid/telecom/Voicemail$Builder;->mBuilderTranscription:Ljava/lang/String;

    invoke-direct/range {v0 .. v12}, Landroid/telecom/Voicemail;-><init>(Ljava/lang/Long;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Landroid/telecom/Voicemail;)V

    return-object v0

    :cond_4f
    iget-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_9

    :cond_56
    iget-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_14

    :cond_5d
    iget-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderDuration:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_1e

    :cond_64
    iget-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderIsRead:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_29
.end method

.method public setDuration(J)Landroid/telecom/Voicemail$Builder;
    .registers 4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderDuration:Ljava/lang/Long;

    return-object p0
.end method

.method public setHasContent(Z)Landroid/telecom/Voicemail$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderHasContent:Z

    return-object p0
.end method

.method public setId(J)Landroid/telecom/Voicemail$Builder;
    .registers 4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderId:Ljava/lang/Long;

    return-object p0
.end method

.method public setIsRead(Z)Landroid/telecom/Voicemail$Builder;
    .registers 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderIsRead:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderNumber:Ljava/lang/String;

    return-object p0
.end method

.method public setPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/Voicemail$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    return-object p0
.end method

.method public setSourceData(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderSourceData:Ljava/lang/String;

    return-object p0
.end method

.method public setSourcePackage(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderSourcePackage:Ljava/lang/String;

    return-object p0
.end method

.method public setTimestamp(J)Landroid/telecom/Voicemail$Builder;
    .registers 4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderTimestamp:Ljava/lang/Long;

    return-object p0
.end method

.method public setTranscription(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderTranscription:Ljava/lang/String;

    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Landroid/telecom/Voicemail$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderUri:Landroid/net/Uri;

    return-object p0
.end method
