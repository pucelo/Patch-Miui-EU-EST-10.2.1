.class abstract Landroid/net/Uri$AbstractPart;
.super Ljava/lang/Object;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractPart"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/Uri$AbstractPart$Representation;
    }
.end annotation


# instance fields
.field volatile decoded:Ljava/lang/String;

.field volatile encoded:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final getDecoded()Ljava/lang/String;
    .registers 4

    iget-object v1, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    invoke-static {}, Landroid/net/Uri;->-get1()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_e

    const/4 v0, 0x1

    :goto_9
    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    :goto_d
    return-object v1

    :cond_e
    const/4 v0, 0x0

    goto :goto_9

    :cond_10
    iget-object v1, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    goto :goto_d
.end method

.method abstract getEncoded()Ljava/lang/String;
.end method

.method final writeTo(Landroid/os/Parcel;)V
    .registers 6

    iget-object v2, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    invoke-static {}, Landroid/net/Uri;->-get1()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_25

    const/4 v1, 0x1

    :goto_9
    iget-object v2, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    invoke-static {}, Landroid/net/Uri;->-get1()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_27

    const/4 v0, 0x1

    :goto_12
    if-eqz v1, :cond_29

    if-eqz v0, :cond_29

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_24
    return-void

    :cond_25
    const/4 v1, 0x0

    goto :goto_9

    :cond_27
    const/4 v0, 0x0

    goto :goto_12

    :cond_29
    if-eqz v1, :cond_35

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_24

    :cond_35
    if-eqz v0, :cond_41

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_24

    :cond_41
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Neither encoded nor decoded"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
