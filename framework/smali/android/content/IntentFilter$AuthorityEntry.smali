.class public final Landroid/content/IntentFilter$AuthorityEntry;
.super Ljava/lang/Object;
.source "IntentFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IntentFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthorityEntry"
.end annotation


# instance fields
.field private final mHost:Ljava/lang/String;

.field private final mOrigHost:Ljava/lang/String;

.field private final mPort:I

.field private final mWild:Z


# direct methods
.method static synthetic -get0(Landroid/content/IntentFilter$AuthorityEntry;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/content/IntentFilter$AuthorityEntry;)I
    .registers 2

    iget v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    return v0
.end method

.method static synthetic -get2(Landroid/content/IntentFilter$AuthorityEntry;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    return v0
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/IntentFilter$AuthorityEntry;->mOrigHost:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_17

    const/4 v0, 0x1

    :cond_17
    iput-boolean v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/IntentFilter$AuthorityEntry;->mOrigHost:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_16

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_16

    move v0, v1

    :cond_16
    iput-boolean v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    iget-boolean v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    if-eqz v0, :cond_24

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    :cond_24
    iput-object p1, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    if-eqz p2, :cond_2f

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_2c
    iput v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    return-void

    :cond_2f
    const/4 v0, -0x1

    goto :goto_2c
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v1, p1, Landroid/content/IntentFilter$AuthorityEntry;

    if-eqz v1, :cond_c

    move-object v0, p1

    check-cast v0, Landroid/content/IntentFilter$AuthorityEntry;

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/content/IntentFilter$AuthorityEntry;)Z

    move-result v1

    return v1

    :cond_c
    const/4 v1, 0x0

    return v1
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mOrigHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    iget v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    return v0
.end method

.method public match(Landroid/net/Uri;)I
    .registers 6

    const/4 v3, -0x2

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    return v3

    :cond_8
    iget-boolean v1, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_19

    return v3

    :cond_19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_28
    iget-object v1, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_31

    return v3

    :cond_31
    iget v1, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    if-ltz v1, :cond_41

    iget v1, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v2

    if-eq v1, v2, :cond_3e

    return v3

    :cond_3e
    const/high16 v1, 0x400000

    return v1

    :cond_41
    const/high16 v1, 0x300000

    return v1
.end method

.method public match(Landroid/content/IntentFilter$AuthorityEntry;)Z
    .registers 5

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    iget-boolean v1, p1, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    if-eq v0, v1, :cond_8

    return v2

    :cond_8
    iget-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    return v2

    :cond_13
    iget v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    iget v1, p1, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    if-eq v0, v1, :cond_1a

    return v2

    :cond_1a
    const/4 v0, 0x1

    return v0
.end method

.method writeToParcel(Landroid/os/Parcel;)V
    .registers 3

    iget-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mOrigHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_18
    const/4 v0, 0x0

    goto :goto_f
.end method
