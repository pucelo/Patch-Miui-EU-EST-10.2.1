.class Landroid/net/Uri$Part;
.super Landroid/net/Uri$AbstractPart;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Part"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/Uri$Part$EmptyPart;
    }
.end annotation


# static fields
.field static final EMPTY:Landroid/net/Uri$Part;

.field static final NULL:Landroid/net/Uri$Part;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/net/Uri$Part$EmptyPart;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/Uri$Part$EmptyPart;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    new-instance v0, Landroid/net/Uri$Part$EmptyPart;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Landroid/net/Uri$Part$EmptyPart;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/net/Uri$Part;->EMPTY:Landroid/net/Uri$Part;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/Uri$AbstractPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri$Part;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/net/Uri$Part;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Part;
    .registers 3

    if-nez p0, :cond_5

    sget-object v0, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    return-object v0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Landroid/net/Uri$Part;->EMPTY:Landroid/net/Uri$Part;

    return-object v0

    :cond_e
    if-nez p1, :cond_13

    sget-object v0, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    return-object v0

    :cond_13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Landroid/net/Uri$Part;->EMPTY:Landroid/net/Uri$Part;

    return-object v0

    :cond_1c
    new-instance v0, Landroid/net/Uri$Part;

    invoke-direct {v0, p0, p1}, Landroid/net/Uri$Part;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;
    .registers 2

    invoke-static {}, Landroid/net/Uri;->-get1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/net/Uri$Part;->from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    return-object v0
.end method

.method static fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;
    .registers 2

    invoke-static {}, Landroid/net/Uri;->-get1()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/net/Uri$Part;->from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    return-object v0
.end method

.method static nonNull(Landroid/net/Uri$Part;)Landroid/net/Uri$Part;
    .registers 1

    if-nez p0, :cond_4

    sget-object p0, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    :cond_4
    return-object p0
.end method

.method static readFrom(Landroid/os/Parcel;)Landroid/net/Uri$Part;
    .registers 5

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_40

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown representation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_21
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri$Part;->from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v1

    return-object v1

    :pswitch_2e
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v1

    return-object v1

    :pswitch_37
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri$Part;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v1

    return-object v1

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_21
        :pswitch_2e
        :pswitch_37
    .end packed-switch
.end method


# virtual methods
.method getEncoded()Ljava/lang/String;
    .registers 4

    iget-object v1, p0, Landroid/net/Uri$Part;->encoded:Ljava/lang/String;

    invoke-static {}, Landroid/net/Uri;->-get1()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_e

    const/4 v0, 0x1

    :goto_9
    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/net/Uri$Part;->encoded:Ljava/lang/String;

    :goto_d
    return-object v1

    :cond_e
    const/4 v0, 0x0

    goto :goto_9

    :cond_10
    iget-object v1, p0, Landroid/net/Uri$Part;->decoded:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/Uri$Part;->encoded:Ljava/lang/String;

    goto :goto_d
.end method

.method isEmpty()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
