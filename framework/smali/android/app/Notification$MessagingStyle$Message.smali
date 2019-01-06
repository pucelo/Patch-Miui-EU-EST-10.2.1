.class public final Landroid/app/Notification$MessagingStyle$Message;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$MessagingStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation


# static fields
.field static final KEY_DATA_MIME_TYPE:Ljava/lang/String; = "type"

.field static final KEY_DATA_URI:Ljava/lang/String; = "uri"

.field static final KEY_EXTRAS_BUNDLE:Ljava/lang/String; = "extras"

.field static final KEY_SENDER:Ljava/lang/String; = "sender"

.field static final KEY_TEXT:Ljava/lang/String; = "text"

.field static final KEY_TIMESTAMP:Ljava/lang/String; = "time"


# instance fields
.field private mDataMimeType:Ljava/lang/String;

.field private mDataUri:Landroid/net/Uri;

.field private mExtras:Landroid/os/Bundle;

.field private final mSender:Ljava/lang/CharSequence;

.field private final mText:Ljava/lang/CharSequence;

.field private final mTimestamp:J


# direct methods
.method static synthetic -get0(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get1(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    iput-object p1, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    iput-wide p2, p0, Landroid/app/Notification$MessagingStyle$Message;->mTimestamp:J

    iput-object p4, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Ljava/lang/CharSequence;

    return-void
.end method

.method static getBundleArrayForMessages(Ljava/util/List;)[Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;)[",
            "Landroid/os/Bundle;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [Landroid/os/Bundle;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_1c

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$MessagingStyle$Message;

    invoke-direct {v3}, Landroid/app/Notification$MessagingStyle$Message;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1c
    return-object v1
.end method

.method static getMessageFromBundle(Landroid/os/Bundle;)Landroid/app/Notification$MessagingStyle$Message;
    .registers 8

    const/4 v6, 0x0

    :try_start_1
    const-string/jumbo v2, "text"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string/jumbo v2, "time"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_16

    :cond_15
    return-object v6

    :cond_16
    new-instance v1, Landroid/app/Notification$MessagingStyle$Message;

    const-string/jumbo v2, "text"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    const-string/jumbo v3, "time"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo v3, "sender"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v1, v2, v4, v5, v3}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V

    const-string/jumbo v2, "type"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    const-string/jumbo v2, "uri"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    const-string/jumbo v2, "type"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, "uri"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v1, v3, v2}, Landroid/app/Notification$MessagingStyle$Message;->setData(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/Notification$MessagingStyle$Message;

    :cond_55
    const-string/jumbo v2, "extras"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-virtual {v1}, Landroid/app/Notification$MessagingStyle$Message;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "extras"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_6c
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_6c} :catch_6d

    :cond_6c
    return-object v1

    :catch_6d
    move-exception v0

    return-object v6
.end method

.method static getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Parcelable;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_7
    array-length v3, p0

    if-ge v0, v3, :cond_20

    aget-object v3, p0, v0

    instance-of v3, v3, Landroid/os/Bundle;

    if-eqz v3, :cond_1d

    aget-object v3, p0, v0

    check-cast v3, Landroid/os/Bundle;

    invoke-static {v3}, Landroid/app/Notification$MessagingStyle$Message;->getMessageFromBundle(Landroid/os/Bundle;)Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_20
    return-object v2
.end method

.method private toBundle()Landroid/os/Bundle;
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_11

    const-string/jumbo v1, "text"

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_11
    const-string/jumbo v1, "time"

    iget-wide v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Ljava/lang/CharSequence;

    if-eqz v1, :cond_25

    const-string/jumbo v1, "sender"

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_25
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    if-eqz v1, :cond_31

    const-string/jumbo v1, "type"

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    if-eqz v1, :cond_3d

    const-string/jumbo v1, "uri"

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_3d
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_49

    const-string/jumbo v1, "extras"

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_49
    return-object v0
.end method


# virtual methods
.method public getDataMimeType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getDataUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getSender()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    iget-wide v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mTimestamp:J

    return-wide v0
.end method

.method public setData(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/Notification$MessagingStyle$Message;
    .registers 3

    iput-object p1, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    return-object p0
.end method
